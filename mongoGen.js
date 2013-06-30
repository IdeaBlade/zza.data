#!/%PROGRAMFILES%/nodejs/node
console.log("Hello, mongoGen");

var app = require('app') ;
console.log(app.version);

require('./utilityFns');
require('./customer');
require('./product');
require('./productOptions');
require('./zaaGenerator');

app.toOutput = app.statsOut = function(line) {
    console.log(line);
    return line;
};

var Q = require('q');
var nsend = Q.nsend;
var mongo = require('mongodb');
var db;

function run(){
    var server = new mongo.Server('localhost', 27017, {auto_reconnect: true});
    db = new mongo.Db('zza', server, {fsync:true}); //{safe: false});
    app.reset();

    return nsend(db,'open')
    .then(insertData)
    .fail(reportError)
    .fin(function(){ db.close(); console.log('Closing database')})
    .fin(displayStats);
}
run();

//*** Private functions
function insertData(){
    // insert reference collections first
    return Q.all([
        insertCustomers(),
        insertProducts(),
        insertProductOptions(),
        insertProductSizes()
        // no point to an OrderStatuses collection in MongoDb
    ])
    .then(createCustomerOrders);
}

function insertCustomers() {
    return getCleanCollection('customers')
        .then(function(collection){
            var mCustomers = [];
            var customers = app.customers;
            customers.forEach(function(c){
                mCustomers.push({
                    firstName: c.firstName,
                    lastName: c.lastName,
                    phone: c.phone,
                    email: c.email,
                    street: c.street,
                    city: c.city,
                    state: c.state,
                    zip: c.zip
                });
            });
            return insertCollection(collection, mCustomers);
        })
        .then(getCustomers);

        function getCustomers(collection){
            return nsend(collection, "find")
                .then(function(cursor){
                    return nsend(cursor, "toArray");
                })
                .then(function(items){
                    if (!items || items.length === 0) {
                        throw new Error("Expected some 'Customers'; didn't get them");
                    }
                    console.log("Got "+items.length+" 'Customers'");
                    app.reporter.stats['customers'] = items.length;
                    app.customers = items; // overwrite app-level customers!
                    return(collection);
                });
        }
}

function insertProducts() {
    return getCleanCollection('products')
        .then(function(collection){
            var mProducts = [];
            var productTypes=['pizzas','salads','beverages'];
            productTypes.forEach(function(typeName){
                var products = app[typeName];
                products.forEach(function(p){
                    mProducts.push({
                        _id: p.id,
                        type: p.type,
                        name: p.name,
                        description: p.description,
                        image: p.image,
                        hasOptions: p.hasOptions?true:false,
                        isVegetarian: p.isVegetarian?true:false,
                        withTomatoSauce: p.withTomatoSauce?true:false,
                        sizeIds: p.sizeIds
                    });
                });
            });
            return insertCollection(collection, mProducts);
        })
        .then(verifyCollection);
}

function insertProductOptions() {
    return getCleanCollection('productOptions')
        .then(function(collection){
            var mOptions = [];
            var optionTypes=['crusts','sauces','cheeses','veggies','meats','spices','saladDressings'];
            optionTypes.forEach(function(typeName){
                var options = app[typeName];
                options.forEach(function(o){
                    var productTypes = [];
                    if (o.isPizzaOption)  {productTypes.push('pizza');}
                    if (o.isSaladOption)  {productTypes.push('salad');}
                    mOptions.push({
                        _id: o.id,
                        type: o.type,
                        name: o.name,
                        factor: o.factor,
                        productTypes: productTypes
                    });
                });
            });
            return insertCollection(collection, mOptions);
        })
        .then(verifyCollection);
}

function insertProductSizes() {
    return getCleanCollection('productSizes')
        .then(function(collection){
            var mSizes = [];
            app.productSizes.forEach(function(s){
            mSizes.push({
                _id: s.id,
                type: s.type,
                name: s.name,
                price: s.price,
                premiumPrice: s.premiumPrice,
                toppingPrice: s.toppingPrice,
                isGlutenFree: s.isGlutenFree?true:false
            });
            });
            return insertCollection(collection, mSizes);
        })
        .then(verifyCollection);
}

function createCustomerOrders(){
    var zzaGenerator = new app.ZzaGenerator();
    var deferred = Q.defer();
    var insertCounter = 0;
    var incInsertCounter = function () {insertCounter +=1;};
    var decInsertCounter = function (){
        insertCounter -= 1;
        if (insertCounter < 0){deferred.reject(new Error('insertCounter became negative'))}
        if (insertCounter === 0){
            console.log('Saved last order');
            deferred.resolve(true);
        }
    };
    console.log ('Creating and saving customer orders');
    var ordersCollection;
    getCleanCollection('orders')
        .then(function(collection){
            ordersCollection = collection;
            app.reporter.report = report; // replace w/ mongo report fn
            zzaGenerator.makeCustomerOrders(); // Optional integer param limits number of customers
        });
    return deferred.promise;

    function report(customer){
        app.reportCustomerOrderStats(customer);
        var orders = customer.orders, ordsLen = orders.length;
        for (var i = 0 ; i < ordsLen; i++){
            var order = orders[i];
            var mOrder = {
                _id: order.id,
                customerId: customer._id,
                customer: customer.firstName+' '+customer.lastName,
                status: order.status.name,
                ordered: order.orderDate,
                phone: order.phone,
                delivered: order.deliveryDate,
                deliveryCharge: order.deliveryCharge,
                itemsTotal: order.itemsTotal
            };
            if (order.deliveryCharge){
                mOrder.deliveryAddress = order.deliveryAddress;
            }
            var mItems = [];
            var items = order.items, itemsLen = items.length;
            for (var j = 0; j < itemsLen; j++){
                var item = items[j];
                var mItem = {
                    id: j+1,
                    productId: item.product.id,
                    product: item.product.name,
                    type: item.product.type,
                    sizeId: item.size.id,
                    size: item.size.name,
                    qty: item.qty,
                    unitPrice: item.unitPrice,
                    totalPrice: item.totalPrice
                };
                if (item.instructions) {
                    mItem.instructions = item.instructions;
                }
                var opts = item.options;
                if (opts.length){
                    var mOpts = [];
                    opts.forEach(function(opt){
                        mOpts.push({
                           optionId: opt.option.id,
                           name: opt.option.name,
                           qty: opt.qty,
                           price: opt.price
                        });
                    });
                    mItem.options = mOpts;
                }
                mItems.push(mItem);
            }
            mOrder.items = mItems;
            incInsertCounter();
            ordersCollection.insert(mOrder, {safe: true}, function(err, recs){
                if (err){
                    var msg =  "Error on mOrder insert of id "+mOrder._id;
                    var fullMsg = msg + "\n:"+err.message;
                    console.log(fullMsg);
                    console.dir(mOrder);
                    err = new Error(msg + "; see console");
                    deferred.reject(err);
                    throw err; // hope to terminate further processing
                } else {
                    decInsertCounter();
                }
            });
        }
    }
}

function displayStats(){
    var statsOut = app.statsOut;
    statsOut("\n=== STATS ===");
    statsOut(JSON.stringify(app.reporter.stats, null, 2));
}

//*** Utility functions ***
function getCleanCollection(collectionName){
    var getCollection = function(){return nsend(db, 'collection', collectionName);};

    return getCollection()
        .then(function(collection) {
            // 'drop' is faster than 'remove' and kills indexes
            return nsend(collection, "drop");
        })
        // whether 'drop' succeeds or fails, create the new collection
        .then(getCollection, getCollection)
        // Paranoia testing
        .then(function(collection){
            return nsend(collection, 'count')
                .then(function(count){
                    if (count !=0) {
                        throw new Error("test collection not empty after remove call");
                    }
                    return collection;
                });
        })
}
function insertCollection(collection, data){
    return nsend(collection, 'insert', data)
        .then(function(){
            return collection});
}
function verifyCollection(collection){
    return nsend(collection, 'find')
        .then(function(cursor){
            return nsend(cursor, 'toArray');
        })
        .then(function(items){
            var collectionName = collection.collectionName;
            if (!items || items.length === 0) {
                throw new Error("Expected some '" + collectionName + "' items; didn't get them");
            }
            var count = items.length;
            console.log("Got "+count+" '"+collectionName+"' item(s)");
            if (count>3){
                console.log("First three from '"+collectionName+"':");
                console.dir(items.slice(0,3),'items');
                console.log("...");
            } else {
                console.dir(items,'items') ;
            }
            app.reporter.stats[collectionName] = count;
            return collection;
        });
}

function reportError(err){
    console.log('!!! run error:');
    console.dir(err);
}
//*** Test/Explore ***
// For exploratory purposes
// Call it within insertData()
/*
function insertTestItems(){
    return getCleanCollection('test')
        .then(function(collection){
            return insertCollection(collection, [
                {name:"The Dude"},
                {name: "Walter"},
                {name: "Donny"}
            ]);
        })
        .then(verifyCollection);
}
*/