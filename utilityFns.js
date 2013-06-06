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
    /**
     * Utility Functions
     */

    app.toString = Object.prototype.toString;

    app.isArray = function(arr) {
        return Object.prototype.toString.call(arr) === '[object Array]';
    };
    app.isDate = function(dt) {
        return Object.prototype.toString.call(dt) === '[object Date]';
    };
    // index in array: indexOf(array, searchValue)
    app.indexOf = function(arr, search) {
        for (var i = 0, length = arr.length; i < length; i++) {
            if (arr[i] === search) {
                return i;
            }
        }

        return -1;
    };

    // a forEach over array or object
    app.each = function(obj, iterator, context) {
        var breaker = {};

        if (obj === null) {
            return;
        }

        if (Array.prototype.forEach && obj.forEach === Array.prototype.forEach) {
            obj.forEach(iterator, context);
        } else if (obj.length === +obj.length) {
            for (var i = 0, l = obj.length; i < l; i++) {
                if (iterator.call(context, obj[i], i, obj) === breaker){
                    return;
                }
            }
        } else {
            for (var key in obj) {
                if (obj.hasOwnProperty(key)) {
                    if (iterator.call(context, obj[key], key, obj) === breaker) {
                        return;
                    }
                }
            }
        }
    };

    app.assertExists = function (value, valueName) {
       if (value === undefined || value === null){
           throw new Error((valueName || "An essential value ")+" is not defined");
       }
    };

    // Nothing better than a (pizza) pi for a permanent, evenly distributed, random-seeming set of digits
    // Snatched from http://www.piday.org/million/
    var pi =
        "3141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609433057270365759591953092186117381932611793105118548074462379962749567351885752724891227938183011949129833673362440656643086021394946395224737190702179860943702770539217176293176752384674818467669405132000568127145263560827785771342757789609173637178721468440901224953430146549585371050792279689258923542019956112129021960864034418159813629774771309960518707211349999998372978049951059731732816096318595024459455346908302642522308253344685035261931188171010003137838752886587533208381420617177669147303598253490428755468731159562863882353787593751957781857780532171226806613001927876611195909216420198938095257201065485863278865936153381827968230301952035301852968995773622599413891249721775283479131515574857242454150695950829533116861727855889075098381754637464939319255060400927701671139009848824012858361603563707660104710181942955596198946767837449448255379774726847104047534646208046684259069491293313677028989152104752162056966024058038150193511253382430035587640247496473263914199272604269922796782354781636009341721641219924586315030286182974555706749838505494588586926995690927210797509302955321165344987202755960236480665499119881834797753566369807426542527862551818417574672890977772793800081647060016145249192173217214772350141441973568548161361157352552133475741849468438523323907394143334547762416862518983569485562099219222184272550254256887671790494601653466804988627232791786085784383827967976681454100953883786360950680064225125205117392984896084128488626945604241965285022210661186306744278622039194945047123713786960956364371917287467764657573962413890865832645995813390478027590099465764078951269468398352595709825822620522489407726719478268482601476990902640136394437455305068203496252451749399651431429809190659250937221696461515709858387410597885959772975498930161753928468138268683868942774155991855925245953959431049972524680845987273644695848653836736222626099124608051243884390451244136549762780797715691435997700129616089441694868555848406353422072225828488648158456028506016842739452267467678895252138522549954666727823986456596116354886230577456498035593634568174324112515076069479451096596094025228879710893145669136867228748940560101503308617928680920874760917824938589009714909675985261365549781893129784821682998948722658804857564014270477555132379641451523746234364542858444795265867821051141354735739523113427166102135969536231442952484937187110145765403590279934403742007310578539062198387447808478489683321445713868751943506430218453191048481005370614680674919278191197939952061419663428754440643745123718192179998391015919561814675142691239748940907186494231961567945208095146550225231603881930142093762137855956638937787083039069792077346722182562599661501421503068038447734549202605414665925201497442850732518666002132434088190710486331734649651453905796268561005508106658796998163574736384052571459102897064140110971206280439039759515677157700420337869936007230558763176359421873125147120532928191826186125867321579198414848829164470609575270695722091756711672291098169091528017350671274858322287183520935396572512108357915136988209144421006751033467110314126711136990865851639831501970165151168517143765761835155650884909989859982387345528331635507647918535893226185489632132933089857064204675259070915481416549859461637180270981994309924488957571282890592323326097299712084433573265489382391193259746366730583604142813883032038249037589852437441702913276561809377344403070746921120191302033038019762110110044929321516084244485963766983895228684783123552658213144957685726243344189303968642624341077322697802807318915441101044682325271620105265227211166039666557309254711055785376346682065310989652691862056476931257058635662018558100729360659876486117910453348850346113657686753249441668039626579787718556084552965412665408530614344431858676975145661406800700237877659134401712749470420562230538994561314071127000407854733269939081454664645880797270826683063432858785698305235808933065757406795457163775254202114955761581400250126228594130216471550979259230990796547376125517656751357517829666454779174501129961489030463994713296210734043751895735961458901938971311179042978285647503203198691514028708085990480109412147221317947647772622414254854540332157185306142288137585043063321751829798662237172159160771669254748738986654949450114654062843366393790039769265672146385306736096571209180763832716641627488880078692560290228472104031721186082041900042296617119637792133757511495950156604963186294726547364252308177036751590673502350728354056704038674351362222477158915049530984448933309634087807693259939780541934144737744184263129860809988868741326047215695162396586457302163159819319516735381297416772947867242292465436680098067692823828068996400482435403701416314965897940924323789690706977942236250822168895738379862300159377647165122893578601588161755782973523344604281512627203734314653197777416031990665541876397929334419521541341899485444734567383162499341913181480927777103863877343177207545654532207770921201905166096280490926360197598828161332316663652861932668633606273567630354477628035045077723554710585954870279081435624014517180624643626794561275318134078330336254";

    var piLen = pi.length, piIx=-1;
    app.getPiIx = function (){return piIx;}; // public for testing
    app.resetPiIx = function() {piIx=-1;};

    // next "random" integer from 0..9
    var next = function ()   {
        piIx += 1;
        if (piIx >= piLen)  piIx=0;
        return +pi[piIx];
    };
    app.next = next;
    app.resetNext = function (value){ piIx = (+value||0) - 1;};

    var orderDateBase;
    app.setOrderDateBase = function (date){
        date = date || new Date(2013, 2, 1); // 1 March 2013

        var year = date.getFullYear();
        var month = date.getMonth();
        var yearWindow = [];
        var monthWindow = [];

        for (var i=0; i < 10; i++) {
            if (i == 3 || i == 6){
                month += 1;
                if (month > 11){
                    month = 0; year += 1;
                }
            }
            monthWindow.push(month);
            yearWindow.push(year);
        }

        var dayWindow =    [1,  3,  5, 10, 12, 14, 17, 20, 23, 25];
        var hourWindow =   [9, 10, 12, 13, 14, 15, 16, 17, 18, 19];
        var minuteWindow = [0,  5, 10, 15, 20, 30, 35, 40, 45, 50];

        var getNextDate = function(){
            var i = next();
            return new Date(
                yearWindow[i], monthWindow[i],
                dayWindow[next()], hourWindow[next()], minuteWindow[next()],
                0, 0);
        };
        orderDateBase = {
            baseDate: date,
            getNextDate: getNextDate
        };
        return orderDateBase;
    };
    app.setOrderDateBase();
    app.orderDateBase = orderDateBase;

    // Creates requested number of dates in a 3 month window starting at orderDateBase
    app.getOrderDates = function (count) {
      var dates = [];
      while (count > 0) {
          dates.push(orderDateBase.getNextDate());
          count--;
      }
       return dates.sort(function (left, right){
           return  (left < right) ? -1 : 1;
       });
    };
    app.roundDollars = function (value){
        return Math.round(value * 100) / 100;
    };

    //  Id generators
    var orderIdSeed=0;
    var itemIdSeed=0;
    var optionIdSeed=0;
    var guidCombNowBump=0; //newGuidComb() uses to make new time advances by 1 ms
    app.newGuidComb = function(seed) {
        // Create a pseudo-Guid whose trailing 6 bytes (12 hex digits) are timebased
        // Start either with the given getTime() value, n, or get the current time in ms.
        // Each new Guid is greater than next if more than 1ms passes
        // See http://thatextramile.be/blog/2009/05/using-the-guidcomb-identifier-strategy
        // Based on breeze.core.getUuid which is based on this StackOverflow answer
        // http://stackoverflow.com/a/2117523/200253
        // Convert time value to hex: n.toString(16)
        // Make sure it is 6 bytes long: ('00'+ ...).slice(-12) ... from the rear
        // Replace LAST 6 bytes (12 hex digits) of regular Guid (that's where they sort in a Db)
        // Play with this in jsFiddle: http://jsfiddle.net/wardbell/qS8aN/
        var now = (app.isDate(seed)) ?
            seed.getTime() :
            new Date().getTime()+ guidCombNowBump++;
        var timePart = ('00' + now.toString(16)).slice(-12);
        return 'xxxxxxxx-xxxx-4xxx-yxxx-'.replace(/[xy]/g, function (c) {
            var r = Math.random() * 16 | 0,
                v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        }) + timePart;
    };

    app.idGenerators = (function(){
        return {
            newCustomerId: app.newGuidComb,
            newOrderId: function(){return orderIdSeed += 1; },
            newItemId: function(){return itemIdSeed += 1; },
            newOptionId: function(){return optionIdSeed += 1; }
        }
    })();

    var setCustomerIds = function (){
        var newCustomerId = app.idGenerators.newCustomerId;
        app.customers.forEach(function (cust){cust.id = newCustomerId();})
    };

    /* Reporter: outputs results of data generation to something (console by default) */
    app.toOutput = function(line) {
        //console.log(line);
        var output = document.getElementById('output');
        output.insertAdjacentHTML('beforeend', line + '\n');
        return line;
    }
    app.statsOut = function(line) {
        //console.log(line);
        var output = document.getElementById('stats');
        output.insertAdjacentHTML('beforeend', line + '\n');
        return line;
    }
    app.reportCustomerOrderStats = function(customer) {
        var stats = app.reporter.stats;
        var orders = customer.orders;
        var itemCount = 0, optCount = 0;
        orders.forEach(function(order){
            var items = order.items;
            itemCount += items.length;
            items.forEach(function(item){
                optCount += item.options.length;
            });
        });

        stats.customersWithOrders += 1;
        stats.orders += orders.length;
        stats.items += itemCount;
        stats.optionItems += optCount;
        stats.lastPiIx = app.getPiIx();
        stats.end = Date.now();
    }

    app.resetStats = function(){
       app.reporter.stats =  {
           start: Date.now(),
           end: Date.now(),
           lastPiIx: app.getPiIx(),
           customersWithOrders: 0,
           orders: 0,
           items: 0,
           optionItems: 0
       } ;
    }

    app.reset = function (){
        app.resetPiIx();
        app.setOrderDateBase();
        orderIdSeed=0;
        itemIdSeed=0;
        optionIdSeed=0;
        guidCombNowBump=0;
        app.resetStats();
    };

    app.jsonReporter = {
        initialize: function(){
            app.reset();
            setCustomerIds();
        },
        report: function(customer) {
            app.reportCustomerOrderStats(customer);
            app.toOutput(JSON.stringify(customer, null, 2));
        }
    };

    app.reporter = app.jsonReporter;

}));
