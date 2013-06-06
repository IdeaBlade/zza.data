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
    app.customers = [
        {
            firstName: "Derek",
            lastName: "Puckett",
            phone: "(954) 594-9355",
            email: "massa.rutrum.magna@vulputate.net",
            street: "P.O. Box 914, 9990 Dapibus St.",
            city: "quam",
            state: "OH",
            zip: "55154"
        },
        {
            firstName: "Bernard",
            lastName: "Russell",
            phone: "(203) 652-0465",
            email: "varius@torquentper.com",
            street: "324-6843 Dolor Ave",
            city: "quis",
            state: "FL",
            zip: "28034"
        },
        {
            firstName: "Jordan",
            lastName: "Jimenez",
            phone: "(265) 520-8354",
            email: "vel.faucibus.id@variusorciin.co.uk",
            street: "Ap #370-9242 Sed, Ave",
            city: "lorem",
            state: "OR",
            zip: "88091"
        },
        {
            firstName: "Jordan",
            lastName: "Holloway",
            phone: "(761) 224-2078",
            email: "non.ante@felisullamcorper.edu",
            street: "Ap #128-7062 Viverra. Road",
            city: "penatibus",
            state: "PA",
            zip: "82092"
        },
        {
            firstName: "Dorian",
            lastName: "Hurley",
            phone: "(691) 714-1449",
            email: "elementum@ipsumprimis.org",
            street: "3100 Nunc St.",
            city: "Nam",
            state: "IL",
            zip: "57878"
        },
        {
            firstName: "Regan",
            lastName: "Wright",
            phone: "(126) 144-1855",
            email: "amet@ullamcorpernislarcu.edu",
            street: "Ap #701-4141 Ante. Rd.",
            city: "dictum",
            state: "KS",
            zip: "82560"
        },
        {
            firstName: "Hedda",
            lastName: "Kemp",
            phone: "(147) 741-1696",
            email: "sapien@nunc.ca",
            street: "P.O. Box 880, 3605 Nec, Ave",
            city: "dolor,",
            state: "MS",
            zip: "56403"
        },
        {
            firstName: "Jordan",
            lastName: "Kelly",
            phone: "(859) 624-7317",
            email: "a@lorem.org",
            street: "P.O. Box 866, 3666 Phasellus Rd.",
            city: "rutrum",
            state: "MN",
            zip: "69800"
        },
        {
            firstName: "Cheryl",
            lastName: "Massey",
            phone: "(601) 563-9471",
            email: "Phasellus@dictumplacerat.edu",
            street: "Ap #171-7323 Mattis Av.",
            city: "erat",
            state: "OK",
            zip: "02283"
        },
        {
            firstName: "Erich",
            lastName: "Barron",
            phone: "(880) 947-3420",
            email: "Integer.in@Loremipsumdolor.net",
            street: "Ap #442-177 Volutpat Avenue",
            city: "egestas.",
            state: "CT",
            zip: "42871"
        },
        {
            firstName: "Brianna",
            lastName: "Allen",
            phone: "(298) 393-0372",
            email: "Quisque.porttitor@InfaucibusMorbi.com",
            street: "P.O. Box 902, 5276 Semper St.",
            city: "rhoncus.",
            state: "ME",
            zip: "86063"
        },
        {
            firstName: "Chastity",
            lastName: "Robbins",
            phone: "(437) 367-6613",
            email: "nibh.vulputate.mauris@Donecnonjusto.net",
            street: "2295 Elit. Avenue",
            city: "non",
            state: "TN",
            zip: "02263"
        },
        {
            firstName: "Wallace",
            lastName: "Bates",
            phone: "(574) 847-4231",
            email: "semper.pretium@sem.org",
            street: "712-6613 Orci Ave",
            city: "nulla.",
            state: "MS",
            zip: "05332"
        },
        {
            firstName: "Molly",
            lastName: "Frank",
            phone: "(310) 705-4577",
            email: "at.sem.molestie@Inlorem.edu",
            street: "2277 Donec Rd.",
            city: "mollis",
            state: "KY",
            zip: "75839"
        },
        {
            firstName: "Demetrius",
            lastName: "Langley",
            phone: "(657) 854-8183",
            email: "Donec.non.justo@Nam.edu",
            street: "4814 Nunc. St.",
            city: "nec",
            state: "AK",
            zip: "39498"
        },
        {
            firstName: "Reese",
            lastName: "Stephens",
            phone: "(134) 602-2513",
            email: "molestie.tellus@quam.ca",
            street: "580-9933 Ornare St.",
            city: "Fusce",
            state: "MT",
            zip: "68017"
        },
        {
            firstName: "Shelley",
            lastName: "Weber",
            phone: "(692) 253-4895",
            email: "Quisque@Fusce.org",
            street: "Ap #156-4219 Et, Av.",
            city: "Proin",
            state: "IA",
            zip: "66768"
        },
        {
            firstName: "Jennifer",
            lastName: "Leblanc",
            phone: "(814) 120-4683",
            email: "metus@Fuscefermentumfermentum.ca",
            street: "779-8730 Auctor. Av.",
            city: "libero",
            state: "IA",
            zip: "79546"
        },
        {
            firstName: "Idona",
            lastName: "West",
            phone: "(220) 623-6795",
            email: "purus@metusIn.org",
            street: "P.O. Box 734, 7881 Posuere St.",
            city: "ut",
            state: "MT",
            zip: "93058"
        },
        {
            firstName: "Melyssa",
            lastName: "Weaver",
            phone: "(881) 844-1111",
            email: "luctus.lobortis@libero.edu",
            street: "P.O. Box 930, 2346 Turpis. Rd.",
            city: "massa.",
            state: "LA",
            zip: "09104"
        },
        {
            firstName: "Althea",
            lastName: "Patrick",
            phone: "(485) 679-0902",
            email: "vel@vitaesemper.edu",
            street: "Ap #750-567 Ac St.",
            city: "eget",
            state: "NV",
            zip: "56076"
        },
        {
            firstName: "John",
            lastName: "Russell",
            phone: "(496) 953-8629",
            email: "auctor.quis.tristique@loremauctor.net",
            street: "1918 Etiam Avenue",
            city: "auctor",
            state: "IL",
            zip: "39599"
        },
        {
            firstName: "Dylan",
            lastName: "Mitchell",
            phone: "(500) 479-9175",
            email: "et.ultrices@aliquetPhasellus.org",
            street: "P.O. Box 773, 4409 Sit Rd.",
            city: "nec",
            state: "VT",
            zip: "17367"
        },
        {
            firstName: "Georgia",
            lastName: "Webster",
            phone: "(480) 427-2180",
            email: "adipiscing.Mauris.molestie@utcursusluctus.edu",
            street: "Ap #298-6821 Ut, Avenue",
            city: "risus.",
            state: "MO",
            zip: "45872"
        },
        {
            firstName: "Lee",
            lastName: "Burris",
            phone: "(399) 321-0539",
            email: "odio.semper@vel.com",
            street: "P.O. Box 876, 8449 Nostra, Rd.",
            city: "lorem.",
            state: "WY",
            zip: "93880"
        },
        {
            firstName: "Cameron",
            lastName: "Head",
            phone: "(233) 266-3616",
            email: "fringilla.mi@anuncIn.com",
            street: "1306 Proin St.",
            city: "sollicitudin",
            state: "ID",
            zip: "89918"
        },
        {
            firstName: "Oliver",
            lastName: "Dale",
            phone: "(114) 445-0087",
            email: "sed@tinciduntvehicula.com",
            street: "308-1383 Non Street",
            city: "ornare",
            state: "KY",
            zip: "30821"
        },
        {
            firstName: "Naida",
            lastName: "Whitney",
            phone: "(470) 815-3162",
            email: "egestas.Aliquam.fringilla@mollisvitaeposuere.co.uk",
            street: "P.O. Box 399, 6339 Nisi Road",
            city: "adipiscing.",
            state: "LA",
            zip: "10892"
        },
        {
            firstName: "Wing",
            lastName: "Miller",
            phone: "(333) 414-9465",
            email: "mauris.sagittis.placerat@sodalespurus.net",
            street: "P.O. Box 483, 8826 Vel Rd.",
            city: "fermentum",
            state: "CT",
            zip: "68647"
        },
        {
            firstName: "Vernon",
            lastName: "Hammond",
            phone: "(417) 758-1428",
            email: "arcu.Sed.et@eleifendvitae.org",
            street: "3274 Nec, Rd.",
            city: "netus",
            state: "MS",
            zip: "74761"
        },
        {
            firstName: "Carla",
            lastName: "Hall",
            phone: "(157) 325-7072",
            email: "Nullam.enim@eu.co.uk",
            street: "P.O. Box 311, 7310 Quis Ave",
            city: "diam",
            state: "CT",
            zip: "40026"
        },
        {
            firstName: "Castor",
            lastName: "Hartman",
            phone: "(129) 841-3220",
            email: "rutrum.non@nisinibh.co.uk",
            street: "Ap #588-5375 Suspendisse Street",
            city: "at,",
            state: "KY",
            zip: "94906"
        },
        {
            firstName: "Lewis",
            lastName: "Clemons",
            phone: "(163) 948-1803",
            email: "Integer.id.magna@miloremvehicula.com",
            street: "Ap #524-5510 Aliquam St.",
            city: "ipsum",
            state: "TN",
            zip: "97887"
        },
        {
            firstName: "Jolene",
            lastName: "Holland",
            phone: "(950) 445-1642",
            email: "pharetra@Utnecurna.co.uk",
            street: "6650 Enim. Av.",
            city: "tristique",
            state: "HI",
            zip: "18696"
        },
        {
            firstName: "Kasimir",
            lastName: "Oneill",
            phone: "(296) 709-1618",
            email: "a@malesuadaaugueut.com",
            street: "769-925 Vulputate, Street",
            city: "orci.",
            state: "TN",
            zip: "82341"
        },
        {
            firstName: "Aileen",
            lastName: "Alvarez",
            phone: "(829) 590-4166",
            email: "lacinia.orci.consectetuer@In.edu",
            street: "812-4435 Aliquet. Ave",
            city: "lectus",
            state: "MD",
            zip: "86721"
        },
        {
            firstName: "Taylor",
            lastName: "Delaney",
            phone: "(274) 223-1647",
            email: "faucibus@facilisisnon.com",
            street: "9403 Nullam Av.",
            city: "justo.",
            state: "VA",
            zip: "48216"
        },
        {
            firstName: "Jillian",
            lastName: "Farmer",
            phone: "(574) 315-4571",
            email: "euismod.enim.Etiam@ligulaAliquam.edu",
            street: "Ap #749-5159 Sem Rd.",
            city: "malesuada.",
            state: "KS",
            zip: "97719"
        },
        {
            firstName: "Germane",
            lastName: "Noel",
            phone: "(283) 615-2609",
            email: "Cras.convallis.convallis@utpellentesque.org",
            street: "1410 Blandit St.",
            city: "commodo",
            state: "AZ",
            zip: "23691"
        },
        {
            firstName: "Rigel",
            lastName: "Tran",
            phone: "(540) 387-4490",
            email: "Aliquam.tincidunt@lectusrutrumurna.org",
            street: "2608 Egestas. Avenue",
            city: "ipsum.",
            state: "MS",
            zip: "47373"
        },
        {
            firstName: "Fredericka",
            lastName: "Sweet",
            phone: "(223) 636-5019",
            email: "fermentum@posuerevulputate.edu",
            street: "P.O. Box 811, 2885 Et, Road",
            city: "sed,",
            state: "WA",
            zip: "50088"
        },
        {
            firstName: "Jameson",
            lastName: "Dale",
            phone: "(764) 227-7789",
            email: "fames.ac.turpis@Nam.net",
            street: "P.O. Box 467, 8040 Diam St.",
            city: "bibendum",
            state: "MA",
            zip: "73582"
        },
        {
            firstName: "Jared",
            lastName: "Gallagher",
            phone: "(529) 932-7105",
            email: "sed@placerataugue.co.uk",
            street: "3544 Ut, Rd.",
            city: "Curabitur",
            state: "HI",
            zip: "71517"
        },
        {
            firstName: "Helen",
            lastName: "Harper",
            phone: "(378) 568-8959",
            email: "magna.Sed.eu@penatibus.ca",
            street: "Ap #805-4319 Arcu Rd.",
            city: "metus.",
            state: "MO",
            zip: "84235"
        },
        {
            firstName: "Althea",
            lastName: "Rosario",
            phone: "(925) 871-6501",
            email: "a.malesuada@et.net",
            street: "P.O. Box 616, 6012 In Av.",
            city: "sem",
            state: "WY",
            zip: "75609"
        },
        {
            firstName: "Courtney",
            lastName: "Bray",
            phone: "(713) 390-4565",
            email: "ultrices.iaculis.odio@Nuncsed.ca",
            street: "519-4610 Nonummy. Av.",
            city: "ullamcorper.",
            state: "MO",
            zip: "29699"
        },
        {
            firstName: "Kitra",
            lastName: "Crawford",
            phone: "(123) 442-5981",
            email: "ante.bibendum@justo.ca",
            street: "Ap #294-6210 Integer St.",
            city: "dolor",
            state: "HI",
            zip: "15675"
        },
        {
            firstName: "Marsden",
            lastName: "Freeman",
            phone: "(775) 110-3692",
            email: "porttitor.scelerisque.neque@utmiDuis.com",
            street: "146-9891 Sit Ave",
            city: "Aenean",
            state: "OK",
            zip: "81759"
        },
        {
            firstName: "Deanna",
            lastName: "Cash",
            phone: "(398) 800-8468",
            email: "eu.augue@sagittis.org",
            street: "P.O. Box 144, 564 Hendrerit Avenue",
            city: "Nulla",
            state: "MT",
            zip: "49214"
        },
        {
            firstName: "Cheryl",
            lastName: "Harvey",
            phone: "(643) 524-5182",
            email: "tempus@imperdietornareIn.co.uk",
            street: "2987 Arcu. Av.",
            city: "amet",
            state: "MA",
            zip: "01803"
        },
        {
            firstName: "Alexis",
            lastName: "Kirkland",
            phone: "(641) 976-2223",
            email: "elit@rutrumeu.edu",
            street: "P.O. Box 560, 4261 Pede Rd.",
            city: "amet",
            state: "UT",
            zip: "94584"
        },
        {
            firstName: "Tana",
            lastName: "Spence",
            phone: "(942) 240-7629",
            email: "pede@arcuCurabitur.net",
            street: "715-6134 Ac St.",
            city: "pharetra.",
            state: "OH",
            zip: "11469"
        },
        {
            firstName: "Vielka",
            lastName: "Lyons",
            phone: "(890) 104-1814",
            email: "blandit.enim.consequat@risusInmi.ca",
            street: "Ap #939-3921 Tempus Ave",
            city: "enim,",
            state: "FL",
            zip: "37684"
        },
        {
            firstName: "Macey",
            lastName: "Quinn",
            phone: "(946) 156-4745",
            email: "Mauris@massarutrummagna.org",
            street: "P.O. Box 130, 5971 Montes, Rd.",
            city: "non,",
            state: "OR",
            zip: "16074"
        },
        {
            firstName: "Jeremy",
            lastName: "Henson",
            phone: "(348) 943-5910",
            email: "ac.risus@ametlorem.org",
            street: "P.O. Box 129, 5651 Augue, Rd.",
            city: "Donec",
            state: "IN",
            zip: "87595"
        },
        {
            firstName: "Avram",
            lastName: "Hamilton",
            phone: "(938) 823-1723",
            email: "nulla.In.tincidunt@acipsumPhasellus.co.uk",
            street: "181-761 Libero St.",
            city: "Curabitur",
            state: "AZ",
            zip: "95454"
        },
        {
            firstName: "Wanda",
            lastName: "Mccoy",
            phone: "(889) 761-0883",
            email: "vitae@in.co.uk",
            street: "3903 Sollicitudin Avenue",
            city: "adipiscing",
            state: "VT",
            zip: "77331"
        },
        {
            firstName: "Riley",
            lastName: "Savage",
            phone: "(136) 924-6445",
            email: "consectetuer@vitaeorciPhasellus.net",
            street: "Ap #538-9663 Enim Avenue",
            city: "dictum",
            state: "OH",
            zip: "52785"
        },
        {
            firstName: "Shelby",
            lastName: "Mills",
            phone: "(490) 193-4579",
            email: "orci@convallisligulaDonec.edu",
            street: "P.O. Box 377, 8310 Id Road",
            city: "Fusce",
            state: "WI",
            zip: "09577"
        },
        {
            firstName: "Beck",
            lastName: "Morrison",
            phone: "(445) 454-7004",
            email: "arcu.Vivamus.sit@orciluctus.co.uk",
            street: "P.O. Box 777, 6014 Ridiculus Street",
            city: "at,",
            state: "NV",
            zip: "38096"
        },
        {
            firstName: "Reed",
            lastName: "Albert",
            phone: "(324) 969-3404",
            email: "dolor.sit.amet@nuncrisus.net",
            street: "P.O. Box 637, 8360 Nam St.",
            city: "in",
            state: "AK",
            zip: "60569"
        },
        {
            firstName: "Daphne",
            lastName: "Hooper",
            phone: "(956) 442-3863",
            email: "consectetuer@Inat.edu",
            street: "P.O. Box 198, 7996 Nunc St.",
            city: "fringilla,",
            state: "TX",
            zip: "53410"
        },
        {
            firstName: "Georgia",
            lastName: "Haney",
            phone: "(429) 164-3030",
            email: "ante.bibendum@Donecelementum.org",
            street: "Ap #802-583 Montes, Avenue",
            city: "laoreet",
            state: "HI",
            zip: "83124"
        },
        {
            firstName: "Brenna",
            lastName: "Morrow",
            phone: "(859) 865-2065",
            email: "nisi@Etiam.co.uk",
            street: "2219 Cursus Rd.",
            city: "amet",
            state: "CA",
            zip: "96527"
        },
        {
            firstName: "Reuben",
            lastName: "Patrick",
            phone: "(945) 533-1951",
            email: "est.mollis@quis.com",
            street: "4997 Quam, Rd.",
            city: "tincidunt,",
            state: "GA",
            zip: "37692"
        },
        {
            firstName: "Vladimir",
            lastName: "Pratt",
            phone: "(166) 510-8527",
            email: "Sed@felis.ca",
            street: "Ap #549-3144 Lobortis Rd.",
            city: "nulla",
            state: "VA",
            zip: "82051"
        },
        {
            firstName: "Echo",
            lastName: "Larsen",
            phone: "(921) 573-6588",
            email: "nec@interdum.com",
            street: "Ap #560-469 Non Rd.",
            city: "nec",
            state: "IL",
            zip: "35131"
        },
        {
            firstName: "Emmanuel",
            lastName: "Nguyen",
            phone: "(629) 876-2320",
            email: "sed@odio.edu",
            street: "Ap #879-7971 Nec, Street",
            city: "placerat,",
            state: "TN",
            zip: "61074"
        },
        {
            firstName: "Chandler",
            lastName: "Barrett",
            phone: "(282) 169-7830",
            email: "id.ante.Nunc@famesac.edu",
            street: "301-1867 Quis Street",
            city: "nec",
            state: "AL",
            zip: "54062"
        },
        {
            firstName: "Kyle",
            lastName: "Rodgers",
            phone: "(376) 583-5528",
            email: "mi.pede@uterat.com",
            street: "Ap #791-9237 Convallis Ave",
            city: "interdum",
            state: "LA",
            zip: "74380"
        },
        {
            firstName: "Kermit",
            lastName: "Hamilton",
            phone: "(880) 539-7849",
            email: "Quisque.nonummy.ipsum@sem.com",
            street: "608 Nisi Rd.",
            city: "volutpat.",
            state: "LA",
            zip: "26569"
        },
        {
            firstName: "Halee",
            lastName: "Phillips",
            phone: "(575) 380-6774",
            email: "ligula@dis.co.uk",
            street: "955-4287 Consectetuer Rd.",
            city: "mauris.",
            state: "OR",
            zip: "25882"
        },
        {
            firstName: "Rogan",
            lastName: "Davidson",
            phone: "(929) 558-5253",
            email: "dui.in.sodales@enim.edu",
            street: "Ap #544-2072 Et Street",
            city: "neque.",
            state: "FL",
            zip: "32111"
        },
        {
            firstName: "Grady",
            lastName: "Abbott",
            phone: "(432) 388-1417",
            email: "eget.varius.ultrices@acturpis.net",
            street: "2749 Metus Avenue",
            city: "Suspendisse",
            state: "WA",
            zip: "37668"
        },
        {
            firstName: "Shad",
            lastName: "Rocha",
            phone: "(281) 514-3068",
            email: "eros@duiFusce.net",
            street: "404-6753 Facilisis Ave",
            city: "a",
            state: "KS",
            zip: "01567"
        },
        {
            firstName: "Hanna",
            lastName: "Lawson",
            phone: "(653) 705-1457",
            email: "montes@Aliquam.ca",
            street: "364-6175 Tincidunt Street",
            city: "pharetra",
            state: "VA",
            zip: "80436"
        },
        {
            firstName: "Elliott",
            lastName: "Rhodes",
            phone: "(283) 653-0786",
            email: "dictum.sapien@lectus.co.uk",
            street: "230-7699 Scelerisque Rd.",
            city: "Phasellus",
            state: "GA",
            zip: "29773"
        },
        {
            firstName: "Iona",
            lastName: "Baker",
            phone: "(168) 424-7326",
            email: "egestas.lacinia.Sed@ataugueid.org",
            street: "171 Vitae St.",
            city: "cursus.",
            state: "IA",
            zip: "23120"
        },
        {
            firstName: "Sloane",
            lastName: "Knox",
            phone: "(585) 279-3277",
            email: "velit.Pellentesque@nislsem.edu",
            street: "8391 Imperdiet, Rd.",
            city: "tincidunt,",
            state: "OH",
            zip: "97338"
        },
        {
            firstName: "Kadeem",
            lastName: "Hawkins",
            phone: "(709) 650-4546",
            email: "sem@consectetuer.net",
            street: "Ap #111-5843 Massa. Ave",
            city: "auctor",
            state: "TX",
            zip: "43177"
        },
        {
            firstName: "Alisa",
            lastName: "Farmer",
            phone: "(272) 138-1745",
            email: "luctus.et@semmagnanec.org",
            street: "P.O. Box 292, 1209 Quis St.",
            city: "penatibus",
            state: "FL",
            zip: "11929"
        },
        {
            firstName: "Marcia",
            lastName: "French",
            phone: "(270) 574-3828",
            email: "lacinia.Sed@imperdietornare.org",
            street: "Ap #110-902 Ornare Av.",
            city: "id,",
            state: "HI",
            zip: "17800"
        },
        {
            firstName: "Richard",
            lastName: "Pennington",
            phone: "(494) 542-9811",
            email: "faucibus.id.libero@posuerecubiliaCurae;.co.uk",
            street: "8682 Dignissim St.",
            city: "sagittis.",
            state: "MA",
            zip: "86664"
        },
        {
            firstName: "Ori",
            lastName: "Pickett",
            phone: "(341) 395-7156",
            email: "velit@justo.ca",
            street: "6924 Eleifend Av.",
            city: "tellus",
            state: "KY",
            zip: "43609"
        },
        {
            firstName: "Gary",
            lastName: "Lott",
            phone: "(708) 211-0792",
            email: "molestie@elitAliquam.co.uk",
            street: "379-6043 Ut Rd.",
            city: "magna",
            state: "TX",
            zip: "93764"
        },
        {
            firstName: "Raven",
            lastName: "Wells",
            phone: "(950) 862-9798",
            email: "tincidunt@nonmagna.com",
            street: "5849 Mauris St.",
            city: "diam",
            state: "AK",
            zip: "29567"
        },
        {
            firstName: "Charlotte",
            lastName: "Becker",
            phone: "(510) 118-7374",
            email: "ligula.elit@quamCurabitur.co.uk",
            street: "P.O. Box 235, 8495 Risus. Avenue",
            city: "quam",
            state: "WA",
            zip: "37294"
        },
        {
            firstName: "Alexa",
            lastName: "Butler",
            phone: "(552) 554-3280",
            email: "faucibus.orci.luctus@facilisiseget.co.uk",
            street: "7239 Et, Road",
            city: "tempor",
            state: "TX",
            zip: "00883"
        },
        {
            firstName: "Pascale",
            lastName: "Fowler",
            phone: "(487) 913-4567",
            email: "lacinia.orci@pedenec.org",
            street: "3192 Laoreet Rd.",
            city: "Integer",
            state: "IA",
            zip: "10919"
        },
        {
            firstName: "Sandra",
            lastName: "Kirk",
            phone: "(618) 597-6222",
            email: "et.pede.Nunc@cursusvestibulumMauris.ca",
            street: "Ap #910-8612 Quisque Avenue",
            city: "ut",
            state: "MD",
            zip: "74665"
        },
        {
            firstName: "Kay",
            lastName: "Kirk",
            phone: "(116) 965-7370",
            email: "Etiam.bibendum@Class.com",
            street: "P.O. Box 286, 5025 Donec Rd.",
            city: "interdum",
            state: "LA",
            zip: "57214"
        },
        {
            firstName: "Shannon",
            lastName: "Nguyen",
            phone: "(998) 695-1689",
            email: "arcu.Curabitur.ut@Curae;Donec.net",
            street: "957-6278 Pede. Road",
            city: "erat",
            state: "AK",
            zip: "64486"
        },
        {
            firstName: "Silas",
            lastName: "Pate",
            phone: "(376) 235-6524",
            email: "lectus.ante@sedsapienNunc.ca",
            street: "P.O. Box 929, 8134 Phasellus Av.",
            city: "aliquet",
            state: "HI",
            zip: "33271"
        },
        {
            firstName: "Shaine",
            lastName: "Mullins",
            phone: "(814) 528-1833",
            email: "Lorem.ipsum@mauris.net",
            street: "Ap #133-8301 Ut, Avenue",
            city: "luctus",
            state: "FL",
            zip: "21849"
        },
        {
            firstName: "Anastasia",
            lastName: "Gill",
            phone: "(594) 147-8651",
            email: "nec.ante.Maecenas@Aliquamornarelibero.com",
            street: "P.O. Box 508, 2957 Tristique Street",
            city: "quis,",
            state: "NV",
            zip: "42137"
        },
        {
            firstName: "Alice",
            lastName: "Herrera",
            phone: "(153) 558-2447",
            email: "est.tempor@montesnasceturridiculus.net",
            street: "636 Mi Street",
            city: "egestas",
            state: "OH",
            zip: "62494"
        },
        {
            firstName: "Simone",
            lastName: "Mclean",
            phone: "(526) 161-6430",
            email: "luctus.ipsum.leo@auctorquis.co.uk",
            street: "4595 Sem St.",
            city: "odio.",
            state: "MI",
            zip: "38863"
        },
        {
            firstName: "Reuben",
            lastName: "Boone",
            phone: "(245) 505-1225",
            email: "ullamcorper.nisl@Nuncquis.co.uk",
            street: "P.O. Box 987, 3876 Lectus Rd.",
            city: "turpis",
            state: "OR",
            zip: "74060"
        },
        {
            firstName: "Jackson",
            lastName: "Hoover",
            phone: "(268) 718-3205",
            email: "bibendum.fermentum.metus@egestasurnajusto.org",
            street: "8615 Nunc Street",
            city: "Donec",
            state: "UT",
            zip: "35176"
        },
        {
            firstName: "Rigel",
            lastName: "Small",
            phone: "(220) 807-9902",
            email: "non@et.org",
            street: "P.O. Box 838, 619 Molestie St.",
            city: "vestibulum",
            state: "VT",
            zip: "44952"
        }
    ]

    // tweak the data
    app.customers.forEach(function(customer){
        var city = customer.city;
        city = city[0].toUpperCase()+city.substr(1);
        city = city.replace(/\W.*/, " City");
        customer.city = (city.length > 2) ? city : city+"ville";

        // could use regex. shoot me
        var email=customer.email;
        var whereAt = email.indexOf('@');
        email =
            (customer.firstName + '.' + customer.lastName)
            .toLocaleLowerCase() +
            email.substr(whereAt);
        customer.email = email;

        // I think we'll actually use name, not firstName/lastName
        customer.name = customer.firstName+' '+customer.lastName;
    })

}));