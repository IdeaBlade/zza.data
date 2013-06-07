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
    var seedId = 1;

    function setProduct(product){
        product.id = seedId++;
        product.type = type;
        product.image = product.name.toLowerCase().replace(/\s/g, '')+'.jpg';

        if (type == 'pizza')  {
            product.withTomatoSauce =  product.withTomatoSauce === undefined ? true : product.withTomatoSauce;
        }
        if (type == 'beverage')  {
            product.hasOptions = false;
        } else {
            product.hasOptions =  product.hasOptions === undefined ? true : product.hasOptions;            
        }
    }

    type="pizza";
    var pizzas = [
        // This one is special: not allowed to add toppings.
        {name:"Plain Cheese",
            description:"Your basic plain cheese pizza with no toppings.\nIncludes tomato sauce, mozzarella, oregano and a sprinkling of cheddar",
            isVegetarian: true,
            hasOptions: false},

        // This gets a different UI.
        {name:"Make Your Own",
            description:"Make your own\nIncludes tomato sauce, mozzarella, oregano and a sprinkling of cheddar",
            isVegetarian: true},

        // All premium pizzas from here on
        {name:"Holy Smokes",
            description:"Swiss, fontina, gorgonzola, mozzarella, roasted walnuts and fresh sage",
            isVegetarian: true,
            withTomatoSauce: false},

        {name:"Taj Mahal",
            description:"Chicken marinated in spicy Tandoori sauce, green pepper, red onion, cilantro and mozzarella"},

        {name:"Pestolante",
            description:"Homemade pesto sauce, vine ripe tomatoes, feta, fresh basil, oregano and mozzarella",
            isVegetarian: true},

        {name:"Italian Stallion",
            description:"Italian sausage, roasted red peppers, caramelized onions, parmesan, tomato sauce and mozzarella"},

        {name:"Tom Terrific",
            description:"Vine ripe tomatoes, garlic, fresh basil, mozzarella and cheddar",
            isVegetarian: true,
            withTomatoSauce: false},

        {name:"No Cheese",
            description:"Fresh mushrooms, caramelized onions, broccoli, vine ripe tomatoes, roasted red peppers, fresh basil, oregano and tomato sauce",
            isVegetarian: true},

        {name:"Shanghai",
            description:"Shredded pork marinated in a spicy hoisin style sauce, mozzarella, peanuts, green onions, jalapeños, carrots and fresh cilantro"},

        {name:"Lisbon",
            description:"Portuguese linguica, smoked bacon, pepperoncini, roasted red peppers, tomato sauce, mozzarella, and fresh cilantro"},

        {name:"Jerusalem",
            description:"Homemade hummus, vine ripe tomatoes, black olives, caramelized onions, feta, fresh basil, pepperoncini and mozzarella",
            isVegetarian: true},

        {name:"Greco Irish",
            description:"Homemade pesto sauce, roasted potatoes, caramelized onions, feta, fresh basil, oregano and mozzarella",
            isVegetarian: true},

        {name:"Amadeus",
            description:"Italian sausage, pepperoni, fresh mushrooms, red onions, tomato sauce, mozzarella and cheddar"},

        {name:"Mama Mia",
            description:"Italian sausage, pepperoni, salami, beef meatball, tomato sauce, mozzarella and cheddar"},

        {name:"Hula Pie",
            description:"Hawaiian pineapple, Canadian bacon, Mandarin oranges, tomato sauce, mozzarella and cheddar"},

        {name:"Little Venus",
            description:"Spinach, artichoke hearts, sun-dried tomatoes, feta, garlic, fresh basil, oregano and mozzarella",
            withTomatoSauce: false},

        {name:"Garden Gallop",
            description:"Fresh mushrooms, green peppers, red onions, artichoke hearts, broccoli, vine ripe tomatoes, fresh basil, tomato sauce, mozzarella and cheddar"},

        {name:"South of the Border",
            description:"Grilled chicken, black beans and salsa, black olives, red onions, vine ripe tomatoes, jalapeños, fresh cilantro and cheddar"},

        {name:"Asian Chicken",
            description:"Chicken marinated in a spicy ginger peanut sauce, peanuts, green onions, Swiss, fontina, fresh cilantro and mozzarella"},

        {name:"Chicken Coolness",
            description:"Chicken marinated in a tangy ranch sauce, broccoli, red onions, Swiss, fontina, gorgonzola, mozzarella and fresh sage"},

        {name:"Pork BBQ",
            description:"Shredded pork marinated in a sweet BBQ sauce, red onions, fresh cilantro, cheddar and mozzarella"}
    ];
    pizzas.forEach(setProduct);

    var type="salad";
    var salads = [
        {name:"Caesar Salad",
         description:"Crisp Romaine, parmesan and croutons",
         sizeIds: [7,8]}, // 3.95, 7.95

        {name:"Chicken Caesar Salad", // 8.95
         description:"Traditional Caesar with your choice of grilled or BBQ chicken",
         sizeIds: [9]}, // 8.95

        {name:"Spinach Salad", // 3.95, 7.95
         description:"Spinach, fresh mushrooms, caramelized onions, vine ripe tomatoes, artichoke hearts and candied walnuts.",
         sizeIds: [7,8]},

        {name:"Garden Salad", // 3.95, 7.95
         description:"Red leaf lettuce, black olives, fresh mushrooms, green peppers, red onions, artichoke hearts, vine ripe tomatoes and mozzarella",
         sizeIds: [7,8]},

        {name:"Greek Salad", // 3.95, 7.95
         description:"Red leaf lettuce, red onions, feta, olives and pepperoncinis",
         sizeIds: [7,8]},

        {name:"Chef Salad", // 8.95
         description:"Crisp Romaine, spiced ham, turkey, salami, gorgonzola, green onions, vine ripe tomatoes and roasted red peppers",
         sizeIds: [9]},

        {name:"Thai Chicken Salad", // 8.95
         description:"Crisp Romaine, green onions, Mandarin oranges, carrots, crispy noodles and chicken marinated in a spicy ginger peanut sauce",
         sizeIds: [9]},

        {name:"Farmer Salad", // 8.95
         description:"Crisp Romaine, smoked bacon, grilled chicken, vine ripe tomatoes and gorgonzola",
         sizeIds: [9]},

        {name:"Big Country Salad", // 8.95
         description:"Spinach, smoked bacon, feta, candied walnuts, caramelized onions and vine ripe tomatoes",
         sizeIds: [9]}
    ];
    salads.forEach(setProduct);

    type="beverage";
    var beverages = [
        {name:"Cola", description:"Cola", sizeIds: [10,11,12]},// $1.50&up
        {name:"Diet Cola", description:"Diet Cola", sizeIds: [10,11,12]}, // $1.50&up
        {name:"Root Beer", description:"Root Beer", sizeIds: [10,11,12]}, // $1.50&up
        {name:"Cascade Fog", description:"Cascade Fog", sizeIds: [10,11,12]}, // $1.50&up
        {name:"Dr. Popper", description:"Dr. Popper", sizeIds: [10,11,12]}, // $1.50&up
        {name:"Lemon Spruce", description:"Lemon Spruce", sizeIds: [10]}, // $1.50
        {name:"Green Tea", description:"Green Tea", sizeIds: [13]},// $1.75
        {name:"Orange Juice", description:"Orange Juice", sizeIds: [14]},// $1.75
        {name:"Apple Juice", description:"Apple Juice", sizeIds: [14]},// $1.75
        {name:"Energade", description:"Energade", sizeIds: [15]}, // $2.00
        {name:"Aqua H2O", description:"Aqua H2O", sizeIds: [14]} // $1.75
    ];
    beverages.forEach(setProduct);

    app.pizzas = pizzas;
    app.salads = salads;
    app.beverages = beverages;


}));