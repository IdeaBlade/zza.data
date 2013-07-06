(function(factory) {
    // Module systems magic dance.

    if (typeof require === "function" && typeof exports === "object" && typeof module === "object") {
        // CommonJS or Node: hard-coded dependency on "app"
        factory(require("app"));
    } else if (typeof define === "function" && define["amd"]) {
        // AMD anonymous module with hard-coded dependency on "app"
        if (app) {
            factory(app);
        } else {
            define(["node_modules/app"], factory);
        }
    } else {
        // <script> tag: use the global `app` object
        factory(app);
    }
}(function(app) {
    app.ZzaGenerator = function () {
        this.makeCustomerOrders = makeCustomerOrders;

        // For testing
        this.makeOrdersForCustomer = makeOrdersForCustomer;
        this.makeOrder = makeOrder;
        this.makePizza = makePizza;
        this.makeSalad = makeSalad;
        this.makeBeverage = makeBeverage;
        this.makePizzaToppings = makePizzaToppings;
        this.makeSaladToppings = makeSaladToppings;

        /* Reset pseudo-random value generators */
        app.resetNext();
        app.setOrderDateBase();

        var next = app.next;
        var getOrderDates = app.getOrderDates;

        /* Id generators */
        var newOrderId;
        var newItemId;
        var newOptionId;

        function setIdGenerators(){
            var generators = app.idGenerators;
            newOrderId = generators.newOrderId;
            newItemId = generators.newItemId;
            newOptionId = generators.newOptionId;
        }

        function addOptionIds(options){
            options.forEach(function(option) {option.id = newOptionId();});
        }

        /* List indexes */
        var premiumPizzaIx = 2;
        var pizzaIx = premiumPizzaIx;
        var sauceIx = 0;
        var cheeseIx = 0;
        var veggieIx = 0;
        var meatIx = 0;
        var saladIx = 0;
        var saladDressingIx = 0;
        var beverageIx = 0;
        var spiceIx = 0;

        /* Miscellaneous */
        var exists = app.assertExists;
        var roundDollars = app.roundDollars;
        var pizzaSpices =  app.spices.filter(function (s){return s.isPizzaOption});
        var saladSpices =  app.spices.filter(function (s){return s.isSaladOption});

        var orderPickedUp = app.orderStatuses[1];
        var orderDelivered = app.orderStatuses[2];
        var orderCancelled = app.orderStatuses[3];

        var extraSaladDressingPrice = 0.45; // seems to be hard coded in the real app
        var salesTaxRate = 0.0875; // hard coded

        var specialInstructions = [
            "hold the liver",
            "keep it warm; I may be late",
            "no pickles",
            "low salt",
            "say 'Hi' to Doris",
            "ring the bell and leave on the porch",
            "put all the anchovies on one half, mushrooms on the other half",
            "very light on the sauce",
            "very light on the cheese",
            "love it when the crust is a little burnt"
        ];

        /* Generator functions */

        function makeCustomerOrders(limit){
            setIdGenerators();
            var report = app.reporter.report;

            var len = (limit == undefined) ? app.customers.length : +limit;
            for (var i = 0; i < len; i++){
                var customer = app.customers[i];
                customer.orders = makeOrdersForCustomer(customer);
                report(customer);
            }
        }

        /***  Make Orders For Customer ***/
        function makeOrdersForCustomer(customer){
            var orderCount = 1 + next();  // 1..10
            var orderDates =  getOrderDates(orderCount);
            return orderDates.map(
                function (orderDate) {return makeOrder(customer, orderDate);}
            );
        }

        /***  Make Order ***/
        // Order is an object with an array of items
        function makeOrder(customer, orderDate){
            var items = [];
            var add = function(item){ items.push(item);};

            var x = next();
            if (x === 0) {         // 10%
                add(makeSalad());
            } else if (x === 1) { // 10%
                add(makePizza());
                add(makePizza());
                add(makePizza());
                add(makeBeverage());
                add(makeBeverage());
                add(makeBeverage());
            } else if (x < 5) {    // 30%
                add(makePizza());
                add(makeSalad());
                add(makeBeverage());
            } else if ( x < 7) {   // 20%
                add(makePizza());
                add(makePizza());
                add(makeBeverage());
                add(makeBeverage());
            } else {               // 30%
                add(makePizza());
            }
            var itemsTotal = 0;
            items.forEach(function(item){itemsTotal += item.totalPrice;});
            itemsTotal = roundDollars(itemsTotal);

            var deliveryCharge = (next()<2) ? 2 : 0;  // 20% are delivery, 80% pickup

            var salesTax = roundDollars((itemsTotal + deliveryCharge) * salesTaxRate);

            var deliveryMinutes = next()+next();  // 0 .. 19 minutes
            var isCanceled = deliveryMinutes ? false : true; // 1% are canceled  ... say when minuts == 0
            deliveryMinutes += 30; // shift to be in 31..50 minute window
            var deliveryDate = new Date(orderDate.getTime() + (deliveryMinutes*60000));

            var order = {
                id: newOrderId(),
                customerId: customer.id,
                customerName: customer.name,
                itemsTotal: itemsTotal,
                phone: customer.phone,
                deliveryCharge: deliveryCharge,
                salesTax: salesTax,
                orderDate: orderDate,
                deliveryDate: deliveryDate,
                status: isCanceled ? orderCancelled : (deliveryCharge ? orderDelivered : orderPickedUp),
                items: items
            } ;
            if (deliveryCharge) {
                order.deliveryAddress = {
                    street: customer.street,
                    city: customer.city,
                    state: customer.state,
                    zip: customer.zip
                }
            } else {
                order.deliveryAddress = {
                    street: null,
                    city: null,
                    state: null,
                    zip: null
                }
            }
            return order;
        }

        /***  Make Pizza ***/
        function makePizza(){
            var pizza;
            var x = next();
            if (x === 0)      // 10% Plain
                { pizza = app.pizzas[0]; }
            else if ( x < 3)  // 20% Make Your Own
                { pizza = app.pizzas[1]; }
            else {            // 70% other
                pizza = app.pizzas[pizzaIx++];
                if (pizzaIx === app.pizzas.length) {pizzaIx = premiumPizzaIx; }
            }
            exists(pizza, "pizza");

            // quantity of pizzas. 20% order 2 pizzas of the same type;
            var qty = 1 + (next() < 2);
            var size = pickPizzaSize();
            exists(size, "pizza size");

            var unitPrice = pizza.isPremium ? size.premiumPrice : size.price;
            var totalPrice = unitPrice;
            var toppings = makePizzaToppings(pizza, size);
            addOptionIds(toppings);
            toppings.forEach(function(topping){
                totalPrice +=  topping.price;
            });
            totalPrice = roundDollars(totalPrice * qty);

            // 10% have instructions
            var instructions = next() ? null : specialInstructions[next()];

            return {
                id: newItemId(),
                product: pizza,
                size: size,
                qty: qty,
                unitPrice: unitPrice,
                totalPrice: totalPrice,
                instructions: instructions,
                options: toppings
            }
        }

        function pickPizzaSize(){
            // Personal 10%, Huge 10%, Medium 20%, Large 30%, XL 30%
            var sizeIx = [0, 4, 1, 1, 2, 2, 2, 3, 3, 3][next()];
            // ~1 in 100 pizzas is the 6th gluten-free pizza
            sizeIx = (next() + next()) ?  sizeIx: 5;
            return app.pizzaSizes[sizeIx];
        }

        function makePizzaToppings(pizza, size){
            var topping;
            var toppings = [];
            var toppingPrice = size.toppingPrice;

            if (!pizza.hasOptions) {return toppings}

            // Count of Cheese/Veggie/Meat toppings
            // 30% No toppings, 10% one toppings, 10% three toppings, 10% four toppings, 40% two toppings
            var count = [0, 0, 0, 1, 3, 4, 2, 2, 2, 2][next()];
            if (pizza.name==="Make Your Own") {count += 1;}

            if (count === 0)   {return toppings}

            if (!pizza.withTomatoSauce && 0 === next()) {
                 // 10% who order a no-sauce pizza actually want t-sauce
                 toppings.push({option: app.tomatoSauce, qty: 1, price: 0});
            }  else {
                 if (0 === next()) {   // 10% want extra sauce
                    count--;
                    topping =  app.sauces[sauceIx++];
                    toppings.push({option: topping, qty: 1, price: topping.factor * toppingPrice});
                    if (sauceIx === app.sauces.length) { sauceIx = 0; }
                 }
            }
            AddCheeseVeggieMeatToppings(toppings, toppingPrice, count);
            AddSpices(toppings, pizzaSpices);
            return toppings;
        }

        function AddCheeseVeggieMeatToppings(toppings, toppingPrice, count) {
            var topping;
            while (count > 0)  {
                var x = next();
                if (x < 3) {        // 30% Cheese
                    topping = app.cheeses[cheeseIx++];
                    if (cheeseIx === app.cheeses.length) { cheeseIx = 0; }

                } else if (x < 6) { // 30% Veggie
                    topping = app.veggies[veggieIx++];
                    if (veggieIx === app.veggies.length) { veggieIx = 0;}

                } else {            // 40% Meat
                    topping = app.meats[meatIx++];
                    if (meatIx === app.meats.length) { meatIx = 0; }
                }
                exists(topping, "meat, cheese, or veggie topping");

                var qty = 1 + (0===next()); // 1 in 10 want 2x the topping
                toppings.push({option: topping, qty: qty, price: qty * topping.factor * toppingPrice});
                count -= qty;
            }
        }

        function AddSpices(toppings, spices){
           if (next() & 1) {return;}  // only 50% add a spice
           spiceIx++;
           if (spiceIx >= spices.length) {spiceIx = 0}
           toppings.push({option: spices[spiceIx], qty: 1, price: 0});
        }

        /***  Make Salad ***/
        function makeSalad(){

            var salad = app.salads[saladIx++];
            if (saladIx === app.salads.length) { saladIx = 0; }

            var szIds = salad.sizeIds;
            var szId = szIds[next() % szIds.length]; // equally likely to pick any size
            var size = app.productSizes[szId - 1]; // assume szId is origin 1

            // quantity of salads. 1 in 10 order 2 salads of the same type;
            var qty = 1 + (next() === 0);
            var unitPrice = size.price;
            var totalPrice = unitPrice;
            var toppings = makeSaladToppings(size);
            addOptionIds(toppings);
            toppings.forEach(function(topping){
                totalPrice +=  topping.price;
            });
            totalPrice = roundDollars(totalPrice * qty);

            // 10% have instructions
            var instructions = next() ? null : specialInstructions[next()];

            return {
                id: newItemId(),
                product: salad,
                size: size,
                qty: qty,
                unitPrice: unitPrice,
                totalPrice: totalPrice,
                instructions: instructions,
                options: toppings
            }
        }

        function makeSaladToppings(size){
            var topping;
            var toppings = [];
            var toppingPrice = size.toppingPrice;

            var saladDressings =  app.saladDressings;
            topping = saladDressings[saladDressingIx++];
            exists(topping, "salad dressing");

            toppings.push({option: topping, qty: 1, price: 0});
            if (saladDressingIx === saladDressings.length) { saladDressingIx = 0; }

            if (topping.name === "No Dressing") {return toppings;}

            if (0 === next()) {   // 1 in 10 want extra salad dressing
                topping = saladDressings[saladDressingIx++];
                exists(topping, "salad dressing");
                if (topping.name !== "No Dressing") { // Can't have extra "No Dressing" :-)
                    toppings.push({option: topping, qty: 1, price: topping.factor * extraSaladDressingPrice});
                }
                if (saladDressingIx === saladDressings.length) { saladDressingIx = 0; }
            }

            // Count of Cheese/Veggie/Meat toppings
            // 10% one toppings, 10% two toppings, 10% three toppings, 70% No toppings
            var count = [1, 2, 3, 0, 0, 0, 0, 0, 0, 0][next()];

            AddCheeseVeggieMeatToppings(toppings, toppingPrice, count);
            AddSpices(toppings, saladSpices);
            return toppings;
        }

        /***  Make Beverage ***/
        function makeBeverage(){

            var beverage = app.beverages[beverageIx++];
            if (beverageIx === app.beverages.length) { beverageIx = 0; }
            exists(beverage, "beverage");

            var  szIds = beverage.sizeIds;
            var szId = szIds[next() % szIds.length]; // equally likely to pick any size
            var size = app.productSizes[szId - 1]; // assume szId is origin 1
            exists(size, "beverage size");

            // quantity of drinks. 1 in 10 order 2 drinks of the same type;
            var qty = 1 + (next() === 0);
            var unitPrice = size.price;
            var totalPrice = roundDollars(unitPrice * qty);

            return {
                id: newItemId(),
                product: beverage,
                size: size,
                qty: qty,
                unitPrice: unitPrice,
                totalPrice: totalPrice,
                instructions: null,
                options: []
            }
        }

    }
}));