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
  
  function setOption(option){
      option.id = seedId++;
      option.type = type;
      option.isPizzaOption = option.isPizzaOption === undefined ?  true : option.isPizzaOption;
      option.isSaladOption = option.isSaladOption === undefined ?  true : option.isSaladOption;
      option.factor = option.factor === undefined ? ((option.name.indexOf('*') === -1) ? 1 : 2) : option.factor ;
  }

   var type = "crust";
   var crusts = [
      {name:"Classic Crust", isSaladOption: false, factor:0},
      {name:"Wheat Crust", isSaladOption: false, factor:0},
      {name:"Gluten-free Crust", isSaladOption: false, factor:0}
  ];
  crusts.forEach(setOption);

  type = "sauce";
  var sauces = [
      {name:"Tomato", isSaladOption: false, factor:0},
      {name:"Pesto*", isSaladOption: false},
      {name:"Salsa", isSaladOption: false},
      {name:"Texas BBQ", isSaladOption: false},
      {name:"Hummus", isSaladOption: false},
      {name:"Hoisin", isSaladOption: false},
      {name:"Ranch", isSaladOption: false},
      {name:"Vegemite", isSaladOption: false},
      {name:"Tandoori", isSaladOption: false}
  ];
    sauces.forEach(setOption);
    var tomatoSauce = sauces[0];

    type = "cheese";
    var cheeses = [
      {name:"Feta"},
      {name:"Fontina & Swiss"},
      {name:"Soy"},
      {name:"Cheddar"},
      {name:"Ricotta"},
      {name:"Gorgonzola"},
      {name:"Mozzarella"}
  ];
    cheeses.forEach(setOption);

    type = "veggie";
    var veggies = [
      {name:"Black Olives"},
      {name:"Broccoli"},
      {name:"Jalapenos"},
      {name:"Fresh Mushrooms"},
      {name:"Red Onions"},
      {name:"Artichoke Heart"},
      {name:"Green Onions"},
      {name:"Spinach"},
      {name:"Sun-Dried Tomatoes"},
      {name:"Vine Ripe Tomatoes"},
      {name:"Green Peppers"},
      {name:"Roasted Red Peppers"},
      {name:"Roasted Potatoes"},
      {name:"Hawaiian Pineapple"},
      {name:"Mandarin Oranges"},
      {name:"Walnuts"},
      {name:"Candied Walnuts"},
      {name:"Peanuts"},
      {name:"Pepperoncini"},
      {name:"Caramelized Onions"},
      {name:"Carrots"}
  ];
   veggies.forEach(setOption);

    type = "meat";
    var meats = [
      {name:"Pepperoni"},
      {name:"Italian Sausage"},
      {name:"Salami"},
      {name:"Smoked Bacon"},
      {name:"Canadian Bacon"},
      {name:"BBQ Chicken*"},
      {name:"Thai Chicken*"},
      {name:"Grilled Chicken*"},
      {name:"Beef Meatball"},
      {name:"Shredded BBQ Pork*"},
      {name:"Anchovies"},
      {name:"Linguica"}
  ];
   meats.forEach(setOption);

    type = "spice";
    var spices = [
      {name:"Basil", factor:0},
      {name:"Cilantro", factor:0},
      {name:"Garlic", factor:0},
      {name:"Sage", factor:0},
      {name:"Oregano", isSaladOption: false, factor:0}
  ];
   spices.forEach(setOption) ;

  // 1st dressing free
  // extra dressing is $0.45
   type = "saladDressing";
  var saladDressings = [
      {name:"No Dressing", isPizzaOption: false, factor:0},
      {name:"Vinaigrette", isPizzaOption: false},
      {name:"Ranch", isPizzaOption: false},
      {name:"Caesar", isPizzaOption: false},
      {name:"Red Pepper Italian", isPizzaOption: false},
      {name:"Bleu Cheese", isPizzaOption: false},
      {name:"Sesame Oriental", isPizzaOption: false}
  ];
    saladDressings.forEach(setOption) ;


    /* Product Sizes and prices */
    var pizzaSizes = [
        {id: 1, type:"pizza", name:"Personal 8\"", price: 6.15, premiumPrice: 7.65, toppingPrice: 0.65, isGlutenFree: false},
        {id: 2, type:"pizza", name:"Medium 12\"", price: 12.40, premiumPrice: 16.95, toppingPrice: 1.35, isGlutenFree: false},
        {id: 3, type:"pizza", name:"Large 14\"", price: 14.45, premiumPrice: 20.95, toppingPrice: 1.70, isGlutenFree: false},
        {id: 4, type:"pizza", name:"X-Large 16\"", price: 16.50, premiumPrice: 23.45, toppingPrice: 2.05, isGlutenFree: false},
        {id: 5, type:"pizza", name:"Huge 18\"", price: 17.95, premiumPrice: 26.95, toppingPrice: 2.25, isGlutenFree: false},

        // $4.50  markup for gluten free.
        {id: 6, type:"pizza", name:"Gluten Free 12\"", price: 16.90, premiumPrice: 21.45, toppingPrice: 1.35, isGlutenFree: true}
    ];

    var saladSizes = [
        {id: 7, type:"salad", name: "Side", price: 3.95, toppingPrice: 0.65},
        {id: 8, type:"salad", name: "Entree", price: 7.95, toppingPrice: 1.30},
        {id: 9, type:"salad", name: "Entree", price: 8.95, toppingPrice: 1.30}
    ];

    var drinkSizes = [
        {id: 10, type:"drink", name: "Can", price: 1.50},
        {id: 11, type:"drink", name: "20 oz", price: 1.95},
        {id: 12, type:"drink", name: "2 liter", price: 2.75},
        {id: 13, type:"drink", name: "20 oz", price: 1.75},
        {id: 14, type:"drink", name: "Serving", price: 1.75},
        {id: 15, type:"drink", name: "Serving", price: 2.00}
    ];

    var orderStatuses = [
        {id: 1, name: "Ordered"},
        {id: 2, name: "PickedUp"},
        {id: 3, name: "Delivered"},
        {id: 4, name: "Cancelled"},
        {id: 5, name: "Pending"}
    ]

    app.crusts = crusts;
    app.sauces = sauces;
    app.tomatoSauce = tomatoSauce;
    app.cheeses = cheeses;
    app.veggies = veggies;
    app.meats = meats;
    app.spices = spices;
    app.saladDressings = saladDressings;

    app.pizzaSizes = pizzaSizes;
    app.saladSizes = saladSizes;
    app.drinkSizes = drinkSizes;
    app.productSizes = pizzaSizes.concat(saladSizes, drinkSizes);

    app.orderStatuses = orderStatuses;

}));