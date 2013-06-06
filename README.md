# Zza Data

**Zza Data** is sample data for a fictive pizza takeout and delivery chain named "**Zza**."  Here is Zza himself!

![Zza](https://raw.github.com/IdeaBlade/zza.data/master/images/logo.png)

Zza Data is also a pure JavaScript application for generating that data in a variety of formats. Today it supports three formats: 

- JSON
- SQL Server (T-SQL)
- Mongo

We hope it supports more formats in time. Send in your pull requests.

## Why Zza? ##
We build many forms-over-data sample application. The data model for such apps has to be simple enough to understand quickly but rich enough to represent typical scenarios for forms-over-data applications. We wanted something fresher and more fun than that tired old Microsoft Northwind database. We couldn't find anything so we wrote "zza.data".

We want to share it with you, so you can build your own sample apps without having to waste time (like we did) dreaming up a data model, populating a database with sample data, and having to explain its schema and contents to the world. We all want to move on to the fun stuff, the application itself.

The Zza project is just underway and of course the documentation lags behind the project code. Here's what we can tell you now.

## The Zza Story ##
Zza takes orders over the phone for pick-up and delivery; perhaps in your app, the `Customer` can order online. The customer self-identifies by name (“Skippy”) and phone number. If the customer wants the order delivered, s/he supplies a delivery address.

The customer places an `Order` for pizzas, salads, and beverages. The app remembers the customers and their orders.

The customer picks from a `Product` catalog of pizzas, salads, and beverages. S/he can customize pizzas and salads (`Products`) with toppings (`ProductOptions`). The resulting order is a three level structure: `Order` -> 'OrderItem` -> `OrderItemOption`.

Pricing is a bit tricky ... deliberately. The pizzas and salads come in different sizes, each size with its own price for the base pizza/salad and a price per extra topping. Some of the toppings are free (spices). Some of the toppings cost double the topping-price-per-product-size. The parameters of the calculation are captured in properties of the `ProductSize`, `Product` and `ProductOption` entities.

There are a few more wrinkles. You can read the code in "zzaGenerator.js" yourself (we'll explain these pricing and other 'rules' in more detail in future). 

The rules don't really matter. The point is to introduce enough complexity so you can demonstrate how you'd implement and represent business rules in your application.

The primary keys are all called `id`. They are all integer ... except the `Customer` id which is a Guid in JSON and SQL generations and a `ObjectId` in the MongoDb generation. We needed a little variety for extra "realism". 

The Customer has an address because s/he might order again. But the order has its own delivery address because ... well, you might order a pizza while you're at your friend's house; you don't want Zza to deliver it to your home, right?

## The Model ##
We need the following "Entity Types" to make this work:

**Mutable Entities**

- Customer
- Order
- OrderItem (pizza, salad, beverage)
- OrderItemOption (toppings, salad dressings)

**Reference Entities**

- OrderStatus (Ordered, PickedUp, Delivered, Canceled, Pending)
- Product
- ProductOption
- ProductSize 

### SQL v No-SQL ###
Those entities map one-for-one to SQL tables and their are foreign keys to support the associations.

It wouldn't be any fun if they also mapped one-for-one to Mongo collections. So they don't. Each `Order` is a document with a collection of `OrderItem`s which, in turn, each have a collection of `OrderItemOption`s. Naturally some of the data are denormalized; for example, you'll find the customer name repeated in each order. The `Order` document is optimized for the application's checkout screen and to tell the kitchen staff how to fill your order.

## Get the data ##
Launch *index.html* in a browser and click one of the generator buttons to produce the JSON or T-SQL script for the Zza database. The output appears in a scrollable box on screen. Click the [Select all] button and copy the output; paste it whereever it's useful to you.

For example, you could paste the JSON output into a new JavaScript file in your project and use that as the basis for mock data objects while you're developing your front-end.

You could run the "T-SQL" generator, open SQL Server Management Studio (SMS), open a new query window, paste, and execute. It should produce a SQL Server database for you. You'll also find a recent generation of the T-SQL script in the *output* folder as "ZzaDatabaseGen.sql"; you can just play that SQL script in Visual Studio or in SQL SMS.

The mongo generator is a little different. It requires node.js. Assuming you have node and MongoDb installed, you fire up your MongoDb server and then run "mongoGen.js" in node. That will (re)create a "Zza" database.

## Images ##
You want pictures in your app, right? Well, we've got `Product` pictures of pizzas, salads and beverages in the *images* folder. Feel free to contribute better ones (the beverages are all the same at the moment).

