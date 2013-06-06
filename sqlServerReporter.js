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
     var isArray = app.isArray;
     var isDate = app.isDate;

    function Inserter(insertPrefix, insertPostfix){
        this.insertPrefix = insertPrefix;
        this.insertPostfix = insertPostfix || ");";
        this.values = [];
    }

    Inserter.prototype.clear = function (){this.values = [];};
    Inserter.prototype.add = function (stuff){
        var self = this;
        if (!isArray(stuff)){stuff = [stuff];}
        stuff.forEach(function(value) {
            if (value == null ) { // matches null and undefined
                value = "NULL"
            } else if (typeof value === 'string')   {
                if (value === "") {
                    value =  "''";
                }  else {
                    value =  "'" + value.replace(/'/g, "''")  +  "'";
                }
            } else if (isDate(value)){
                value = "'" + value.toISOString() + "'";
            }  else {
                value = value.toString();
            }

            self.values.push(value);
        });
    };
    Inserter.prototype.out = function (stuff){
        if (stuff){this.add(stuff);}
        var out = this.insertPrefix + this.values.join(',') + this.insertPostfix;
        this.clear();
        return out;
    };
    app.sqlServerReporter = {
        initialize: function(){
            app.reset();
            app.toOutput('USE [Zza]');
            orderTablesDrop();
            setCustomerIds();
            customerTableGenerator();
            referenceTableGenerator();
            orderTablesCreate();
        },
        report: function(customer) {
            app.reportCustomerOrderStats(customer);
            orderDataGenerator(customer);
        }
    };

    function referenceTableGenerator(){
        // All except Customer.
        // Must always rerun Customer because it sets new Guid Ids each time
        productTableGenerator();
        productOptionTableGenerator();
        productSizeTableGenerator();
        orderStatusTableGenerator();
    }

    var orderInserter  = new Inserter(
        "INSERT INTO [dbo].[Order] "+
            "([Id]"+
            ",[CustomerId]"+
            ",[OrderStatusId]"+
            ",[OrderDate]"+
            ",[Phone]"+
            ",[DeliveryDate]"+
            ",[DeliveryCharge]"+
            ",[DeliveryStreet]"+
            ",[DeliveryCity]"+
            ",[DeliveryState]"+
            ",[DeliveryZip]"+
            ",[ItemsTotal]"+
            ")VALUES("
    );
    var orderItemInserter  = new Inserter(
        "INSERT INTO [dbo].[OrderItem] "+
            "([Id]"+
            ",[OrderId]"+
            ",[ProductId]"+
            ",[ProductSizeId]"+
            ",[Quantity]"+
            ",[UnitPrice]"+
            ",[TotalPrice]"+
            ",[Instructions]"+
            ")VALUES("
    );
    var orderItemOptionInserter  = new Inserter(
        "INSERT INTO [dbo].[OrderItemOption] "+
            "([Id]"+
            ",[OrderItemId]"+
            ",[ProductOptionId]"+
            ",[Quantity]"+
            ",[Price]"+
            ")VALUES("
    );

    function orderDataGenerator(customer){

        var out = app.toOutput;
        var orders = customer.orders, ordsLen = orders.length;
        for (var i = 0 ; i < ordsLen; i++){
            var order = orders[i];
            var addr = order.deliveryAddress;
            out("SET IDENTITY_INSERT [dbo].[Order] ON");
            out(orderInserter.out([
                order.id, order.customerId,  order.status.id, order.orderDate,
                order.phone, order.deliveryDate, order.deliveryCharge,
                addr.street, addr.city, addr.state, addr.zip,
                order.itemsTotal]));
            out("SET IDENTITY_INSERT [dbo].[Order] OFF");
            var items = order.items, itemsLen = items.length;
            for (var j = 0; j < itemsLen; j++){
                var item = items[j];
                out("SET IDENTITY_INSERT [dbo].[OrderItem] ON");
                out(orderItemInserter.out([item.id, order.id,  item.product.id, item.size.id,
                    item.qty, item.unitPrice, item.totalPrice, item.instructions]));
                out("SET IDENTITY_INSERT [dbo].[OrderItem] OFF");
                var opts = item.options;
                if (opts.length){
                    out("SET IDENTITY_INSERT [dbo].[OrderItemOption] ON");
                    opts.forEach(function(opt){
                        out(orderItemOptionInserter.out([opt.id, item.id, opt.option.id,  opt.qty, opt.price]));
                    });
                    out("SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF");
                }
            }
        }
    }

    function setCustomerIds(){
        var newCustomerId = app.idGenerators.newCustomerId;
        app.customers.forEach(function (cust){cust.id = newCustomerId();})
    }

    function customerTableGenerator(){
        var toOutput = app.toOutput;
         toOutput("PRINT '\n*** Customer Table Generation ***'");
         toOutput('\n/*** Table [dbo].[Customer] Script Date: '+new Date() + ' ***/');
        //***  (Re)create the database table
         var ddl =[
             "IF OBJECT_ID('[dbo].[Customer]', 'U') IS NOT NULL",
                 "DROP TABLE [dbo].[Customer]",
             "GO\n",
             "SET ANSI_NULLS ON",
             "GO\n",
             "SET QUOTED_IDENTIFIER ON",
             "GO\n",
             "CREATE TABLE [dbo].[Customer](",
                 "[Id] [uniqueidentifier] NOT NULL,",
                 "[StoreId] [uniqueidentifier] NULL,",
                 "[FirstName] [nvarchar](50) NULL,",
                 "[LastName] [nvarchar](50) NULL,",
                 "[Phone] [nvarchar](100) NULL,",
                 "[Email] [nvarchar](255) NULL,",
                 "[Street] [nvarchar](100) NULL,",
                 "[City] [nvarchar](100) NULL,",
                 "[State] [nvarchar](2) NULL,",
                 "[Zip] [nvarchar](10) NULL,",
             "CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED" ,
             "([Id] ASC)",
              "WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,",
                 "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
             ") ON [PRIMARY]",
             "GO\n"
         ].join('\n');
        toOutput(ddl);

        //*** Insert the data
        var insertPrefix =
             "INSERT INTO [dbo].[Customer]"+
             "([Id]"+
             ",[FirstName]"+
             ",[LastName]"+
             ",[Phone]"+
             ",[Email]"+
             ",[Street]"+
             ",[City]"+
             ",[State]"+
             ",[Zip]"+
             ")VALUES(";

        var ins = new Inserter(insertPrefix);
        var customers = app.customers, len = customers.length;
        for (var i = 0; i < len; i++){
            var c=customers[i];
            ins.add([c.id, c.firstName, c.lastName, c.phone, c.email, c.street, c.city, c.state, c.zip] );
            toOutput(ins.out());
        }
    }

    function productTableGenerator(){
        var toOutput = app.toOutput;
        toOutput("PRINT \n'*** Product Table Generation ***'");
        toOutput('\n/*** Table [dbo].[Product] Script Date: '+new Date() + ' ***/');
        //***  (Re)create the database table
        var ddl =[
            "IF OBJECT_ID('[dbo].[Product]', 'U') IS NOT NULL",
            "BEGIN",
            "ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_HasOptions]",
            "DROP TABLE [dbo].[Product]",
            "END",
            "GO\n",
            "SET ANSI_NULLS ON",
            "GO",
            "SET QUOTED_IDENTIFIER ON",
            "GO\n",
            "CREATE TABLE [dbo].[Product](",
            "[Id] [int] NOT NULL,",
            "[Type] [nvarchar](20) NOT NULL,",
            "[Name] [nvarchar](50) NOT NULL,",
            "[Description] [nvarchar](255) NOT NULL,",
            "[Image] [nvarchar](50) NULL,",
            "[HasOptions] [bit] NOT NULL,",
            "[IsVegetarian] [bit] NULL,",
            "[WithTomatoSauce] [bit] NULL,",
            "[Size] [nvarchar](10) NULL,",
            "CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED" ,
            "([Id] ASC)WITH ",
            "(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ",
            "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
            ") ON [PRIMARY]",
            "GO\n",
            "ALTER TABLE [dbo].[Product] " +
                "ADD CONSTRAINT [DF_Product_HasOptions]  DEFAULT ((1)) FOR [HasOptions]",
            "GO\n"
        ].join('\n');
        toOutput(ddl);

        //*** Insert the data
        var insertPrefix =
            "INSERT INTO [dbo].[Product]"+
                "([Id]"+
                ",[Type]"+
                ",[Name]"+
                ",[Description]"+
                ",[Image]"+
                ",[HasOptions]"+
                ",[IsVegetarian]"+
                ",[WithTomatoSauce]"+
                ",[Size]"+
                ")VALUES(";
        var ins = new Inserter(insertPrefix);
        var productTypes=['pizzas','salads','beverages'];
        productTypes.forEach(function(typeName){
            var products = app[typeName];
            products.forEach(function(p){
                ins.add([p.id, p.type, p.name, p.description, p.image,
                         p.hasOptions?1:0, p.isVegetarian?1:0, p.withTomatoSauce?1:0, p.size] );
                toOutput(ins.out());
            });
        }) ;
    }

    function productOptionTableGenerator(){
        var toOutput = app.toOutput;
        toOutput("PRINT '\n*** ProductOption Table Generation ***'");
        toOutput('\n/*** Table [dbo].[ProductOption] Script Date: '+new Date() + ' ***/');
        //***  (Re)create the database table
        var ddl =[
             "IF OBJECT_ID('[dbo].[ProductOption]', 'U') IS NOT NULL",
             "BEGIN",
                 "ALTER TABLE [dbo].[ProductOption] DROP CONSTRAINT [DF_ProductOption_IsSaladOption]",
                 "ALTER TABLE [dbo].[ProductOption] DROP CONSTRAINT [DF_ProductOption_IsPizzaOption]",
                 "DROP TABLE [dbo].[ProductOption]",
             "END",
             "GO\n",
             "SET ANSI_NULLS ON",
             "GO",
             "SET QUOTED_IDENTIFIER ON",
             "GO\n",
             "CREATE TABLE [dbo].[ProductOption](",
                 "[Id] [int] NOT NULL,",
                 "[Type] [nvarchar](20) NOT NULL,",
                 "[Name] [nvarchar](50) NOT NULL,",
                 "[Factor] [int] NOT NULL,",
                 "[IsPizzaOption] [bit] NOT NULL,",
                 "[IsSaladOption] [bit] NOT NULL,",
             "CONSTRAINT [PK_ProductOption] PRIMARY KEY CLUSTERED" ,
             "([Id] ASC)WITH ",
             "(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ",
             "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
             ") ON [PRIMARY]",
             "GO\n",
             "ALTER TABLE [dbo].[ProductOption] " +
                 "ADD CONSTRAINT [DF_ProductOption_IsPizzaOption]  DEFAULT ((1)) FOR [IsPizzaOption]",
             "GO",
             "ALTER TABLE [dbo].[ProductOption] " +
                 "ADD CONSTRAINT [DF_ProductOption_IsSaladOption]  DEFAULT ((1)) FOR [IsSaladOption]",
             "GO\n"
        ].join('\n');
        toOutput(ddl);

        //*** Insert the data
        var insertPrefix =
            "INSERT INTO [dbo].[ProductOption]"+
            "([Id]"+
            ",[Type]"+
            ",[Name]"+
            ",[Factor] "+
            ",[IsPizzaOption]"+
            ",[IsSaladOption]"+
            ")VALUES(";
        var ins = new Inserter(insertPrefix);
        var optionTypes=['crusts','sauces','cheeses','veggies','meats','spices','saladDressings'];
        optionTypes.forEach(function(typeName){
            var opts = app[typeName];
            opts.forEach(function(o){
                ins.add([o.id, o.type, o.name, o.factor, o.isPizzaOption?1:0, o.isSaladOption?1:0] );
                toOutput(ins.out());
            });
        }) ;
    }

    function productSizeTableGenerator(){
        var toOutput = app.toOutput;
        toOutput("PRINT '\n*** ProductSize Table Generation ***'");
        toOutput('\n/*** Table [dbo].[ProductSize] Script Date: '+new Date() + ' ***/');
        //***  (Re)create the database table
        var ddl =[
            "IF OBJECT_ID('[dbo].[ProductSize]', 'U') IS NOT NULL",
            "BEGIN",
            "ALTER TABLE [dbo].[ProductSize] DROP CONSTRAINT [DF_ProductSize_IsGlutenFree]",
            "DROP TABLE [dbo].[ProductSize]",
            "END",
            "GO\n",
            "SET ANSI_NULLS ON",
            "GO",
            "SET QUOTED_IDENTIFIER ON",
            "GO\n",
            "CREATE TABLE [dbo].[ProductSize](",
            "[Id] [int] NOT NULL,",
            "[Type] [nvarchar](20) NOT NULL,",
            "[Name] [nvarchar](50) NOT NULL,",
            "[Price] [smallmoney] NOT NULL,",
            "[PremiumPrice] [smallmoney] NULL,",
            "[ToppingPrice] [smallmoney] NULL,",
            "[IsGlutenFree] [bit] NULL,",
            "CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED",
            "([Id] ASC)",
            "WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,",
            "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
            ") ON [PRIMARY]",
            "GO",
            "ALTER TABLE [dbo].[ProductSize]",
            "ADD CONSTRAINT [DF_ProductSize_IsGlutenFree] DEFAULT ((0)) FOR [IsGlutenFree]",
            "GO\n"
        ].join('\n');
        toOutput(ddl);

        //*** Insert the data
        var insertPrefix =
            "INSERT INTO [dbo].[ProductSize]"+
                "([Id]"+
                ",[Type]"+
                ",[Name]"+
                ",[Price] "+
                ",[PremiumPrice]"+
                ",[ToppingPrice]"+
                ",[IsGlutenFree]"+
                ")VALUES(";
        var ins = new Inserter(insertPrefix);
        var sizeTypes=['pizzaSizes','saladSizes','beverageSizes'];
        sizeTypes.forEach(function(typeName){
            var sizes = app[typeName];
            sizes.forEach(function(s){
                ins.add([s.id, s.type, s.name, s.price, s.premiumPrice, s.toppingPrice, s.isGlutenFree?1:0] );
                toOutput(ins.out());
            });
        }) ;
    }

    function orderStatusTableGenerator(){
        var toOutput = app.toOutput;
        toOutput("PRINT '\n*** OrderStatus Table Generation ***'");
        toOutput('\n/*** Table [dbo].[OrderStatus] Script Date: '+new Date() + ' ***/');
        //***  (Re)create the database table
        var ddl =[
            "IF OBJECT_ID('[dbo].[OrderStatus]', 'U') IS NOT NULL",
            "DROP TABLE [dbo].[OrderStatus]",
            "GO\n",
            "SET ANSI_NULLS ON",
            "GO",
            "SET QUOTED_IDENTIFIER ON",
            "GO\n",
            "CREATE TABLE [dbo].[OrderStatus](",
            "[Id] [int] NOT NULL,",
            "[Name] [nvarchar](50) NOT NULL,",
            "CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED",
            "([Id] ASC)",
            "WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,",
            "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
            ") ON [PRIMARY]",
            "GO\n"
        ].join('\n');
        toOutput(ddl);

        //*** Insert the data
        var insertPrefix =
            "INSERT INTO [dbo].[OrderStatus]"+
                "([Id]"+
                ",[Name]"+
                ")VALUES(";
        var ins = new Inserter(insertPrefix);
        app.orderStatuses.forEach(function(s){
            ins.add([s.id, s.name] );
            toOutput(ins.out());
        });
    }

    function orderTablesDrop(){
        var toOutput = app.toOutput;
        toOutput('\n/*** Drop Order Tables Script Date: '+new Date() + ' ***/');
        //***  (Re)create the database table
        var ddl =[
            "IF OBJECT_ID('[dbo].[OrderItemOption]', 'U') IS NOT NULL",
            "BEGIN",
                "ALTER TABLE [dbo].[OrderItemOption] DROP CONSTRAINT [FK_OrderItemOption_ProductOption]",
                "ALTER TABLE [dbo].[OrderItemOption] DROP CONSTRAINT [FK_OrderItemOption_OrderItem]",
                "DROP TABLE [dbo].[OrderItemOption]",
            "END",
            "GO\n",

            "IF OBJECT_ID('[dbo].[OrderItem]', 'U') IS NOT NULL",
            "BEGIN",
                "ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_ProductSize]",
                "ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_Product]",
                "ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_Order]",
                "DROP TABLE [dbo].[OrderItem]",
            "END",
            "GO\n",

            "IF OBJECT_ID('[dbo].[Order]', 'U') IS NOT NULL",
            "BEGIN",
                "ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Customer]",
                "ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_OrderStatus] ",
                "DROP TABLE [dbo].[Order]",
            "END",
            "GO\n",
            "SET ANSI_NULLS ON",
            "GO",
            "SET QUOTED_IDENTIFIER ON",
            "GO\n" ]
            .join('\n');
        toOutput(ddl);
    }

    function orderTablesCreate(){
        var toOutput = app.toOutput;
        toOutput("PRINT '\n*** Order Tables Generation ***'");
        toOutput('\n/*** Create Order Tables Script Date: '+new Date() + ' ***/');
        var ddl =[
            "CREATE TABLE [dbo].[Order](",
            "[Id] [bigint] IDENTITY(1,1) NOT NULL,",
            "[StoreId] [uniqueidentifier] NULL,",
            "[CustomerId] [uniqueidentifier] NOT NULL,",
            "[OrderStatusId] [int] NOT NULL,",
            "[OrderDate] [datetime2](7) NOT NULL,",
            "[Phone] [nvarchar](100) NULL,",
            "[DeliveryDate] [datetime2](7) NOT NULL,",
            "[DeliveryCharge] [smallmoney] NOT NULL,",
            "[DeliveryStreet] [nvarchar](100) NULL,",
            "[DeliveryCity] [nvarchar](100) NULL,",
            "[DeliveryState] [nvarchar](2) NULL,",
            "[DeliveryZip] [nvarchar](10) NULL,",
            "[ItemsTotal] [smallmoney] NOT NULL,",
            "CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED",
            "([Id] ASC)",
            "WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,",
            "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
            ") ON [PRIMARY]",
            "GO",
            "ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])",
            "REFERENCES [dbo].[Customer] ([Id])",
            "GO",
            "ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]",
            "GO",
            "ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusId])",
            "REFERENCES [dbo].[OrderStatus] ([Id])",
            "GO",
            "ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]",
            "GO\n",

            "CREATE TABLE [dbo].[OrderItem](",
            "[Id] [bigint] IDENTITY(1,1) NOT NULL,",
            "[StoreId] [uniqueidentifier] NULL,",
            "[OrderId] [bigint] NOT NULL,",
            "[ProductId] [int] NOT NULL,",
            "[ProductSizeId] [int] NOT NULL,",
            "[Quantity] [int] NOT NULL,",
            "[UnitPrice] [smallmoney] NOT NULL,",
            "[TotalPrice] [smallmoney] NOT NULL,",
            "[Instructions] [nvarchar](255) NULL,",
            "CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED",
            "([Id] ASC)",
            "WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,",
            "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
            ") ON [PRIMARY]",
            "GO",
            "ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderId])",
            "REFERENCES [dbo].[Order] ([Id])",
            "GO",
            "ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Order]",
            "GO",
            "ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([ProductId])",
            "REFERENCES [dbo].[Product] ([Id])",
            "GO",
            "ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product]",
            "GO",
            "ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_ProductSize] FOREIGN KEY([ProductSizeId])",
            "REFERENCES [dbo].[ProductSize] ([Id])",
            "GO",
            "ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_ProductSize]",
            "GO\n",

            "CREATE TABLE [dbo].[OrderItemOption](",
            "[Id] [bigint] IDENTITY(1,1) NOT NULL,",
            "[StoreId] [uniqueidentifier] NULL,",
            "[OrderItemId] [bigint] NOT NULL,",
            "[ProductOptionId] [int] NOT NULL,",
            "[Quantity] [int] NOT NULL,",
            "[Price] [smallmoney] NOT NULL,",
            "CONSTRAINT [PK_OrderItemOption] PRIMARY KEY CLUSTERED",
            "([Id] ASC)",
            "WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,",
            "ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]",
            ") ON [PRIMARY]",
            "GO",
            "ALTER TABLE [dbo].[OrderItemOption]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemOption_OrderItem] FOREIGN KEY([OrderItemId])",
            "REFERENCES [dbo].[OrderItem] ([Id])",
            "GO",
            "ALTER TABLE [dbo].[OrderItemOption] CHECK CONSTRAINT [FK_OrderItemOption_OrderItem]",
            "GO",
            "ALTER TABLE [dbo].[OrderItemOption]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemOption_ProductOption] FOREIGN KEY([ProductOptionId])",
            "REFERENCES [dbo].[ProductOption] ([Id])",
            "GO",
            "ALTER TABLE [dbo].[OrderItemOption] CHECK CONSTRAINT [FK_OrderItemOption_ProductOption]",
            "GO\n"]
            .join('\n');
        toOutput(ddl);
    }
}));
