USE [Zza]

/*** Drop Order Tables Script Date: Wed Jun 05 2013 17:37:16 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[OrderItemOption]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[OrderItemOption] DROP CONSTRAINT [FK_OrderItemOption_ProductOption]
ALTER TABLE [dbo].[OrderItemOption] DROP CONSTRAINT [FK_OrderItemOption_OrderItem]
DROP TABLE [dbo].[OrderItemOption]
END
GO

IF OBJECT_ID('[dbo].[OrderItem]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_ProductSize]
ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_Product]
ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [FK_OrderItem_Order]
DROP TABLE [dbo].[OrderItem]
END
GO

IF OBJECT_ID('[dbo].[Order]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Customer]
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_OrderStatus]
DROP TABLE [dbo].[Order]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

PRINT '
*** Customer Table Generation ***'

/*** Table [dbo].[Customer] Script Date: Wed Jun 05 2013 17:37:16 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[Customer]', 'U') IS NOT NULL
DROP TABLE [dbo].[Customer]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
[Id] [uniqueidentifier] NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[FirstName] [nvarchar](50) NULL,
[LastName] [nvarchar](50) NULL,
[Phone] [nvarchar](100) NULL,
[Email] [nvarchar](255) NULL,
[Street] [nvarchar](100) NULL,
[City] [nvarchar](100) NULL,
[State] [nvarchar](2) NULL,
[Zip] [nvarchar](10) NULL,
CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('8a02b191-919c-45bb-bc2c-013f16ea86b0','Derek','Puckett','(954) 594-9355','derek.puckett@vulputate.net','P.O. Box 914, 9990 Dapibus St.','Quam','OH','55154');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('17333526-36db-433b-b09b-013f16ea86b2','Bernard','Russell','(203) 652-0465','bernard.russell@torquentper.com','324-6843 Dolor Ave','Quis','FL','28034');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('50080571-4a2f-4570-88b8-013f16ea86b3','Jordan','Jimenez','(265) 520-8354','jordan.jimenez@variusorciin.co.uk','Ap #370-9242 Sed, Ave','Lorem','OR','88091');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f2950aba-9840-4999-a8a8-013f16ea86b4','Jordan','Holloway','(761) 224-2078','jordan.holloway@felisullamcorper.edu','Ap #128-7062 Viverra. Road','Penatibus','PA','82092');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d93d2586-7db9-462d-9f2b-013f16ea86b5','Dorian','Hurley','(691) 714-1449','dorian.hurley@ipsumprimis.org','3100 Nunc St.','Nam','IL','57878');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('6cd9b5f0-dc8f-40e4-ab12-013f16ea86b6','Regan','Wright','(126) 144-1855','regan.wright@ullamcorpernislarcu.edu','Ap #701-4141 Ante. Rd.','Dictum','KS','82560');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('1ef75ae4-ccb5-4092-929d-013f16ea86b7','Hedda','Kemp','(147) 741-1696','hedda.kemp@nunc.ca','P.O. Box 880, 3605 Nec, Ave','Dolor City','MS','56403');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('2d8c9e1a-63e5-418d-9cd3-013f16ea86b8','Jordan','Kelly','(859) 624-7317','jordan.kelly@lorem.org','P.O. Box 866, 3666 Phasellus Rd.','Rutrum','MN','69800');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('eec08a8f-6cf6-4a9d-a451-013f16ea86b9','Cheryl','Massey','(601) 563-9471','cheryl.massey@dictumplacerat.edu','Ap #171-7323 Mattis Av.','Erat','OK','02283');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('8c489fee-0374-4505-b6f0-013f16ea86ba','Erich','Barron','(880) 947-3420','erich.barron@Loremipsumdolor.net','Ap #442-177 Volutpat Avenue','Egestas City','CT','42871');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('a2f2d713-fecd-45a6-ae47-013f16ea86bb','Brianna','Allen','(298) 393-0372','brianna.allen@InfaucibusMorbi.com','P.O. Box 902, 5276 Semper St.','Rhoncus City','ME','86063');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('88a1f584-e426-4675-82cb-013f16ea86bc','Chastity','Robbins','(437) 367-6613','chastity.robbins@Donecnonjusto.net','2295 Elit. Avenue','Non','TN','02263');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f401912a-a303-4a5d-bdae-013f16ea86bd','Wallace','Bates','(574) 847-4231','wallace.bates@sem.org','712-6613 Orci Ave','Nulla City','MS','05332');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('7c951925-2a57-418f-bc19-013f16ea86be','Molly','Frank','(310) 705-4577','molly.frank@Inlorem.edu','2277 Donec Rd.','Mollis','KY','75839');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('52be3226-d74e-4000-a2c9-013f16ea86bf','Demetrius','Langley','(657) 854-8183','demetrius.langley@Nam.edu','4814 Nunc. St.','Nec','AK','39498');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('30b111ab-12dd-4a6b-8dc4-013f16ea86c0','Reese','Stephens','(134) 602-2513','reese.stephens@quam.ca','580-9933 Ornare St.','Fusce','MT','68017');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b53178ed-52a2-40e9-b810-013f16ea86c1','Shelley','Weber','(692) 253-4895','shelley.weber@Fusce.org','Ap #156-4219 Et, Av.','Proin','IA','66768');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c82ed2c6-a36f-4eef-9cfb-013f16ea86c2','Jennifer','Leblanc','(814) 120-4683','jennifer.leblanc@Fuscefermentumfermentum.ca','779-8730 Auctor. Av.','Libero','IA','79546');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('dd5b6b2d-92f6-407f-af8a-013f16ea86c3','Idona','West','(220) 623-6795','idona.west@metusIn.org','P.O. Box 734, 7881 Posuere St.','Utville','MT','93058');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0d8b1412-077b-421b-81f2-013f16ea86c4','Melyssa','Weaver','(881) 844-1111','melyssa.weaver@libero.edu','P.O. Box 930, 2346 Turpis. Rd.','Massa City','LA','09104');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('56ff46a9-f72d-47c6-88dd-013f16ea86c5','Althea','Patrick','(485) 679-0902','althea.patrick@vitaesemper.edu','Ap #750-567 Ac St.','Eget','NV','56076');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6','John','Russell','(496) 953-8629','john.russell@loremauctor.net','1918 Etiam Avenue','Auctor','IL','39599');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d53c040b-8ff8-410a-9ea4-013f16ea86c7','Dylan','Mitchell','(500) 479-9175','dylan.mitchell@aliquetPhasellus.org','P.O. Box 773, 4409 Sit Rd.','Nec','VT','17367');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('66e17f8d-f90b-4d64-806f-013f16ea86c8','Georgia','Webster','(480) 427-2180','georgia.webster@utcursusluctus.edu','Ap #298-6821 Ut, Avenue','Risus City','MO','45872');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('1ffbeda9-54fc-488d-b4d5-013f16ea86c9','Lee','Burris','(399) 321-0539','lee.burris@vel.com','P.O. Box 876, 8449 Nostra, Rd.','Lorem City','WY','93880');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('8a28c0f0-d7f8-4efa-9ede-013f16ea86ca','Cameron','Head','(233) 266-3616','cameron.head@anuncIn.com','1306 Proin St.','Sollicitudin','ID','89918');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('9456282d-b724-4949-95a2-013f16ea86cb','Oliver','Dale','(114) 445-0087','oliver.dale@tinciduntvehicula.com','308-1383 Non Street','Ornare','KY','30821');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('60fadc84-f61d-44ac-9c28-013f16ea86cc','Naida','Whitney','(470) 815-3162','naida.whitney@mollisvitaeposuere.co.uk','P.O. Box 399, 6339 Nisi Road','Adipiscing City','LA','10892');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('1c30084c-78c4-49dd-8f93-013f16ea86cd','Wing','Miller','(333) 414-9465','wing.miller@sodalespurus.net','P.O. Box 483, 8826 Vel Rd.','Fermentum','CT','68647');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('38358741-ad60-44d0-b378-013f16ea86ce','Vernon','Hammond','(417) 758-1428','vernon.hammond@eleifendvitae.org','3274 Nec, Rd.','Netus','MS','74761');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b4c93a41-7bef-410e-9d7e-013f16ea86cf','Carla','Hall','(157) 325-7072','carla.hall@eu.co.uk','P.O. Box 311, 7310 Quis Ave','Diam','CT','40026');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('66db0674-210d-465b-8676-013f16ea86d0','Castor','Hartman','(129) 841-3220','castor.hartman@nisinibh.co.uk','Ap #588-5375 Suspendisse Street','At City','KY','94906');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('edbfab4f-c7e4-47ff-bf8a-013f16ea86d1','Lewis','Clemons','(163) 948-1803','lewis.clemons@miloremvehicula.com','Ap #524-5510 Aliquam St.','Ipsum','TN','97887');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('1ac43be2-54fc-4722-9b50-013f16ea86d2','Jolene','Holland','(950) 445-1642','jolene.holland@Utnecurna.co.uk','6650 Enim. Av.','Tristique','HI','18696');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('2cf3e96e-1307-4730-bb91-013f16ea86d3','Kasimir','Oneill','(296) 709-1618','kasimir.oneill@malesuadaaugueut.com','769-925 Vulputate, Street','Orci City','TN','82341');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c9aeab28-4aee-4845-9ab0-013f16ea86d4','Aileen','Alvarez','(829) 590-4166','aileen.alvarez@In.edu','812-4435 Aliquet. Ave','Lectus','MD','86721');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('53c3baee-6e53-4671-bbb0-013f16ea86d5','Taylor','Delaney','(274) 223-1647','taylor.delaney@facilisisnon.com','9403 Nullam Av.','Justo City','VA','48216');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('9834e69c-6563-4bb2-943f-013f16ea86d6','Jillian','Farmer','(574) 315-4571','jillian.farmer@ligulaAliquam.edu','Ap #749-5159 Sem Rd.','Malesuada City','KS','97719');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('7ca41be1-c44f-4590-a692-013f16ea86d7','Germane','Noel','(283) 615-2609','germane.noel@utpellentesque.org','1410 Blandit St.','Commodo','AZ','23691');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('2b5419bf-1443-4570-8067-013f16ea86d8','Rigel','Tran','(540) 387-4490','rigel.tran@lectusrutrumurna.org','2608 Egestas. Avenue','Ipsum City','MS','47373');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('17a9eee5-2354-40f2-a279-013f16ea86d9','Fredericka','Sweet','(223) 636-5019','fredericka.sweet@posuerevulputate.edu','P.O. Box 811, 2885 Et, Road','Sed City','WA','50088');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('df3dccae-8bb6-428f-91b1-013f16ea86da','Jameson','Dale','(764) 227-7789','jameson.dale@Nam.net','P.O. Box 467, 8040 Diam St.','Bibendum','MA','73582');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e709c816-f7aa-405b-b93b-013f16ea86db','Jared','Gallagher','(529) 932-7105','jared.gallagher@placerataugue.co.uk','3544 Ut, Rd.','Curabitur','HI','71517');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('76a30ed2-1468-4c06-95d9-013f16ea86dc','Helen','Harper','(378) 568-8959','helen.harper@penatibus.ca','Ap #805-4319 Arcu Rd.','Metus City','MO','84235');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('66e7d945-c19e-472e-8ccb-013f16ea86dd','Althea','Rosario','(925) 871-6501','althea.rosario@et.net','P.O. Box 616, 6012 In Av.','Sem','WY','75609');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f4a21e9d-cee7-4adf-8f68-013f16ea86de','Courtney','Bray','(713) 390-4565','courtney.bray@Nuncsed.ca','519-4610 Nonummy. Av.','Ullamcorper City','MO','29699');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b5c24c3f-0028-4e06-bd1b-013f16ea86df','Kitra','Crawford','(123) 442-5981','kitra.crawford@justo.ca','Ap #294-6210 Integer St.','Dolor','HI','15675');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('1effd1d9-5e90-4f67-94b2-013f16ea86e0','Marsden','Freeman','(775) 110-3692','marsden.freeman@utmiDuis.com','146-9891 Sit Ave','Aenean','OK','81759');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d815ca51-5883-409f-991a-013f16ea86e1','Deanna','Cash','(398) 800-8468','deanna.cash@sagittis.org','P.O. Box 144, 564 Hendrerit Avenue','Nulla','MT','49214');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c1fbd2bb-d656-41a3-b197-013f16ea86e2','Cheryl','Harvey','(643) 524-5182','cheryl.harvey@imperdietornareIn.co.uk','2987 Arcu. Av.','Amet','MA','01803');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('444fa3a4-a2c5-4a18-8920-013f16ea86e3','Alexis','Kirkland','(641) 976-2223','alexis.kirkland@rutrumeu.edu','P.O. Box 560, 4261 Pede Rd.','Amet','UT','94584');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('194b2770-1215-4fbb-a137-013f16ea86e4','Tana','Spence','(942) 240-7629','tana.spence@arcuCurabitur.net','715-6134 Ac St.','Pharetra City','OH','11469');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0092a7cf-d4d1-40ef-8bca-013f16ea86e5','Vielka','Lyons','(890) 104-1814','vielka.lyons@risusInmi.ca','Ap #939-3921 Tempus Ave','Enim City','FL','37684');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0ffa1ce7-6bab-4c7d-9e4d-013f16ea86e6','Macey','Quinn','(946) 156-4745','macey.quinn@massarutrummagna.org','P.O. Box 130, 5971 Montes, Rd.','Non City','OR','16074');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('02e84edd-8bd9-4bfc-aa7f-013f16ea86e7','Jeremy','Henson','(348) 943-5910','jeremy.henson@ametlorem.org','P.O. Box 129, 5651 Augue, Rd.','Donec','IN','87595');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('529766f8-40a1-4384-aefe-013f16ea86e8','Avram','Hamilton','(938) 823-1723','avram.hamilton@acipsumPhasellus.co.uk','181-761 Libero St.','Curabitur','AZ','95454');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('300f5222-d80f-448d-ad0c-013f16ea86e9','Wanda','Mccoy','(889) 761-0883','wanda.mccoy@in.co.uk','3903 Sollicitudin Avenue','Adipiscing','VT','77331');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('4b7fefe5-f303-472c-ab08-013f16ea86ea','Riley','Savage','(136) 924-6445','riley.savage@vitaeorciPhasellus.net','Ap #538-9663 Enim Avenue','Dictum','OH','52785');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('c1bd258b-3bca-4016-a759-013f16ea86eb','Shelby','Mills','(490) 193-4579','shelby.mills@convallisligulaDonec.edu','P.O. Box 377, 8310 Id Road','Fusce','WI','09577');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('0521e7b5-7660-4272-95a0-013f16ea86ec','Beck','Morrison','(445) 454-7004','beck.morrison@orciluctus.co.uk','P.O. Box 777, 6014 Ridiculus Street','At City','NV','38096');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('877c2ea2-aa27-4f2c-af6e-013f16ea86ed','Reed','Albert','(324) 969-3404','reed.albert@nuncrisus.net','P.O. Box 637, 8360 Nam St.','Inville','AK','60569');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('9989886e-9e81-49c9-93e5-013f16ea86ee','Daphne','Hooper','(956) 442-3863','daphne.hooper@Inat.edu','P.O. Box 198, 7996 Nunc St.','Fringilla City','TX','53410');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('50da0744-c4be-4789-988d-013f16ea86ef','Georgia','Haney','(429) 164-3030','georgia.haney@Donecelementum.org','Ap #802-583 Montes, Avenue','Laoreet','HI','83124');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('4204eda6-6c0a-430e-b732-013f16ea86f0','Brenna','Morrow','(859) 865-2065','brenna.morrow@Etiam.co.uk','2219 Cursus Rd.','Amet','CA','96527');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('fcc8aa52-ed4f-4aab-88e5-013f16ea86f1','Reuben','Patrick','(945) 533-1951','reuben.patrick@quis.com','4997 Quam, Rd.','Tincidunt City','GA','37692');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('1beaa986-0480-4edf-83c5-013f16ea86f2','Vladimir','Pratt','(166) 510-8527','vladimir.pratt@felis.ca','Ap #549-3144 Lobortis Rd.','Nulla','VA','82051');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('ee189f0a-d565-44f0-b339-013f16ea86f3','Echo','Larsen','(921) 573-6588','echo.larsen@interdum.com','Ap #560-469 Non Rd.','Nec','IL','35131');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('91c49c62-e750-47c3-afb2-013f16ea86f4','Emmanuel','Nguyen','(629) 876-2320','emmanuel.nguyen@odio.edu','Ap #879-7971 Nec, Street','Placerat City','TN','61074');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('170d08c3-94ef-4e77-a261-013f16ea86f5','Chandler','Barrett','(282) 169-7830','chandler.barrett@famesac.edu','301-1867 Quis Street','Nec','AL','54062');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('768f2de6-f4b7-471c-91e6-013f16ea86f6','Kyle','Rodgers','(376) 583-5528','kyle.rodgers@uterat.com','Ap #791-9237 Convallis Ave','Interdum','LA','74380');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('6af2ef7f-c95c-4e30-adb4-013f16ea86f7','Kermit','Hamilton','(880) 539-7849','kermit.hamilton@sem.com','608 Nisi Rd.','Volutpat City','LA','26569');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('cc9a8db5-c80e-41fc-8ed2-013f16ea86f8','Halee','Phillips','(575) 380-6774','halee.phillips@dis.co.uk','955-4287 Consectetuer Rd.','Mauris City','OR','25882');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f65afde1-2fdf-48ad-bcbf-013f16ea86f9','Rogan','Davidson','(929) 558-5253','rogan.davidson@enim.edu','Ap #544-2072 Et Street','Neque City','FL','32111');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('3a0300d9-9606-4569-a3e8-013f16ea86fa','Grady','Abbott','(432) 388-1417','grady.abbott@acturpis.net','2749 Metus Avenue','Suspendisse','WA','37668');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('5c8da1e2-88ab-476f-94c2-013f16ea86fb','Shad','Rocha','(281) 514-3068','shad.rocha@duiFusce.net','404-6753 Facilisis Ave','Aville','KS','01567');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('2ba7aa86-66d2-4946-9715-013f16ea86fc','Hanna','Lawson','(653) 705-1457','hanna.lawson@Aliquam.ca','364-6175 Tincidunt Street','Pharetra','VA','80436');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('9cca07f4-74c4-47ce-a272-013f16ea86fd','Elliott','Rhodes','(283) 653-0786','elliott.rhodes@lectus.co.uk','230-7699 Scelerisque Rd.','Phasellus','GA','29773');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f7bebab8-c767-4979-bab2-013f16ea86fe','Iona','Baker','(168) 424-7326','iona.baker@ataugueid.org','171 Vitae St.','Cursus City','IA','23120');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f8ec5ae3-3844-452b-bb79-013f16ea86ff','Sloane','Knox','(585) 279-3277','sloane.knox@nislsem.edu','8391 Imperdiet, Rd.','Tincidunt City','OH','97338');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('e0e1eb58-2c0c-4849-9626-013f16ea8700','Kadeem','Hawkins','(709) 650-4546','kadeem.hawkins@consectetuer.net','Ap #111-5843 Massa. Ave','Auctor','TX','43177');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('71bf25ac-4b80-4469-ae39-013f16ea8701','Alisa','Farmer','(272) 138-1745','alisa.farmer@semmagnanec.org','P.O. Box 292, 1209 Quis St.','Penatibus','FL','11929');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('407194d9-15b2-4b75-9268-013f16ea8702','Marcia','French','(270) 574-3828','marcia.french@imperdietornare.org','Ap #110-902 Ornare Av.','Id City','HI','17800');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('6339190a-56dc-44cd-bfbe-013f16ea8703','Richard','Pennington','(494) 542-9811','richard.pennington@posuerecubiliaCurae;.co.uk','8682 Dignissim St.','Sagittis City','MA','86664');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('3ac7c387-7012-4c33-be30-013f16ea8704','Ori','Pickett','(341) 395-7156','ori.pickett@justo.ca','6924 Eleifend Av.','Tellus','KY','43609');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('746f6ad4-f332-43f5-904b-013f16ea8705','Gary','Lott','(708) 211-0792','gary.lott@elitAliquam.co.uk','379-6043 Ut Rd.','Magna','TX','93764');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('b9b39c6b-e93f-4596-86bf-013f16ea8706','Raven','Wells','(950) 862-9798','raven.wells@nonmagna.com','5849 Mauris St.','Diam','AK','29567');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('aedcca6a-4f04-4f61-8d00-013f16ea8707','Charlotte','Becker','(510) 118-7374','charlotte.becker@quamCurabitur.co.uk','P.O. Box 235, 8495 Risus. Avenue','Quam','WA','37294');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('43d4f9e3-99da-40ed-b682-013f16ea8708','Alexa','Butler','(552) 554-3280','alexa.butler@facilisiseget.co.uk','7239 Et, Road','Tempor','TX','00883');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('77b01908-6c68-4ad9-b8af-013f16ea8709','Pascale','Fowler','(487) 913-4567','pascale.fowler@pedenec.org','3192 Laoreet Rd.','Integer','IA','10919');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('52d51e1f-f945-4e9f-8533-013f16ea870a','Sandra','Kirk','(618) 597-6222','sandra.kirk@cursusvestibulumMauris.ca','Ap #910-8612 Quisque Avenue','Utville','MD','74665');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('fd7fbda4-a765-448e-836b-013f16ea870b','Kay','Kirk','(116) 965-7370','kay.kirk@Class.com','P.O. Box 286, 5025 Donec Rd.','Interdum','LA','57214');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('98e62a0f-8502-4c02-acdf-013f16ea870c','Shannon','Nguyen','(998) 695-1689','shannon.nguyen@Curae;Donec.net','957-6278 Pede. Road','Erat','AK','64486');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('31a5cc70-223a-45c9-8c99-013f16ea870d','Silas','Pate','(376) 235-6524','silas.pate@sedsapienNunc.ca','P.O. Box 929, 8134 Phasellus Av.','Aliquet','HI','33271');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('873a988f-9691-4a26-9a7f-013f16ea870e','Shaine','Mullins','(814) 528-1833','shaine.mullins@mauris.net','Ap #133-8301 Ut, Avenue','Luctus','FL','21849');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('f283762c-53c5-45b8-af2e-013f16ea870f','Anastasia','Gill','(594) 147-8651','anastasia.gill@Aliquamornarelibero.com','P.O. Box 508, 2957 Tristique Street','Quis City','NV','42137');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('d92660d7-37af-4e44-8851-013f16ea8710','Alice','Herrera','(153) 558-2447','alice.herrera@montesnasceturridiculus.net','636 Mi Street','Egestas','OH','62494');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('5d31ec29-280b-41fd-a713-013f16ea8711','Simone','Mclean','(526) 161-6430','simone.mclean@auctorquis.co.uk','4595 Sem St.','Odio City','MI','38863');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('944e40ae-3d87-4c94-9058-013f16ea8712','Reuben','Boone','(245) 505-1225','reuben.boone@Nuncquis.co.uk','P.O. Box 987, 3876 Lectus Rd.','Turpis','OR','74060');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('82483c0d-4440-400f-874d-013f16ea8713','Jackson','Hoover','(268) 718-3205','jackson.hoover@egestasurnajusto.org','8615 Nunc Street','Donec','UT','35176');
INSERT INTO [dbo].[Customer]([Id],[FirstName],[LastName],[Phone],[Email],[Street],[City],[State],[Zip])VALUES('00c9fef0-0b48-4cc7-9058-013f16ea8714','Rigel','Small','(220) 807-9902','rigel.small@et.org','P.O. Box 838, 619 Molestie St.','Vestibulum','VT','44952');
PRINT
'*** Product Table Generation ***'

/*** Table [dbo].[Product] Script Date: Wed Jun 05 2013 17:37:16 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[Product]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [DF_Product_HasOptions]
DROP TABLE [dbo].[Product]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
[Id] [int] NOT NULL,
[Type] [nvarchar](20) NOT NULL,
[Name] [nvarchar](50) NOT NULL,
[Description] [nvarchar](255) NOT NULL,
[Image] [nvarchar](50) NULL,
[HasOptions] [bit] NOT NULL,
[IsVegetarian] [bit] NULL,
[WithTomatoSauce] [bit] NULL,
[Size] [nvarchar](10) NULL,
CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED
([Id] ASC)WITH
(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product] ADD CONSTRAINT [DF_Product_HasOptions]  DEFAULT ((1)) FOR [HasOptions]
GO

INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(1,'pizza','Plain Cheese','Your basic plain cheese pizza with no toppings.
Includes tomato sauce, mozzarella, oregano and a sprinkling of cheddar','plaincheese.jpg',0,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(2,'pizza','Make Your Own','Make your own
Includes tomato sauce, mozzarella, oregano and a sprinkling of cheddar','makeyourown.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(3,'pizza','Holy Smokes','Swiss, fontina, gorgonzola, mozzarella, roasted walnuts and fresh sage','holysmokes.jpg',1,1,0,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(4,'pizza','Taj Mahal','Chicken marinated in spicy Tandoori sauce, green pepper, red onion, cilantro and mozzarella','tajmahal.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(5,'pizza','Pestolante','Homemade pesto sauce, vine ripe tomatoes, feta, fresh basil, oregano and mozzarella','pestolante.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(6,'pizza','Italian Stallion','Italian sausage, roasted red peppers, caramelized onions, parmesan, tomato sauce and mozzarella','italianstallion.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(7,'pizza','Tom Terrific','Vine ripe tomatoes, garlic, fresh basil, mozzarella and cheddar','tomterrific.jpg',1,1,0,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(8,'pizza','No Cheese','Fresh mushrooms, caramelized onions, broccoli, vine ripe tomatoes, roasted red peppers, fresh basil, oregano and tomato sauce','nocheese.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(9,'pizza','Shanghai','Shredded pork marinated in a spicy hoisin style sauce, mozzarella, peanuts, green onions, jalapeÃ±os, carrots and fresh cilantro','shanghai.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(10,'pizza','Lisbon','Portuguese linguica, smoked bacon, pepperoncini, roasted red peppers, tomato sauce, mozzarella, and fresh cilantro','lisbon.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(11,'pizza','Jerusalem','Homemade hummus, vine ripe tomatoes, black olives, caramelized onions, feta, fresh basil, pepperoncini and mozzarella','jerusalem.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(12,'pizza','Greco Irish','Homemade pesto sauce, roasted potatoes, caramelized onions, feta, fresh basil, oregano and mozzarella','grecoirish.jpg',1,1,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(13,'pizza','Amadeus','Italian sausage, pepperoni, fresh mushrooms, red onions, tomato sauce, mozzarella and cheddar','amadeus.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(14,'pizza','Mama Mia','Italian sausage, pepperoni, salami, beef meatball, tomato sauce, mozzarella and cheddar','mamamia.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(15,'pizza','Hula Pie','Hawaiian pineapple, Canadian bacon, Mandarin oranges, tomato sauce, mozzarella and cheddar','hulapie.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(16,'pizza','Little Venus','Spinach, artichoke hearts, sun-dried tomatoes, feta, garlic, fresh basil, oregano and mozzarella','littlevenus.jpg',1,0,0,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(17,'pizza','Garden Gallop','Fresh mushrooms, green peppers, red onions, artichoke hearts, broccoli, vine ripe tomatoes, fresh basil, tomato sauce, mozzarella and cheddar','gardengallop.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(18,'pizza','South of the Border','Grilled chicken, black beans and salsa, black olives, red onions, vine ripe tomatoes, jalapeÃ±os, fresh cilantro and cheddar','southoftheborder.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(19,'pizza','Asian Chicken','Chicken marinated in a spicy ginger peanut sauce, peanuts, green onions, Swiss, fontina, fresh cilantro and mozzarella','asianchicken.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(20,'pizza','Chicken Coolness','Chicken marinated in a tangy ranch sauce, broccoli, red onions, Swiss, fontina, gorgonzola, mozzarella and fresh sage','chickencoolness.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(21,'pizza','Pork BBQ','Shredded pork marinated in a sweet BBQ sauce, red onions, fresh cilantro, cheddar and mozzarella','porkbbq.jpg',1,0,1,NULL);
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(22,'salad','Caesar Salad','Crisp Romaine, parmesan and croutons','caesarsalad.jpg',1,0,0,'1,2');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(23,'salad','Chicken Caesar Salad','Traditional Caesar with your choice of grilled or BBQ chicken','chickencaesarsalad.jpg',1,0,0,'3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(24,'salad','Spinach Salad','Spinach, fresh mushrooms, caramelized onions, vine ripe tomatoes, artichoke hearts and candied walnuts.','spinachsalad.jpg',1,0,0,'1,2');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(25,'salad','Garden Salad','Red leaf lettuce, black olives, fresh mushrooms, green peppers, red onions, artichoke hearts, vine ripe tomatoes and mozzarella','gardensalad.jpg',1,0,0,'1,2');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(26,'salad','Greek Salad','Red leaf lettuce, red onions, feta, olives and pepperoncinis','greeksalad.jpg',1,0,0,'1,2');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(27,'salad','Chef Salad','Crisp Romaine, spiced ham, turkey, salami, gorgonzola, green onions, vine ripe tomatoes and roasted red peppers','chefsalad.jpg',1,0,0,'3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(28,'salad','Thai Chicken Salad','Crisp Romaine, green onions, Mandarin oranges, carrots, crispy noodles and chicken marinated in a spicy ginger peanut sauce','thaichickensalad.jpg',1,0,0,'3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(29,'salad','Farmer Salad','Crisp Romaine, smoked bacon, grilled chicken, vine ripe tomatoes and gorgonzola','farmersalad.jpg',1,0,0,'3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(30,'salad','Big Country Salad','Spinach, smoked bacon, feta, candied walnuts, caramelized onions and vine ripe tomatoes','bigcountrysalad.jpg',1,0,0,'3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(31,'beverage','Cola','Cola','cola.jpg',0,0,0,'1,2,3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(32,'beverage','Diet Cola','Diet Cola','dietcola.jpg',0,0,0,'1,2,3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(33,'beverage','Root Beer','Root Beer','rootbeer.jpg',0,0,0,'1,2,3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(34,'beverage','Cascade Fog','Cascade Fog','cascadefog.jpg',0,0,0,'1,2,3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(35,'beverage','Dr. Popper','Dr. Popper','dr.popper.jpg',0,0,0,'1,2,3');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(36,'beverage','Lemon Spruce','Lemon Spruce','lemonspruce.jpg',0,0,0,'1');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(37,'beverage','Green Tea','Green Tea','greentea.jpg',0,0,0,'4');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(38,'beverage','Orange Juice','Orange Juice','orangejuice.jpg',0,0,0,'5');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(39,'beverage','Apple Juice','Apple Juice','applejuice.jpg',0,0,0,'5');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(40,'beverage','Energade','Energade','energade.jpg',0,0,0,'6');
INSERT INTO [dbo].[Product]([Id],[Type],[Name],[Description],[Image],[HasOptions],[IsVegetarian],[WithTomatoSauce],[Size])VALUES(41,'beverage','Aqua H2O','Aqua H2O','aquah2o.jpg',0,0,0,'5');
PRINT '
*** ProductOption Table Generation ***'

/*** Table [dbo].[ProductOption] Script Date: Wed Jun 05 2013 17:37:16 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[ProductOption]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[ProductOption] DROP CONSTRAINT [DF_ProductOption_IsSaladOption]
ALTER TABLE [dbo].[ProductOption] DROP CONSTRAINT [DF_ProductOption_IsPizzaOption]
DROP TABLE [dbo].[ProductOption]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductOption](
[Id] [int] NOT NULL,
[Type] [nvarchar](20) NOT NULL,
[Name] [nvarchar](50) NOT NULL,
[Factor] [int] NOT NULL,
[IsPizzaOption] [bit] NOT NULL,
[IsSaladOption] [bit] NOT NULL,
CONSTRAINT [PK_ProductOption] PRIMARY KEY CLUSTERED
([Id] ASC)WITH
(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductOption] ADD CONSTRAINT [DF_ProductOption_IsPizzaOption]  DEFAULT ((1)) FOR [IsPizzaOption]
GO
ALTER TABLE [dbo].[ProductOption] ADD CONSTRAINT [DF_ProductOption_IsSaladOption]  DEFAULT ((1)) FOR [IsSaladOption]
GO

INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(1,'crust','Classic Crust',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(2,'crust','Wheat Crust',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(3,'crust','Gluten-free Crust',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(4,'sauce','Tomato',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(5,'sauce','Pesto*',2,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(6,'sauce','Salsa',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(7,'sauce','Texas BBQ',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(8,'sauce','Hummus',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(9,'sauce','Hoisin',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(10,'sauce','Ranch',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(11,'sauce','Vegemite',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(12,'sauce','Tandoori',1,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(13,'cheese','Feta',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(14,'cheese','Fontina & Swiss',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(15,'cheese','Soy',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(16,'cheese','Cheddar',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(17,'cheese','Ricotta',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(18,'cheese','Gorgonzola',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(19,'cheese','Mozzarella',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(20,'veggie','Black Olives',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(21,'veggie','Broccoli',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(22,'veggie','Jalapenos',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(23,'veggie','Fresh Mushrooms',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(24,'veggie','Red Onions',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(25,'veggie','Artichoke Heart',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(26,'veggie','Green Onions',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(27,'veggie','Spinach',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(28,'veggie','Sun-Dried Tomatoes',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(29,'veggie','Vine Ripe Tomatoes',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(30,'veggie','Green Peppers',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(31,'veggie','Roasted Red Peppers',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(32,'veggie','Roasted Potatoes',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(33,'veggie','Hawaiian Pineapple',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(34,'veggie','Mandarin Oranges',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(35,'veggie','Walnuts',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(36,'veggie','Candied Walnuts',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(37,'veggie','Peanuts',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(38,'veggie','Pepperoncini',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(39,'veggie','Caramelized Onions',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(40,'veggie','Carrots',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(41,'meat','Pepperoni',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(42,'meat','Italian Sausage',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(43,'meat','Salami',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(44,'meat','Smoked Bacon',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(45,'meat','Canadian Bacon',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(46,'meat','BBQ Chicken*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(47,'meat','Thai Chicken*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(48,'meat','Grilled Chicken*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(49,'meat','Beef Meatball',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(50,'meat','Shredded BBQ Pork*',2,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(51,'meat','Anchovies',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(52,'meat','Linguica',1,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(53,'spice','Basil',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(54,'spice','Cilantro',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(55,'spice','Garlic',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(56,'spice','Sage',0,1,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(57,'spice','Oregano',0,1,0);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(58,'saladDressing','No Dressing',0,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(59,'saladDressing','Vinaigrette',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(60,'saladDressing','Ranch',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(61,'saladDressing','Caesar',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(62,'saladDressing','Red Pepper Italian',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(63,'saladDressing','Bleu Cheese',1,0,1);
INSERT INTO [dbo].[ProductOption]([Id],[Type],[Name],[Factor] ,[IsPizzaOption],[IsSaladOption])VALUES(64,'saladDressing','Sesame Oriental',1,0,1);
PRINT '
*** ProductSize Table Generation ***'

/*** Table [dbo].[ProductSize] Script Date: Wed Jun 05 2013 17:37:16 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[ProductSize]', 'U') IS NOT NULL
BEGIN
ALTER TABLE [dbo].[ProductSize] DROP CONSTRAINT [DF_ProductSize_IsGlutenFree]
DROP TABLE [dbo].[ProductSize]
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductSize](
[Id] [int] NOT NULL,
[Type] [nvarchar](20) NOT NULL,
[Name] [nvarchar](50) NOT NULL,
[Price] [smallmoney] NOT NULL,
[PremiumPrice] [smallmoney] NULL,
[ToppingPrice] [smallmoney] NULL,
[IsGlutenFree] [bit] NULL,
CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductSize]
ADD CONSTRAINT [DF_ProductSize_IsGlutenFree] DEFAULT ((0)) FOR [IsGlutenFree]
GO

INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(1,'pizza','Personal 8"',6.15,7.65,0.65,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(2,'pizza','Medium 12"',12.4,16.95,1.35,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(3,'pizza','Large 14"',14.45,20.95,1.7,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(4,'pizza','X-Large 16"',16.5,23.45,2.05,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(5,'pizza','Huge 18"',17.95,26.95,2.25,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(6,'pizza','Gluten Free 12"',16.9,21.45,1.35,1);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(7,'salad','Side',3.95,NULL,0.65,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(8,'salad','Entree',7.95,NULL,1.3,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(9,'salad','Entree',8.95,NULL,1.3,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(10,'beverage','Can',1.5,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(11,'beverage','20 oz',1.95,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(12,'beverage','2 liter',2.75,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(13,'beverage','20 oz',1.75,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(14,'beverage','Serving',1.75,NULL,NULL,0);
INSERT INTO [dbo].[ProductSize]([Id],[Type],[Name],[Price] ,[PremiumPrice],[ToppingPrice],[IsGlutenFree])VALUES(15,'beverage','Serving',2,NULL,NULL,0);
PRINT '
*** OrderStatus Table Generation ***'

/*** Table [dbo].[OrderStatus] Script Date: Wed Jun 05 2013 17:37:16 GMT-0700 (Pacific Daylight Time) ***/
IF OBJECT_ID('[dbo].[OrderStatus]', 'U') IS NOT NULL
DROP TABLE [dbo].[OrderStatus]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderStatus](
[Id] [int] NOT NULL,
[Name] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(1,'Ordered');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(2,'PickedUp');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(3,'Delivered');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(4,'Cancelled');
INSERT INTO [dbo].[OrderStatus]([Id],[Name])VALUES(5,'Pending');
PRINT '
*** Order Tables Generation ***'

/*** Create Order Tables Script Date: Wed Jun 05 2013 17:37:16 GMT-0700 (Pacific Daylight Time) ***/
CREATE TABLE [dbo].[Order](
[Id] [bigint] IDENTITY(1,1) NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[CustomerId] [uniqueidentifier] NOT NULL,
[OrderStatusId] [int] NOT NULL,
[OrderDate] [datetime2](7) NOT NULL,
[Phone] [nvarchar](100) NULL,
[DeliveryDate] [datetime2](7) NOT NULL,
[DeliveryCharge] [smallmoney] NOT NULL,
[DeliveryStreet] [nvarchar](100) NULL,
[DeliveryCity] [nvarchar](100) NULL,
[DeliveryState] [nvarchar](2) NULL,
[DeliveryZip] [nvarchar](10) NULL,
[ItemsTotal] [smallmoney] NOT NULL,
CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO

CREATE TABLE [dbo].[OrderItem](
[Id] [bigint] IDENTITY(1,1) NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[OrderId] [bigint] NOT NULL,
[ProductId] [int] NOT NULL,
[ProductSizeId] [int] NOT NULL,
[Quantity] [int] NOT NULL,
[UnitPrice] [smallmoney] NOT NULL,
[TotalPrice] [smallmoney] NOT NULL,
[Instructions] [nvarchar](255) NULL,
CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_ProductSize] FOREIGN KEY([ProductSizeId])
REFERENCES [dbo].[ProductSize] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_ProductSize]
GO

CREATE TABLE [dbo].[OrderItemOption](
[Id] [bigint] IDENTITY(1,1) NOT NULL,
[StoreId] [uniqueidentifier] NULL,
[OrderItemId] [bigint] NOT NULL,
[ProductOptionId] [int] NOT NULL,
[Quantity] [int] NOT NULL,
[Price] [smallmoney] NOT NULL,
CONSTRAINT [PK_OrderItemOption] PRIMARY KEY CLUSTERED
([Id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderItemOption]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemOption_OrderItem] FOREIGN KEY([OrderItemId])
REFERENCES [dbo].[OrderItem] ([Id])
GO
ALTER TABLE [dbo].[OrderItemOption] CHECK CONSTRAINT [FK_OrderItemOption_OrderItem]
GO
ALTER TABLE [dbo].[OrderItemOption]  WITH CHECK ADD  CONSTRAINT [FK_OrderItemOption_ProductOption] FOREIGN KEY([ProductOptionId])
REFERENCES [dbo].[ProductOption] ([Id])
GO
ALTER TABLE [dbo].[OrderItemOption] CHECK CONSTRAINT [FK_OrderItemOption_ProductOption]
GO

SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(1,'8a02b191-919c-45bb-bc2c-013f16ea86b0',2,'2013-03-12T17:30:00.000Z','(954) 594-9355','2013-03-12T18:07:00.000Z',0,NULL,NULL,NULL,NULL,35.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1,1,3,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1,1,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(2,1,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(3,1,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(4,1,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(2,1,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(5,2,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(3,1,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(2,'8a02b191-919c-45bb-bc2c-013f16ea86b0',2,'2013-04-15T01:50:00.000Z','(954) 594-9355','2013-04-15T02:34:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(4,2,4,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(6,4,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(7,4,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(8,4,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(9,4,44,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(3,'8a02b191-919c-45bb-bc2c-013f16ea86b0',2,'2013-05-05T23:30:00.000Z','(954) 594-9355','2013-05-06T00:03:00.000Z',0,NULL,NULL,NULL,NULL,74.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(5,3,5,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(10,5,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(11,5,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(12,5,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(6,3,23,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(13,6,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(7,3,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(4,'8a02b191-919c-45bb-bc2c-013f16ea86b0',3,'2013-05-25T20:10:00.000Z','(954) 594-9355','2013-05-25T20:52:00.000Z',2,'P.O. Box 914, 9990 Dapibus St.','Quam','OH','55154',28.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(8,4,6,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(9,4,24,7,1,3.95,4.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(14,9,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(15,9,61,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(10,4,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(5,'17333526-36db-433b-b09b-013f16ea86b2',2,'2013-05-17T22:05:00.000Z','(203) 652-0465','2013-05-17T22:39:00.000Z',0,NULL,NULL,NULL,NULL,35.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(11,5,2,2,1,12.4,16.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(16,11,20,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(17,11,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(18,11,21,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(19,11,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(12,5,25,8,2,7.95,15.9,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(20,12,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(13,5,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(6,'50080571-4a2f-4570-88b8-013f16ea86b3',2,'2013-03-06T01:00:00.000Z','(265) 520-8354','2013-03-06T01:41:00.000Z',0,NULL,NULL,NULL,NULL,89.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(14,6,2,5,2,17.95,62.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(21,14,45,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(22,14,22,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(23,14,46,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(24,14,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(25,14,23,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(15,6,7,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(26,15,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(27,15,24,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(28,15,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(16,6,35,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(17,6,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(7,'50080571-4a2f-4570-88b8-013f16ea86b3',3,'2013-03-06T02:20:00.000Z','(265) 520-8354','2013-03-06T02:52:00.000Z',2,'Ap #370-9242 Sed, Ave','Lorem','OR','88091',46.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(18,7,8,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(29,18,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(30,18,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(31,18,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(32,18,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(19,7,9,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(33,19,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(34,19,25,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(35,19,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(20,7,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(21,7,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(8,'50080571-4a2f-4570-88b8-013f16ea86b3',2,'2013-03-14T20:30:00.000Z','(265) 520-8354','2013-03-14T21:03:00.000Z',0,NULL,NULL,NULL,NULL,97.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(22,8,10,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(36,22,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(37,22,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(38,22,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(39,22,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(40,22,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(23,8,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(24,8,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(25,8,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(26,8,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(27,8,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(9,'50080571-4a2f-4570-88b8-013f16ea86b3',4,'2013-03-23T21:05:00.000Z','(265) 520-8354','2013-03-23T21:35:00.000Z',0,NULL,NULL,NULL,NULL,27.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(28,9,11,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(41,28,52,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(42,28,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(29,9,26,7,1,3.95,5.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(43,29,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(44,29,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(45,29,28,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(46,29,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(30,9,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(10,'50080571-4a2f-4570-88b8-013f16ea86b3',2,'2013-03-25T20:45:00.000Z','(265) 520-8354','2013-03-25T21:24:00.000Z',0,NULL,NULL,NULL,NULL,73.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(31,10,12,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(47,31,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(48,31,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(49,31,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(50,31,42,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(32,10,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(33,10,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(34,10,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(11,'50080571-4a2f-4570-88b8-013f16ea86b3',2,'2013-05-03T17:05:00.000Z','(265) 520-8354','2013-05-03T17:45:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(35,11,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(51,35,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(12,'50080571-4a2f-4570-88b8-013f16ea86b3',2,'2013-05-12T16:45:00.000Z','(265) 520-8354','2013-05-12T17:27:00.000Z',0,NULL,NULL,NULL,NULL,43.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(36,12,13,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(52,36,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(53,36,43,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(54,36,18,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(37,12,28,9,1,8.95,8.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(55,37,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(38,12,34,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(13,'50080571-4a2f-4570-88b8-013f16ea86b3',3,'2013-05-12T22:00:00.000Z','(265) 520-8354','2013-05-12T22:36:00.000Z',2,'Ap #370-9242 Sed, Ave','Lorem','OR','88091',45.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(39,13,2,3,2,14.45,45.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(56,39,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(57,39,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(58,39,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(59,39,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(60,39,30,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(14,'f2950aba-9840-4999-a8a8-013f16ea86b4',2,'2013-04-10T16:30:00.000Z','(761) 224-2078','2013-04-10T17:07:00.000Z',0,NULL,NULL,NULL,NULL,9.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(40,14,2,1,1,6.15,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(61,40,31,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(62,40,32,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(63,40,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(64,40,33,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(65,40,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(66,40,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(15,'f2950aba-9840-4999-a8a8-013f16ea86b4',2,'2013-05-02T02:20:00.000Z','(761) 224-2078','2013-05-02T03:01:00.000Z',0,NULL,NULL,NULL,NULL,85.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(41,15,14,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(67,41,46,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(42,15,15,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(43,15,16,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(68,43,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(69,43,34,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(44,15,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(45,15,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(46,15,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(16,'d93d2586-7db9-462d-9f2b-013f16ea86b5',3,'2013-03-03T18:50:00.000Z','(691) 714-1449','2013-03-03T19:31:00.000Z',2,'3100 Nunc St.','Nam','IL','57878',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(47,16,17,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(70,47,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(71,47,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(17,'d93d2586-7db9-462d-9f2b-013f16ea86b5',3,'2013-03-20T19:20:00.000Z','(691) 714-1449','2013-03-20T19:57:00.000Z',2,'3100 Nunc St.','Nam','IL','57878',46.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(48,17,18,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(72,48,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(73,48,16,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(49,17,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(74,49,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(75,49,35,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(50,17,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(51,17,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(18,'d93d2586-7db9-462d-9f2b-013f16ea86b5',2,'2013-03-21T02:15:00.000Z','(691) 714-1449','2013-03-21T02:53:00.000Z',0,NULL,NULL,NULL,NULL,30.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(52,18,2,4,1,16.5,18.55,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(76,52,36,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(53,18,29,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(77,53,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(78,53,37,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(54,18,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(19,'d93d2586-7db9-462d-9f2b-013f16ea86b5',3,'2013-04-14T17:45:00.000Z','(691) 714-1449','2013-04-14T18:20:00.000Z',2,'3100 Nunc St.','Nam','IL','57878',82.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(55,19,2,2,1,12.4,16.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(79,55,38,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(80,55,39,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(81,55,40,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(56,19,20,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(82,56,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(83,56,20,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(57,19,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(58,19,31,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(20,'d93d2586-7db9-462d-9f2b-013f16ea86b5',2,'2013-04-25T17:10:00.000Z','(691) 714-1449','2013-04-25T17:48:00.000Z',0,NULL,NULL,NULL,NULL,83.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(59,20,21,2,2,16.95,50.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(84,59,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(85,59,21,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(86,59,50,2,5.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(87,59,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(60,20,3,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(88,60,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(89,60,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(61,20,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(62,20,33,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(21,'d93d2586-7db9-462d-9f2b-013f16ea86b5',2,'2013-05-04T01:15:00.000Z','(691) 714-1449','2013-05-04T01:59:00.000Z',0,NULL,NULL,NULL,NULL,39.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(63,21,4,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(90,63,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(91,63,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(92,63,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(64,21,30,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(93,64,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(94,64,61,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(95,64,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(65,21,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(22,'d93d2586-7db9-462d-9f2b-013f16ea86b5',2,'2013-05-15T00:30:00.000Z','(691) 714-1449','2013-05-15T01:16:00.000Z',0,NULL,NULL,NULL,NULL,14.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(66,22,5,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(96,66,24,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(97,66,25,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(67,22,22,7,1,3.95,4.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(98,67,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(99,67,63,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(100,67,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(68,22,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(23,'d93d2586-7db9-462d-9f2b-013f16ea86b5',2,'2013-05-25T17:10:00.000Z','(691) 714-1449','2013-05-25T17:42:00.000Z',0,NULL,NULL,NULL,NULL,43.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(69,23,6,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(101,69,26,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(102,69,27,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(103,69,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(70,23,7,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(71,23,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(72,23,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(24,'6cd9b5f0-dc8f-40e4-ab12-013f16ea86b6',3,'2013-05-12T16:15:00.000Z','(126) 144-1855','2013-05-12T17:03:00.000Z',2,'Ap #701-4141 Ante. Rd.','Dictum','KS','82560',65.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(73,24,8,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(104,73,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(105,73,52,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(74,24,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(106,74,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(75,24,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(25,'6cd9b5f0-dc8f-40e4-ab12-013f16ea86b6',2,'2013-05-17T16:45:00.000Z','(126) 144-1855','2013-05-17T17:19:00.000Z',0,NULL,NULL,NULL,NULL,71.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(76,25,1,5,1,17.95,17.95,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(77,25,2,5,2,17.95,49.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(107,77,41,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(108,77,42,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(109,77,43,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(78,25,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(79,25,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(26,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-03-05T22:20:00.000Z','(147) 741-1696','2013-03-05T22:57:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(80,26,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(110,80,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(27,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-03-20T20:10:00.000Z','(147) 741-1696','2013-03-20T20:44:00.000Z',0,NULL,NULL,NULL,NULL,60.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(81,27,9,4,2,23.45,51,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(111,81,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(112,81,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(82,27,25,7,2,3.95,7.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(113,82,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(114,82,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(83,27,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(28,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-04-10T21:35:00.000Z','(147) 741-1696','2013-04-10T22:11:00.000Z',0,NULL,NULL,NULL,NULL,67.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(84,28,10,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(85,28,1,1,2,6.15,12.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(86,28,11,2,1,16.95,23.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(115,86,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(116,86,45,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(117,86,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(118,86,29,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(87,28,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(88,28,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(89,28,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(29,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-04-25T21:30:00.000Z','(147) 741-1696','2013-04-25T22:16:00.000Z',0,NULL,NULL,NULL,NULL,122.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(90,29,12,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(119,90,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(120,90,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(121,90,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(91,29,13,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(122,91,48,2,8.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(123,91,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(92,29,14,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(124,92,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(125,92,15,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(93,29,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(94,29,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(95,29,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(30,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-04-26T00:15:00.000Z','(147) 741-1696','2013-04-26T01:00:00.000Z',0,NULL,NULL,NULL,NULL,26.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(96,30,15,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(126,96,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(127,96,51,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(97,30,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(128,97,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(98,30,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(31,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-05-02T01:15:00.000Z','(147) 741-1696','2013-05-02T01:49:00.000Z',0,NULL,NULL,NULL,NULL,12.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(99,31,27,9,1,8.95,12.85,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(129,99,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(130,99,16,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(131,99,17,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(132,99,18,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(133,99,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(32,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-05-03T23:00:00.000Z','(147) 741-1696','2013-05-03T23:43:00.000Z',0,NULL,NULL,NULL,NULL,17.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(100,32,28,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(134,100,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(135,100,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(33,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-05-14T17:00:00.000Z','(147) 741-1696','2013-05-14T17:37:00.000Z',0,NULL,NULL,NULL,NULL,92.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(101,33,2,5,2,17.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(136,101,5,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(137,101,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(138,101,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(139,101,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(102,33,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(103,33,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(104,33,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(34,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-05-15T02:30:00.000Z','(147) 741-1696','2013-05-15T03:16:00.000Z',0,NULL,NULL,NULL,NULL,40.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(105,34,16,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(140,105,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(141,105,42,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(106,34,17,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(142,106,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(143,106,30,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(107,34,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(108,34,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(35,'1ef75ae4-ccb5-4092-929d-013f16ea86b7',2,'2013-05-17T20:05:00.000Z','(147) 741-1696','2013-05-17T20:39:00.000Z',0,NULL,NULL,NULL,NULL,44);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(109,35,18,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(110,35,19,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(144,110,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(145,110,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(146,110,14,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(147,110,45,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(111,35,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(112,35,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(36,'2d8c9e1a-63e5-418d-9cd3-013f16ea86b8',2,'2013-03-04T01:40:00.000Z','(859) 624-7317','2013-03-04T02:15:00.000Z',0,NULL,NULL,NULL,NULL,39.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(113,36,2,5,1,17.95,29.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(148,113,46,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(149,113,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(150,113,31,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(151,113,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(114,36,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(152,114,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(153,114,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(115,36,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(37,'2d8c9e1a-63e5-418d-9cd3-013f16ea86b8',2,'2013-03-13T02:40:00.000Z','(859) 624-7317','2013-03-13T03:19:00.000Z',0,NULL,NULL,NULL,NULL,17.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(116,37,2,3,1,14.45,17.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(154,116,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(155,116,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(38,'2d8c9e1a-63e5-418d-9cd3-013f16ea86b8',2,'2013-04-06T01:15:00.000Z','(859) 624-7317','2013-04-06T01:54:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(117,38,20,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(39,'2d8c9e1a-63e5-418d-9cd3-013f16ea86b8',2,'2013-04-21T02:05:00.000Z','(859) 624-7317','2013-04-21T02:45:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(118,39,21,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(156,118,32,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(157,118,33,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(158,118,34,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(40,'2d8c9e1a-63e5-418d-9cd3-013f16ea86b8',2,'2013-04-24T02:05:00.000Z','(859) 624-7317','2013-04-24T02:41:00.000Z',0,NULL,NULL,NULL,NULL,25.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(119,40,3,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(159,119,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(160,119,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(161,119,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(162,119,49,2,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(120,40,30,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(163,120,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(164,120,35,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(165,120,17,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(121,40,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(41,'2d8c9e1a-63e5-418d-9cd3-013f16ea86b8',2,'2013-05-25T21:05:00.000Z','(859) 624-7317','2013-05-25T21:46:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(122,41,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(166,122,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(42,'eec08a8f-6cf6-4a9d-a451-013f16ea86b9',2,'2013-03-03T17:20:00.000Z','(601) 563-9471','2013-03-03T18:02:00.000Z',0,NULL,NULL,NULL,NULL,63.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(123,42,4,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(167,123,50,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(168,123,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(169,123,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(124,42,5,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(170,124,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(171,124,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(172,124,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(125,42,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(126,42,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(43,'eec08a8f-6cf6-4a9d-a451-013f16ea86b9',3,'2013-03-17T16:15:00.000Z','(601) 563-9471','2013-03-17T16:55:00.000Z',2,'Ap #171-7323 Mattis Av.','Erat','OK','02283',39.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(127,43,2,3,2,14.45,39.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(173,127,37,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(174,127,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(175,127,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(176,127,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(44,'eec08a8f-6cf6-4a9d-a451-013f16ea86b9',2,'2013-03-20T23:35:00.000Z','(601) 563-9471','2013-03-21T00:15:00.000Z',0,NULL,NULL,NULL,NULL,48);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(128,44,6,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(129,44,7,4,1,23.45,27.55,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(177,129,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(178,129,43,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(130,44,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(131,44,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(45,'eec08a8f-6cf6-4a9d-a451-013f16ea86b9',2,'2013-03-25T22:30:00.000Z','(601) 563-9471','2013-03-25T23:02:00.000Z',0,NULL,NULL,NULL,NULL,67.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(132,45,2,1,2,6.15,18.8,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(179,132,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(180,132,14,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(181,132,38,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(182,132,44,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(183,132,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(133,45,8,3,2,20.95,45.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(184,133,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(185,133,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(134,45,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(135,45,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(46,'eec08a8f-6cf6-4a9d-a451-013f16ea86b9',2,'2013-04-17T20:40:00.000Z','(601) 563-9471','2013-04-17T21:23:00.000Z',0,NULL,NULL,NULL,NULL,31.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(136,46,9,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(186,136,16,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(187,136,39,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(137,46,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(188,137,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(189,137,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(138,46,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(47,'eec08a8f-6cf6-4a9d-a451-013f16ea86b9',2,'2013-05-03T16:05:00.000Z','(601) 563-9471','2013-05-03T16:44:00.000Z',0,NULL,NULL,NULL,NULL,46);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(139,47,10,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(190,139,17,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(140,47,11,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(141,47,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(142,47,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(48,'eec08a8f-6cf6-4a9d-a451-013f16ea86b9',2,'2013-05-04T02:20:00.000Z','(601) 563-9471','2013-05-04T02:58:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(143,48,12,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(191,143,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(192,143,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(193,143,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(194,143,19,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(49,'8c489fee-0374-4505-b6f0-013f16ea86ba',2,'2013-03-04T03:50:00.000Z','(880) 947-3420','2013-03-04T04:33:00.000Z',0,NULL,NULL,NULL,NULL,76.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(144,49,13,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(145,49,14,5,1,26.95,31.45,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(195,145,20,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(196,145,21,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(146,49,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(147,49,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(50,'8c489fee-0374-4505-b6f0-013f16ea86ba',2,'2013-03-12T22:45:00.000Z','(880) 947-3420','2013-03-12T23:28:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(148,50,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(197,148,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(51,'8c489fee-0374-4505-b6f0-013f16ea86ba',3,'2013-03-17T21:05:00.000Z','(880) 947-3420','2013-03-17T21:46:00.000Z',2,'Ap #442-177 Volutpat Avenue','Egestas City','CT','42871',60.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(149,51,15,3,1,20.95,34.55,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(198,149,46,2,6.8);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(199,149,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(200,149,48,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(150,51,16,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(201,150,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(202,150,13,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(151,51,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(152,51,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(52,'a2f2d713-fecd-45a6-ae47-013f16ea86bb',2,'2013-04-13T02:45:00.000Z','(298) 393-0372','2013-04-13T03:21:00.000Z',0,NULL,NULL,NULL,NULL,48.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(153,52,17,1,1,7.65,10.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(203,153,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(204,153,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(205,153,50,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(206,153,51,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(207,153,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(154,52,18,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(208,154,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(209,154,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(210,154,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(211,154,42,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(155,52,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(156,52,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(53,'a2f2d713-fecd-45a6-ae47-013f16ea86bb',3,'2013-05-01T19:15:00.000Z','(298) 393-0372','2013-05-01T19:55:00.000Z',2,'P.O. Box 902, 5276 Semper St.','Rhoncus City','ME','86063',56.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(157,53,2,4,1,16.5,26.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(212,157,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(213,157,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(214,157,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(215,157,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(216,157,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(217,157,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(158,53,2,4,1,16.5,24.7,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(218,158,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(219,158,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(220,158,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(221,158,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(159,53,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(160,53,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(54,'a2f2d713-fecd-45a6-ae47-013f16ea86bb',3,'2013-05-05T16:10:00.000Z','(298) 393-0372','2013-05-05T16:49:00.000Z',2,'P.O. Box 902, 5276 Semper St.','Rhoncus City','ME','86063',6.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(161,54,1,1,1,6.15,6.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(55,'a2f2d713-fecd-45a6-ae47-013f16ea86bb',2,'2013-05-14T22:50:00.000Z','(298) 393-0372','2013-05-14T23:29:00.000Z',0,NULL,NULL,NULL,NULL,32.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(162,55,19,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(163,55,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(222,163,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(223,163,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(164,55,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(56,'88a1f584-e426-4675-82cb-013f16ea86bc',2,'2013-03-12T21:05:00.000Z','(437) 367-6613','2013-03-12T21:45:00.000Z',0,NULL,NULL,NULL,NULL,20.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(165,56,2,5,1,17.95,20.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(224,165,24,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(57,'88a1f584-e426-4675-82cb-013f16ea86bc',2,'2013-04-01T17:20:00.000Z','(437) 367-6613','2013-04-01T17:57:00.000Z',0,NULL,NULL,NULL,NULL,35.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(166,57,2,2,1,12.4,21.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(225,166,25,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(226,166,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(227,166,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(228,166,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(229,166,26,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(230,166,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(167,57,26,8,1,7.95,11.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(231,167,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(232,167,27,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(233,167,18,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(234,167,28,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(235,167,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(168,57,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(58,'88a1f584-e426-4675-82cb-013f16ea86bc',2,'2013-05-20T20:30:00.000Z','(437) 367-6613','2013-05-20T21:09:00.000Z',0,NULL,NULL,NULL,NULL,62.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(169,58,20,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(236,169,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(237,169,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(238,169,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(239,169,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(170,58,21,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(240,170,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(241,170,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(242,170,19,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(171,58,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(172,58,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(59,'88a1f584-e426-4675-82cb-013f16ea86bc',2,'2013-05-23T22:20:00.000Z','(437) 367-6613','2013-05-23T22:59:00.000Z',0,NULL,NULL,NULL,NULL,24.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(173,59,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(243,173,31,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(244,173,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(174,59,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(245,174,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(175,59,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(60,'f401912a-a303-4a5d-bdae-013f16ea86bd',2,'2013-03-13T02:45:00.000Z','(574) 847-4231','2013-03-13T03:31:00.000Z',0,NULL,NULL,NULL,NULL,38.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(176,60,3,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(246,176,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(247,176,32,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(248,176,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(177,60,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(249,177,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(250,177,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(178,60,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(61,'f401912a-a303-4a5d-bdae-013f16ea86bd',2,'2013-03-17T22:15:00.000Z','(574) 847-4231','2013-03-17T23:00:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(179,61,4,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(251,179,14,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(252,179,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(253,179,33,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(254,179,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(62,'f401912a-a303-4a5d-bdae-013f16ea86bd',2,'2013-04-17T23:45:00.000Z','(574) 847-4231','2013-04-18T00:22:00.000Z',0,NULL,NULL,NULL,NULL,26.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(180,62,5,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(181,62,6,1,2,7.65,15.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(182,62,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(183,62,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(63,'f401912a-a303-4a5d-bdae-013f16ea86bd',3,'2013-05-12T23:00:00.000Z','(574) 847-4231','2013-05-12T23:40:00.000Z',2,'712-6613 Orci Ave','Nulla City','MS','05332',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(184,63,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(255,184,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(64,'f401912a-a303-4a5d-bdae-013f16ea86bd',2,'2013-05-17T19:40:00.000Z','(574) 847-4231','2013-05-17T20:18:00.000Z',0,NULL,NULL,NULL,NULL,22.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(185,64,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(256,185,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(257,185,34,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(258,185,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(259,185,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(65,'7c951925-2a57-418f-bc19-013f16ea86be',2,'2013-03-05T20:05:00.000Z','(310) 705-4577','2013-03-05T20:49:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(186,65,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(260,186,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(261,186,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(66,'7c951925-2a57-418f-bc19-013f16ea86be',2,'2013-03-12T19:20:00.000Z','(310) 705-4577','2013-03-12T20:05:00.000Z',0,NULL,NULL,NULL,NULL,38.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(187,66,2,2,2,12.4,32.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(262,187,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(263,187,35,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(264,187,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(188,66,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(265,188,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(189,66,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(67,'7c951925-2a57-418f-bc19-013f16ea86be',2,'2013-03-17T23:05:00.000Z','(310) 705-4577','2013-03-17T23:45:00.000Z',0,NULL,NULL,NULL,NULL,41.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(190,67,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(191,67,7,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(192,67,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(193,67,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(68,'7c951925-2a57-418f-bc19-013f16ea86be',3,'2013-03-23T22:00:00.000Z','(310) 705-4577','2013-03-23T22:41:00.000Z',2,'2277 Donec Rd.','Mollis','KY','75839',24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(194,68,8,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(266,194,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(267,194,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(268,194,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(69,'7c951925-2a57-418f-bc19-013f16ea86be',2,'2013-03-23T23:15:00.000Z','(310) 705-4577','2013-03-23T23:55:00.000Z',0,NULL,NULL,NULL,NULL,14.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(195,69,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(70,'7c951925-2a57-418f-bc19-013f16ea86be',2,'2013-03-25T23:30:00.000Z','(310) 705-4577','2013-03-26T00:04:00.000Z',0,NULL,NULL,NULL,NULL,68.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(196,70,9,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(269,196,44,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(270,196,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(197,70,10,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(271,197,6,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(272,197,18,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(198,70,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(199,70,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(71,'7c951925-2a57-418f-bc19-013f16ea86be',2,'2013-05-12T22:35:00.000Z','(310) 705-4577','2013-05-12T23:12:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(200,71,11,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(273,200,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(274,200,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(72,'52be3226-d74e-4000-a2c9-013f16ea86bf',2,'2013-03-01T23:10:00.000Z','(657) 854-8183','2013-03-01T23:44:00.000Z',0,NULL,NULL,NULL,NULL,48.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(201,72,12,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(275,201,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(276,201,46,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(277,201,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(202,72,23,9,1,8.95,13.3,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(278,202,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(279,202,62,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(280,202,37,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(281,202,47,1,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(203,72,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(73,'52be3226-d74e-4000-a2c9-013f16ea86bf',2,'2013-03-13T01:50:00.000Z','(657) 854-8183','2013-03-13T02:26:00.000Z',0,NULL,NULL,NULL,NULL,69.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(204,73,13,2,1,16.95,23.7,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(282,204,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(283,204,38,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(284,204,39,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(205,73,14,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(285,205,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(286,205,14,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(206,73,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(287,206,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(288,206,20,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(207,73,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(208,73,34,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(209,73,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(74,'52be3226-d74e-4000-a2c9-013f16ea86bf',2,'2013-04-02T00:40:00.000Z','(657) 854-8183','2013-04-02T01:23:00.000Z',0,NULL,NULL,NULL,NULL,48.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(210,74,16,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(289,210,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(290,210,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(211,74,17,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(212,74,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(213,74,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(75,'52be3226-d74e-4000-a2c9-013f16ea86bf',2,'2013-05-05T19:35:00.000Z','(657) 854-8183','2013-05-05T20:20:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(214,75,18,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(76,'52be3226-d74e-4000-a2c9-013f16ea86bf',2,'2013-05-15T00:00:00.000Z','(657) 854-8183','2013-05-15T00:33:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(215,76,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(291,215,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(292,215,21,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(77,'52be3226-d74e-4000-a2c9-013f16ea86bf',2,'2013-05-23T19:30:00.000Z','(657) 854-8183','2013-05-23T20:14:00.000Z',0,NULL,NULL,NULL,NULL,116.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(216,77,20,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(293,216,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(294,216,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(217,77,21,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(295,217,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(296,217,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(297,217,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(218,77,3,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(298,218,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(299,218,22,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(300,218,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(301,218,23,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(302,218,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(219,77,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(220,77,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(221,77,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(78,'30b111ab-12dd-4a6b-8dc4-013f16ea86c0',2,'2013-04-03T16:20:00.000Z','(134) 602-2513','2013-04-03T16:54:00.000Z',0,NULL,NULL,NULL,NULL,30.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(222,78,4,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(303,222,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(304,222,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(305,222,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(223,78,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(306,223,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(224,78,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(79,'30b111ab-12dd-4a6b-8dc4-013f16ea86c0',2,'2013-04-05T21:35:00.000Z','(134) 602-2513','2013-04-05T22:09:00.000Z',0,NULL,NULL,NULL,NULL,29.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(225,79,2,1,1,6.15,6.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(307,225,26,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(308,225,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(226,79,1,5,1,17.95,17.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(227,79,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(228,79,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(80,'30b111ab-12dd-4a6b-8dc4-013f16ea86c0',2,'2013-04-26T01:40:00.000Z','(134) 602-2513','2013-04-26T02:17:00.000Z',0,NULL,NULL,NULL,NULL,29.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(229,80,2,3,1,14.45,17.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(309,229,27,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(310,229,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(311,229,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(230,80,5,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(312,230,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(313,230,44,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(231,80,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(232,80,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(81,'30b111ab-12dd-4a6b-8dc4-013f16ea86c0',3,'2013-05-02T01:20:00.000Z','(134) 602-2513','2013-05-02T02:07:00.000Z',2,'580-9933 Ornare St.','Fusce','MT','68017',3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(233,81,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(314,233,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(82,'30b111ab-12dd-4a6b-8dc4-013f16ea86c0',2,'2013-05-26T00:10:00.000Z','(134) 602-2513','2013-05-26T00:46:00.000Z',0,NULL,NULL,NULL,NULL,58.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(234,82,6,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(315,234,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(316,234,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(317,234,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(235,82,26,8,1,7.95,7.95,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(318,235,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(236,82,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(83,'b53178ed-52a2-40e9-b810-013f16ea86c1',2,'2013-03-15T01:10:00.000Z','(692) 253-4895','2013-03-15T01:53:00.000Z',0,NULL,NULL,NULL,NULL,61.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(237,83,7,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(319,237,18,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(320,237,46,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(321,237,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(322,237,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(238,83,8,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(323,238,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(324,238,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(239,83,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(240,83,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(84,'b53178ed-52a2-40e9-b810-013f16ea86c1',2,'2013-03-20T19:10:00.000Z','(692) 253-4895','2013-03-20T19:52:00.000Z',0,NULL,NULL,NULL,NULL,54.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(241,84,9,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(242,84,2,2,2,12.4,27.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(325,242,30,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(243,84,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(244,84,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(85,'b53178ed-52a2-40e9-b810-013f16ea86c1',3,'2013-05-13T01:45:00.000Z','(692) 253-4895','2013-05-13T02:24:00.000Z',2,'Ap #156-4219 Et, Av.','Proin','IA','66768',24.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(245,85,2,4,1,16.5,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(326,245,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(327,245,31,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(328,245,32,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(329,245,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(86,'c82ed2c6-a36f-4eef-9cfb-013f16ea86c2',2,'2013-03-10T16:30:00.000Z','(814) 120-4683','2013-03-10T17:16:00.000Z',0,NULL,NULL,NULL,NULL,49.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(246,86,10,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(330,246,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(331,246,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(332,246,15,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(247,86,27,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(333,247,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(334,247,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(248,86,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(87,'c82ed2c6-a36f-4eef-9cfb-013f16ea86c2',3,'2013-03-10T22:30:00.000Z','(814) 120-4683','2013-03-10T23:08:00.000Z',2,'779-8730 Auctor. Av.','Libero','IA','79546',33.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(249,87,11,1,2,7.65,23.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(335,249,48,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(336,249,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(337,249,16,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(250,87,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(338,250,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(251,87,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(88,'c82ed2c6-a36f-4eef-9cfb-013f16ea86c2',2,'2013-04-24T01:35:00.000Z','(814) 120-4683','2013-04-24T02:15:00.000Z',0,NULL,NULL,NULL,NULL,52.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(252,88,12,3,2,20.95,52.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(339,252,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(340,252,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(341,252,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(89,'c82ed2c6-a36f-4eef-9cfb-013f16ea86c2',3,'2013-05-10T23:15:00.000Z','(814) 120-4683','2013-05-10T23:59:00.000Z',2,'779-8730 Auctor. Av.','Libero','IA','79546',31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(253,89,13,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(342,253,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(343,253,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(344,253,33,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(90,'c82ed2c6-a36f-4eef-9cfb-013f16ea86c2',2,'2013-05-13T02:45:00.000Z','(814) 120-4683','2013-05-13T03:27:00.000Z',0,NULL,NULL,NULL,NULL,76.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(254,90,14,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(345,254,7,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(346,254,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(347,254,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(255,90,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(348,255,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(349,255,13,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(256,90,16,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(257,90,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(258,90,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(259,90,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(91,'c82ed2c6-a36f-4eef-9cfb-013f16ea86c2',2,'2013-05-20T21:30:00.000Z','(814) 120-4683','2013-05-20T22:09:00.000Z',0,NULL,NULL,NULL,NULL,18.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(260,91,17,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(350,260,34,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(351,260,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(92,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',2,'2013-04-17T21:00:00.000Z','(220) 623-6795','2013-04-17T21:42:00.000Z',0,NULL,NULL,NULL,NULL,105.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(261,92,18,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(352,261,35,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(353,261,36,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(262,92,19,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(263,92,20,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(354,263,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(355,263,37,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(264,92,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(265,92,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(266,92,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(93,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',2,'2013-04-23T22:40:00.000Z','(220) 623-6795','2013-04-23T23:22:00.000Z',0,NULL,NULL,NULL,NULL,52.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(267,93,21,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(356,267,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(357,267,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(358,267,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(268,93,29,9,2,8.95,23.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(359,268,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(360,268,14,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(361,268,15,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(269,93,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(94,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',3,'2013-04-24T01:00:00.000Z','(220) 623-6795','2013-04-24T01:32:00.000Z',2,'P.O. Box 734, 7881 Posuere St.','Utville','MT','93058',27.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(270,94,3,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(271,94,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(362,271,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(272,94,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(95,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',2,'2013-05-05T17:35:00.000Z','(220) 623-6795','2013-05-05T18:09:00.000Z',0,NULL,NULL,NULL,NULL,97.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(273,95,4,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(363,273,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(364,273,38,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(365,273,39,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(366,273,16,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(274,95,5,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(367,274,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(368,274,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(369,274,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(275,95,6,4,1,23.45,35.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(370,275,8,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(371,275,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(372,275,46,2,8.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(373,275,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(276,95,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(277,95,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(278,95,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(96,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',3,'2013-05-05T19:35:00.000Z','(220) 623-6795','2013-05-05T20:17:00.000Z',2,'P.O. Box 734, 7881 Posuere St.','Utville','MT','93058',40.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(279,96,7,6,1,21.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(374,279,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(375,279,47,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(280,96,22,7,2,3.95,13.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(376,280,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(377,280,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(378,280,48,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(379,280,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(380,280,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(281,96,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(97,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',2,'2013-05-06T02:50:00.000Z','(220) 623-6795','2013-05-06T03:24:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(282,97,8,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(381,282,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(382,282,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(383,282,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(98,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',3,'2013-05-10T17:10:00.000Z','(220) 623-6795','2013-05-10T17:43:00.000Z',2,'P.O. Box 734, 7881 Posuere St.','Utville','MT','93058',27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(283,98,9,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(384,283,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(385,283,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(386,283,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(99,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',2,'2013-05-21T01:20:00.000Z','(220) 623-6795','2013-05-21T02:02:00.000Z',0,NULL,NULL,NULL,NULL,16.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(284,99,10,2,1,16.95,16.95,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(100,'dd5b6b2d-92f6-407f-af8a-013f16ea86c3',2,'2013-05-25T21:45:00.000Z','(220) 623-6795','2013-05-25T22:21:00.000Z',0,NULL,NULL,NULL,NULL,121.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(285,100,1,3,2,14.45,28.9,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(286,100,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(387,286,22,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(388,286,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(389,286,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(390,286,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(287,100,11,5,2,26.95,67.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(391,287,50,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(392,287,23,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(393,287,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(288,100,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(289,100,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(290,100,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(101,'0d8b1412-077b-421b-81f2-013f16ea86c4',2,'2013-03-04T01:50:00.000Z','(881) 844-1111','2013-03-04T02:30:00.000Z',0,NULL,NULL,NULL,NULL,75.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(291,101,12,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(394,291,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(395,291,25,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(396,291,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(292,101,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(397,292,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(398,292,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(399,292,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(400,292,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(401,292,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(293,101,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(294,101,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(102,'0d8b1412-077b-421b-81f2-013f16ea86c4',3,'2013-03-05T21:40:00.000Z','(881) 844-1111','2013-03-05T22:21:00.000Z',2,'P.O. Box 930, 2346 Turpis. Rd.','Massa City','LA','09104',40.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(295,102,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(402,295,13,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(403,295,52,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(296,102,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(404,296,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(405,296,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(297,102,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(298,102,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(103,'0d8b1412-077b-421b-81f2-013f16ea86c4',2,'2013-03-23T17:50:00.000Z','(881) 844-1111','2013-03-23T18:34:00.000Z',0,NULL,NULL,NULL,NULL,17.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(299,103,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(406,299,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(407,299,26,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(408,299,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(409,299,16,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(104,'0d8b1412-077b-421b-81f2-013f16ea86c4',2,'2013-04-01T23:20:00.000Z','(881) 844-1111','2013-04-01T23:59:00.000Z',0,NULL,NULL,NULL,NULL,64.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(300,104,13,2,1,16.95,18.3,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(410,300,42,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(301,104,14,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(411,301,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(412,301,17,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(302,104,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(303,104,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(105,'0d8b1412-077b-421b-81f2-013f16ea86c4',3,'2013-04-20T21:30:00.000Z','(881) 844-1111','2013-04-20T22:03:00.000Z',2,'P.O. Box 930, 2346 Turpis. Rd.','Massa City','LA','09104',25.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(304,105,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(413,304,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(414,304,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(305,105,23,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(415,305,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(416,305,18,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(417,305,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(306,105,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(106,'0d8b1412-077b-421b-81f2-013f16ea86c4',2,'2013-04-25T17:50:00.000Z','(881) 844-1111','2013-04-25T18:33:00.000Z',0,NULL,NULL,NULL,NULL,100.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(307,106,15,2,2,16.95,42,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(418,307,45,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(419,307,27,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(420,307,28,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(421,307,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(308,106,16,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(422,308,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(423,308,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(424,308,13,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(309,106,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(310,106,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(107,'0d8b1412-077b-421b-81f2-013f16ea86c4',2,'2013-05-03T16:05:00.000Z','(881) 844-1111','2013-05-03T16:44:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(311,107,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(425,311,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(108,'0d8b1412-077b-421b-81f2-013f16ea86c4',2,'2013-05-14T21:20:00.000Z','(881) 844-1111','2013-05-14T21:57:00.000Z',0,NULL,NULL,NULL,NULL,28.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(312,108,17,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(313,108,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(426,313,14,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(427,313,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(428,313,16,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(429,313,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(314,108,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(315,108,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(109,'0d8b1412-077b-421b-81f2-013f16ea86c4',3,'2013-05-26T01:15:00.000Z','(881) 844-1111','2013-05-26T01:51:00.000Z',2,'P.O. Box 930, 2346 Turpis. Rd.','Massa City','LA','09104',55.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(316,109,18,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(430,316,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(431,316,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(432,316,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(433,316,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(317,109,19,3,1,20.95,20.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(318,109,35,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(319,109,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(110,'56ff46a9-f72d-47c6-88dd-013f16ea86c5',3,'2013-03-14T19:30:00.000Z','(485) 679-0902','2013-03-14T20:09:00.000Z',2,'Ap #750-567 Ac St.','Eget','NV','56076',35.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(320,110,2,2,2,12.4,35.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(434,320,9,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(435,320,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(436,320,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(437,320,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(111,'56ff46a9-f72d-47c6-88dd-013f16ea86c5',2,'2013-03-17T20:30:00.000Z','(485) 679-0902','2013-03-17T21:14:00.000Z',0,NULL,NULL,NULL,NULL,10.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(321,111,2,1,1,6.15,10.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(438,321,10,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(439,321,31,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(440,321,48,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(112,'56ff46a9-f72d-47c6-88dd-013f16ea86c5',2,'2013-04-24T00:50:00.000Z','(485) 679-0902','2013-04-24T01:33:00.000Z',0,NULL,NULL,NULL,NULL,59.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(322,112,2,3,1,14.45,16.15,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(441,322,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(442,322,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(323,112,2,2,2,12.4,38.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(443,323,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(444,323,32,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(445,323,19,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(324,112,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(325,112,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(113,'56ff46a9-f72d-47c6-88dd-013f16ea86c5',2,'2013-05-03T21:30:00.000Z','(485) 679-0902','2013-05-03T22:10:00.000Z',0,NULL,NULL,NULL,NULL,29.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(326,113,20,5,1,26.95,29.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(446,326,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(447,326,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(114,'56ff46a9-f72d-47c6-88dd-013f16ea86c5',2,'2013-05-11T01:20:00.000Z','(485) 679-0902','2013-05-11T02:06:00.000Z',0,NULL,NULL,NULL,NULL,69.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(327,114,2,5,1,17.95,20.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(448,327,13,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(328,114,21,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(329,114,2,5,1,17.95,20.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(449,329,33,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(450,329,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(330,114,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(331,114,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(332,114,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(115,'56ff46a9-f72d-47c6-88dd-013f16ea86c5',3,'2013-05-13T00:15:00.000Z','(485) 679-0902','2013-05-13T00:58:00.000Z',2,'Ap #750-567 Ac St.','Eget','NV','56076',63.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(333,115,3,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(451,333,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(452,333,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(453,333,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(334,115,4,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(454,334,42,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(455,334,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(456,334,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(335,115,5,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(336,115,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(337,115,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(338,115,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(116,'56ff46a9-f72d-47c6-88dd-013f16ea86c5',2,'2013-05-26T02:45:00.000Z','(485) 679-0902','2013-05-26T03:26:00.000Z',0,NULL,NULL,NULL,NULL,34.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(339,116,2,5,1,17.95,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(457,339,43,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(458,339,15,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(459,339,16,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(460,339,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(340,116,25,8,1,7.95,7.95,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(461,340,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(341,116,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(117,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-03-02T03:15:00.000Z','(496) 953-8629','2013-03-02T03:57:00.000Z',0,NULL,NULL,NULL,NULL,30.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(342,117,6,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(343,117,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(462,343,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(463,343,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(344,117,35,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(118,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-03-05T18:00:00.000Z','(496) 953-8629','2013-03-05T18:41:00.000Z',0,NULL,NULL,NULL,NULL,49.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(345,118,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(346,118,2,1,2,6.15,17.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(464,346,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(465,346,44,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(466,346,18,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(467,346,34,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(347,118,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(348,118,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(349,118,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(350,118,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(119,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-03-06T02:40:00.000Z','(496) 953-8629','2013-03-06T03:21:00.000Z',0,NULL,NULL,NULL,NULL,122.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(351,119,7,5,2,26.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(352,119,8,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(353,119,9,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(468,353,45,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(469,353,35,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(470,353,46,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(471,353,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(354,119,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(355,119,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(356,119,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(120,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-03-23T20:30:00.000Z','(496) 953-8629','2013-03-23T21:17:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(357,120,27,9,1,8.95,8.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(472,357,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(121,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-04-11T02:35:00.000Z','(496) 953-8629','2013-04-11T03:15:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(358,121,10,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(473,358,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(474,358,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(122,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-04-20T19:30:00.000Z','(496) 953-8629','2013-04-20T20:09:00.000Z',0,NULL,NULL,NULL,NULL,70.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(359,122,11,3,2,20.95,58.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(475,359,11,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(476,359,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(477,359,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(478,359,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(479,359,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(360,122,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(480,360,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(361,122,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(123,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',3,'2013-04-23T20:10:00.000Z','(496) 953-8629','2013-04-23T20:50:00.000Z',2,'1918 Etiam Avenue','Auctor','IL','39599',51.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(362,123,12,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(363,123,13,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(364,123,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(365,123,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(124,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-05-03T22:05:00.000Z','(496) 953-8629','2013-05-03T22:40:00.000Z',0,NULL,NULL,NULL,NULL,31.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(366,124,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(367,124,29,9,1,8.95,14.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(481,367,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(482,367,50,2,5.2);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(368,124,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(125,'f6cc5ee8-c0e0-4e5f-bc44-013f16ea86c6',2,'2013-05-10T22:40:00.000Z','(496) 953-8629','2013-05-10T23:18:00.000Z',0,NULL,NULL,NULL,NULL,122.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(369,125,14,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(483,369,37,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(484,369,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(485,369,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(486,369,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(487,369,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(370,125,15,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(488,370,39,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(489,370,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(371,125,16,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(490,371,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(491,371,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(492,371,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(493,371,52,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(372,125,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(373,125,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(374,125,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(126,'d53c040b-8ff8-410a-9ea4-013f16ea86c7',2,'2013-05-20T19:50:00.000Z','(500) 479-9175','2013-05-20T20:37:00.000Z',0,NULL,NULL,NULL,NULL,42);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(375,126,17,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(494,375,40,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(495,375,20,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(496,375,21,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(497,375,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(127,'66e17f8d-f90b-4d64-806f-013f16ea86c8',2,'2013-03-04T03:15:00.000Z','(480) 427-2180','2013-03-04T03:48:00.000Z',0,NULL,NULL,NULL,NULL,36.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(376,127,18,1,1,7.65,8.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(498,376,17,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(377,127,2,5,1,17.95,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(499,377,18,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(500,377,19,2,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(378,127,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(379,127,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(128,'66e17f8d-f90b-4d64-806f-013f16ea86c8',2,'2013-03-15T02:40:00.000Z','(480) 427-2180','2013-03-15T03:21:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(380,128,19,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(129,'66e17f8d-f90b-4d64-806f-013f16ea86c8',2,'2013-04-17T20:35:00.000Z','(480) 427-2180','2013-04-17T21:15:00.000Z',0,NULL,NULL,NULL,NULL,17.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(381,129,2,1,1,6.15,6.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(501,381,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(502,381,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(382,129,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(503,382,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(504,382,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(383,129,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(130,'66e17f8d-f90b-4d64-806f-013f16ea86c8',3,'2013-05-05T20:50:00.000Z','(480) 427-2180','2013-05-05T21:30:00.000Z',2,'Ap #298-6821 Ut, Avenue','Risus City','MO','45872',18.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(384,130,20,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(505,384,12,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(506,384,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(507,384,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(385,130,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(508,385,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(386,130,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(131,'1ffbeda9-54fc-488d-b4d5-013f16ea86c9',3,'2013-04-01T19:00:00.000Z','(399) 321-0539','2013-04-01T19:31:00.000Z',2,'P.O. Box 876, 8449 Nostra, Rd.','Lorem City','WY','93880',33);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(387,131,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(132,'1ffbeda9-54fc-488d-b4d5-013f16ea86c9',2,'2013-04-10T16:15:00.000Z','(399) 321-0539','2013-04-10T16:49:00.000Z',0,NULL,NULL,NULL,NULL,72.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(388,132,2,1,2,6.15,16.2,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(509,388,42,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(510,388,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(511,388,22,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(512,388,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(389,132,21,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(513,389,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(514,389,23,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(515,389,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(390,132,3,2,1,16.95,23.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(516,390,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(517,390,45,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(518,390,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(519,390,24,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(520,390,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(391,132,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(392,132,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(393,132,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(133,'8a28c0f0-d7f8-4efa-9ede-013f16ea86ca',2,'2013-04-13T02:30:00.000Z','(233) 266-3616','2013-04-13T03:14:00.000Z',0,NULL,NULL,NULL,NULL,16.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(394,133,2,2,1,12.4,16.45,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(521,394,25,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(522,394,47,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(134,'8a28c0f0-d7f8-4efa-9ede-013f16ea86ca',2,'2013-05-18T01:30:00.000Z','(233) 266-3616','2013-05-18T02:08:00.000Z',0,NULL,NULL,NULL,NULL,51.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(395,134,4,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(523,395,15,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(396,134,5,2,1,16.95,23.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(524,396,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(525,396,48,2,5.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(397,134,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(398,134,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(135,'9456282d-b724-4949-95a2-013f16ea86cb',2,'2013-03-01T18:00:00.000Z','(114) 445-0087','2013-03-01T18:33:00.000Z',0,NULL,NULL,NULL,NULL,34.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(399,135,6,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(400,135,23,9,1,8.95,12,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(526,400,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(527,400,60,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(528,400,17,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(529,400,18,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(401,135,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(136,'9456282d-b724-4949-95a2-013f16ea86cb',3,'2013-04-12T23:45:00.000Z','(114) 445-0087','2013-04-13T00:32:00.000Z',2,'308-1383 Non Street','Ornare','KY','30821',65.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(402,136,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(530,402,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(531,402,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(532,402,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(533,402,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(403,136,2,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(534,403,4,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(404,136,7,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(535,404,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(536,404,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(537,404,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(405,136,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(406,136,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(407,136,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(137,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-03-01T17:40:00.000Z','(470) 815-3162','2013-03-01T18:23:00.000Z',0,NULL,NULL,NULL,NULL,37.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(408,137,8,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(538,408,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(539,408,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(540,408,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(541,408,19,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(409,137,24,7,2,3.95,7.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(542,409,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(410,137,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(138,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-03-01T23:35:00.000Z','(470) 815-3162','2013-03-02T00:18:00.000Z',0,NULL,NULL,NULL,NULL,5.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(411,138,25,7,1,3.95,5.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(543,411,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(544,411,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(545,411,44,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(139,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-04-03T19:30:00.000Z','(470) 815-3162','2013-04-03T20:09:00.000Z',0,NULL,NULL,NULL,NULL,61.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(412,139,9,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(546,412,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(547,412,46,2,6.8);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(413,139,10,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(548,413,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(549,413,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(550,413,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(414,139,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(415,139,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(140,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-04-20T23:50:00.000Z','(470) 815-3162','2013-04-21T00:27:00.000Z',0,NULL,NULL,NULL,NULL,34.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(416,140,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(551,416,49,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(417,140,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(418,140,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(419,140,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(141,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-05-01T22:45:00.000Z','(470) 815-3162','2013-05-01T23:26:00.000Z',0,NULL,NULL,NULL,NULL,115.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(420,141,11,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(552,420,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(553,420,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(421,141,12,3,2,20.95,52.1,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(554,421,5,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(555,421,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(556,421,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(422,141,13,4,1,23.45,27.55,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(557,422,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(558,422,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(559,422,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(423,141,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(424,141,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(425,141,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(142,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-05-04T01:35:00.000Z','(470) 815-3162','2013-05-04T02:08:00.000Z',0,NULL,NULL,NULL,NULL,8.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(426,142,26,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(560,426,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(561,426,64,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(562,426,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(143,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-05-05T16:05:00.000Z','(470) 815-3162','2013-05-05T16:45:00.000Z',0,NULL,NULL,NULL,NULL,47.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(427,143,14,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(563,427,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(564,427,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(565,427,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(566,427,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(567,427,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(428,143,1,1,2,6.15,12.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(429,143,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(430,143,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(144,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-05-10T22:35:00.000Z','(470) 815-3162','2013-05-10T23:18:00.000Z',0,NULL,NULL,NULL,NULL,33.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(431,144,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(568,431,6,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(569,431,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(570,431,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(571,431,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(432,144,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(572,432,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(433,144,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(145,'60fadc84-f61d-44ac-9c28-013f16ea86cc',3,'2013-05-14T19:35:00.000Z','(470) 815-3162','2013-05-14T20:15:00.000Z',2,'P.O. Box 399, 6339 Nisi Road','Adipiscing City','LA','10892',16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(434,145,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(146,'60fadc84-f61d-44ac-9c28-013f16ea86cc',2,'2013-05-14T22:45:00.000Z','(470) 815-3162','2013-05-14T23:21:00.000Z',0,NULL,NULL,NULL,NULL,51.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(435,146,15,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(573,435,29,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(574,435,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(436,146,16,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(575,436,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(576,436,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(437,146,40,15,2,2,4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(438,146,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(147,'1c30084c-78c4-49dd-8f93-013f16ea86cd',2,'2013-05-15T00:30:00.000Z','(333) 414-9465','2013-05-15T01:02:00.000Z',0,NULL,NULL,NULL,NULL,55.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(439,147,17,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(577,439,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(578,439,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(579,439,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(580,439,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(581,439,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(148,'38358741-ad60-44d0-b378-013f16ea86ce',2,'2013-03-03T22:50:00.000Z','(417) 758-1428','2013-03-03T23:28:00.000Z',0,NULL,NULL,NULL,NULL,39.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(440,148,1,2,2,12.4,24.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(441,148,28,9,1,8.95,12.85,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(582,441,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(583,441,16,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(584,441,32,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(585,441,33,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(442,148,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(149,'38358741-ad60-44d0-b378-013f16ea86ce',2,'2013-03-15T01:05:00.000Z','(417) 758-1428','2013-03-15T01:38:00.000Z',0,NULL,NULL,NULL,NULL,70);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(443,149,18,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(444,149,19,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(586,444,7,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(587,444,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(588,444,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(445,149,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(446,149,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(150,'38358741-ad60-44d0-b378-013f16ea86ce',3,'2013-04-15T00:35:00.000Z','(417) 758-1428','2013-04-15T01:08:00.000Z',2,'3274 Nec, Rd.','Netus','MS','74761',85.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(447,150,20,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(589,447,34,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(590,447,35,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(448,150,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(591,448,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(592,448,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(593,448,44,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(449,150,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(450,150,35,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(151,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-03-10T19:50:00.000Z','(157) 325-7072','2013-03-10T20:31:00.000Z',0,NULL,NULL,NULL,NULL,55.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(451,151,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(594,451,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(595,451,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(452,151,21,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(453,151,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(454,151,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(152,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-03-12T23:15:00.000Z','(157) 325-7072','2013-03-12T23:59:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(455,152,3,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(596,455,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(597,455,18,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(153,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-03-24T02:30:00.000Z','(157) 325-7072','2013-03-24T03:18:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(456,153,2,5,1,17.95,26.95,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(598,456,46,2,9);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(599,456,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(154,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',3,'2013-04-11T00:30:00.000Z','(157) 325-7072','2013-04-11T01:03:00.000Z',2,'P.O. Box 311, 7310 Quis Ave','Diam','CT','40026',11.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(457,154,29,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(600,457,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(601,457,19,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(155,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-05-05T17:00:00.000Z','(157) 325-7072','2013-05-05T17:39:00.000Z',0,NULL,NULL,NULL,NULL,27.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(458,155,4,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(459,155,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(602,459,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(603,459,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(460,155,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(156,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',3,'2013-05-10T21:00:00.000Z','(157) 325-7072','2013-05-10T21:43:00.000Z',2,'P.O. Box 311, 7310 Quis Ave','Diam','CT','40026',27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(461,156,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(604,461,37,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(462,156,5,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(463,156,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(464,156,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(157,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-05-10T22:50:00.000Z','(157) 325-7072','2013-05-10T23:24:00.000Z',0,NULL,NULL,NULL,NULL,27.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(465,157,1,5,1,17.95,17.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(466,157,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(605,466,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(467,157,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(158,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-05-17T17:20:00.000Z','(157) 325-7072','2013-05-17T17:55:00.000Z',0,NULL,NULL,NULL,NULL,28.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(468,158,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(469,158,23,9,1,8.95,14.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(606,469,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(607,469,47,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(608,469,48,1,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(470,158,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(159,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-05-25T16:15:00.000Z','(157) 325-7072','2013-05-25T16:56:00.000Z',0,NULL,NULL,NULL,NULL,17.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(471,159,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(609,471,49,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(610,471,50,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(160,'b4c93a41-7bef-410e-9d7e-013f16ea86cf',2,'2013-05-25T21:40:00.000Z','(157) 325-7072','2013-05-25T22:16:00.000Z',0,NULL,NULL,NULL,NULL,56.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(472,160,6,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(611,472,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(612,472,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(473,160,7,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(613,473,8,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(614,473,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(615,473,38,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(474,160,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(475,160,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(161,'66db0674-210d-465b-8676-013f16ea86d0',2,'2013-04-10T16:35:00.000Z','(129) 841-3220','2013-04-10T17:10:00.000Z',0,NULL,NULL,NULL,NULL,10.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(476,161,8,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(616,476,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(617,476,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(618,476,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(619,476,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(620,476,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(162,'66db0674-210d-465b-8676-013f16ea86d0',2,'2013-04-17T20:45:00.000Z','(129) 841-3220','2013-04-17T21:30:00.000Z',0,NULL,NULL,NULL,NULL,19.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(477,162,2,3,1,14.45,19.55,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(621,477,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(622,477,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(623,477,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(624,477,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(163,'66db0674-210d-465b-8676-013f16ea86d0',3,'2013-04-26T00:35:00.000Z','(129) 841-3220','2013-04-26T01:09:00.000Z',2,'Ap #588-5375 Suspendisse Street','At City','KY','94906',17.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(478,163,9,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(479,163,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(625,479,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(626,479,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(480,163,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(164,'66db0674-210d-465b-8676-013f16ea86d0',4,'2013-05-05T23:30:00.000Z','(129) 841-3220','2013-05-06T00:00:00.000Z',0,NULL,NULL,NULL,NULL,44.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(481,164,2,5,2,17.95,44.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(627,481,18,2,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(628,481,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(165,'66db0674-210d-465b-8676-013f16ea86d0',2,'2013-05-11T02:15:00.000Z','(129) 841-3220','2013-05-11T02:57:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(482,165,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(629,482,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(166,'66db0674-210d-465b-8676-013f16ea86d0',2,'2013-05-20T19:05:00.000Z','(129) 841-3220','2013-05-20T19:46:00.000Z',0,NULL,NULL,NULL,NULL,143.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(483,166,10,5,2,26.95,58.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(630,483,43,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(631,483,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(484,166,11,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(632,484,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(633,484,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(634,484,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(635,484,13,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(485,166,12,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(636,485,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(637,485,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(486,166,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(487,166,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(488,166,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(167,'66db0674-210d-465b-8676-013f16ea86d0',3,'2013-05-25T16:00:00.000Z','(129) 841-3220','2013-05-25T16:44:00.000Z',2,'Ap #588-5375 Suspendisse Street','At City','KY','94906',24.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(489,167,13,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(638,489,9,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(639,489,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(490,167,26,7,1,3.95,4.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(640,490,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(641,490,60,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(642,490,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(491,167,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(168,'edbfab4f-c7e4-47ff-bf8a-013f16ea86d1',2,'2013-05-20T20:30:00.000Z','(163) 948-1803','2013-05-20T21:11:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(492,168,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(643,492,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(644,492,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(169,'1ac43be2-54fc-4722-9b50-013f16ea86d2',2,'2013-03-05T22:40:00.000Z','(950) 445-1642','2013-03-05T23:22:00.000Z',0,NULL,NULL,NULL,NULL,28.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(493,169,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(645,493,10,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(646,493,39,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(647,493,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(648,493,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(649,493,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(650,493,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(170,'1ac43be2-54fc-4722-9b50-013f16ea86d2',3,'2013-04-01T22:35:00.000Z','(950) 445-1642','2013-04-01T23:17:00.000Z',2,'6650 Enim. Av.','Tristique','HI','18696',83.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(494,170,14,4,2,23.45,67.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(651,494,11,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(652,494,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(653,494,49,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(495,170,28,9,1,8.95,14.15,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(654,495,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(655,495,20,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(656,495,50,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(657,495,51,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(658,495,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(496,170,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(171,'1ac43be2-54fc-4722-9b50-013f16ea86d2',2,'2013-04-10T22:05:00.000Z','(950) 445-1642','2013-04-10T22:44:00.000Z',0,NULL,NULL,NULL,NULL,32.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(497,171,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(659,497,21,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(660,497,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(661,497,22,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(662,497,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(498,171,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(663,498,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(664,498,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(499,171,40,15,2,2,4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(172,'1ac43be2-54fc-4722-9b50-013f16ea86d2',2,'2013-04-17T19:10:00.000Z','(950) 445-1642','2013-04-17T19:43:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(500,172,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(665,500,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(666,500,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(667,500,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(173,'1ac43be2-54fc-4722-9b50-013f16ea86d2',3,'2013-04-23T23:40:00.000Z','(950) 445-1642','2013-04-24T00:22:00.000Z',2,'6650 Enim. Av.','Tristique','HI','18696',50.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(501,173,16,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(502,173,17,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(668,502,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(669,502,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(670,502,19,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(503,173,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(504,173,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(174,'1ac43be2-54fc-4722-9b50-013f16ea86d2',3,'2013-05-01T21:00:00.000Z','(950) 445-1642','2013-05-01T21:43:00.000Z',2,'6650 Enim. Av.','Tristique','HI','18696',83.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(505,174,18,5,1,26.95,29.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(671,505,23,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(506,174,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(672,506,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(673,506,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(674,506,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(507,174,20,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(675,507,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(676,507,26,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(508,174,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(509,174,33,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(510,174,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(175,'2cf3e96e-1307-4730-bb91-013f16ea86d3',3,'2013-03-11T00:00:00.000Z','(296) 709-1618','2013-03-11T00:40:00.000Z',2,'769-925 Vulputate, Street','Orci City','TN','82341',96.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(511,175,21,3,2,20.95,52.1,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(677,511,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(678,511,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(679,511,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(680,511,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(512,175,2,2,1,12.4,16.45,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(681,512,44,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(682,512,45,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(513,175,3,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(514,175,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(515,175,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(516,175,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(176,'2cf3e96e-1307-4730-bb91-013f16ea86d3',2,'2013-03-13T01:10:00.000Z','(296) 709-1618','2013-03-13T01:48:00.000Z',0,NULL,NULL,NULL,NULL,43.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(517,176,2,4,1,16.5,32.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(683,517,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(684,517,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(685,517,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(686,517,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(687,517,29,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(688,517,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(518,176,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(689,518,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(519,176,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(177,'2cf3e96e-1307-4730-bb91-013f16ea86d3',2,'2013-03-18T01:50:00.000Z','(296) 709-1618','2013-03-18T02:30:00.000Z',0,NULL,NULL,NULL,NULL,69.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(520,177,4,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(690,520,30,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(691,520,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(692,520,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(521,177,5,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(522,177,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(523,177,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(178,'2cf3e96e-1307-4730-bb91-013f16ea86d3',2,'2013-04-10T22:20:00.000Z','(296) 709-1618','2013-04-10T22:59:00.000Z',0,NULL,NULL,NULL,NULL,22.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(524,178,6,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(693,524,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(694,524,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(179,'2cf3e96e-1307-4730-bb91-013f16ea86d3',3,'2013-04-23T19:45:00.000Z','(296) 709-1618','2013-04-23T20:19:00.000Z',2,'769-925 Vulputate, Street','Orci City','TN','82341',39.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(525,179,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(695,525,12,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(526,179,7,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(696,526,14,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(697,526,49,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(527,179,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(528,179,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(180,'2cf3e96e-1307-4730-bb91-013f16ea86d3',2,'2013-05-06T01:10:00.000Z','(296) 709-1618','2013-05-06T01:47:00.000Z',0,NULL,NULL,NULL,NULL,58.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(529,180,8,3,2,20.95,58.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(698,529,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(699,529,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(700,529,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(701,529,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(702,529,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(181,'2cf3e96e-1307-4730-bb91-013f16ea86d3',2,'2013-05-17T21:00:00.000Z','(296) 709-1618','2013-05-17T21:40:00.000Z',0,NULL,NULL,NULL,NULL,32.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(530,181,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(703,530,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(704,530,33,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(705,530,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(706,530,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(707,530,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(708,530,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(531,181,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(709,531,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(532,181,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(182,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-03-21T00:40:00.000Z','(829) 590-4166','2013-03-21T01:13:00.000Z',0,NULL,NULL,NULL,NULL,33.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(533,182,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(710,533,34,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(711,533,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(712,533,35,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(534,182,23,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(713,534,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(714,534,60,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(535,182,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(183,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-04-03T23:10:00.000Z','(829) 590-4166','2013-04-03T23:49:00.000Z',0,NULL,NULL,NULL,NULL,4.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(536,183,24,7,1,3.95,4.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(715,536,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(716,536,62,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(184,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',3,'2013-04-04T01:05:00.000Z','(829) 590-4166','2013-04-04T01:42:00.000Z',2,'812-4435 Aliquet. Ave','Lectus','MD','86721',45.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(537,184,2,1,1,6.15,6.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(717,537,17,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(538,184,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(539,184,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(540,184,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(185,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-04-04T02:05:00.000Z','(829) 590-4166','2013-04-04T02:43:00.000Z',0,NULL,NULL,NULL,NULL,27.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(541,185,9,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(718,541,36,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(719,541,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(720,541,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(542,185,25,7,1,3.95,5.9,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(721,542,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(722,542,44,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(723,542,45,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(724,542,38,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(725,542,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(543,185,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(186,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-04-23T16:50:00.000Z','(829) 590-4166','2013-04-23T17:28:00.000Z',0,NULL,NULL,NULL,NULL,74.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(544,186,10,2,1,16.95,23.7,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(726,544,39,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(727,544,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(728,544,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(729,544,19,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(545,186,11,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(546,186,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(547,186,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(187,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-04-26T02:15:00.000Z','(829) 590-4166','2013-04-26T02:52:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(548,187,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(730,548,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(188,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-05-03T16:15:00.000Z','(829) 590-4166','2013-05-03T16:51:00.000Z',0,NULL,NULL,NULL,NULL,20.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(549,188,12,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(731,549,40,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(732,549,13,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(733,549,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(734,549,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(550,188,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(735,550,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(551,188,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(189,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-05-17T20:45:00.000Z','(829) 590-4166','2013-05-17T21:27:00.000Z',0,NULL,NULL,NULL,NULL,31.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(552,189,13,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(553,189,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(736,553,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(554,189,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(190,'c9aeab28-4aee-4845-9ab0-013f16ea86d4',2,'2013-05-20T20:20:00.000Z','(829) 590-4166','2013-05-20T20:58:00.000Z',0,NULL,NULL,NULL,NULL,37.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(555,190,2,5,1,17.95,22.45,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(737,555,47,1,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(556,190,29,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(738,556,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(739,556,20,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(740,556,21,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(741,556,22,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(557,190,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(191,'53c3baee-6e53-4671-bbb0-013f16ea86d5',3,'2013-04-01T19:45:00.000Z','(274) 223-1647','2013-04-01T20:20:00.000Z',2,'9403 Nullam Av.','Justo City','VA','48216',59.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(558,191,14,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(742,558,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(743,558,48,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(192,'53c3baee-6e53-4671-bbb0-013f16ea86d5',3,'2013-04-05T20:45:00.000Z','(274) 223-1647','2013-04-05T21:25:00.000Z',2,'9403 Nullam Av.','Justo City','VA','48216',49.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(559,192,2,4,2,16.5,49.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(744,559,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(745,559,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(746,559,25,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(193,'53c3baee-6e53-4671-bbb0-013f16ea86d5',3,'2013-04-06T00:50:00.000Z','(274) 223-1647','2013-04-06T01:37:00.000Z',2,'9403 Nullam Av.','Justo City','VA','48216',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(560,193,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(747,560,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(748,560,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(194,'53c3baee-6e53-4671-bbb0-013f16ea86d5',2,'2013-04-10T20:45:00.000Z','(274) 223-1647','2013-04-10T21:18:00.000Z',0,NULL,NULL,NULL,NULL,19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(561,194,15,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(749,561,50,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(195,'53c3baee-6e53-4671-bbb0-013f16ea86d5',2,'2013-04-17T19:35:00.000Z','(274) 223-1647','2013-04-17T20:15:00.000Z',0,NULL,NULL,NULL,NULL,84.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(562,195,16,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(750,562,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(751,562,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(752,562,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(563,195,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(753,563,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(754,563,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(755,563,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(564,195,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(565,195,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(566,195,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(567,195,33,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(196,'53c3baee-6e53-4671-bbb0-013f16ea86d5',2,'2013-05-26T00:50:00.000Z','(274) 223-1647','2013-05-26T01:29:00.000Z',0,NULL,NULL,NULL,NULL,56.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(568,196,17,4,2,23.45,51,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(756,568,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(757,568,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(569,196,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(758,569,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(759,569,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(570,196,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(197,'9834e69c-6563-4bb2-943f-013f16ea86d6',2,'2013-03-23T21:05:00.000Z','(574) 315-4571','2013-03-23T21:38:00.000Z',0,NULL,NULL,NULL,NULL,10.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(571,197,23,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(760,571,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(761,571,16,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(198,'7ca41be1-c44f-4590-a692-013f16ea86d7',2,'2013-03-14T22:30:00.000Z','(283) 615-2609','2013-03-14T23:14:00.000Z',0,NULL,NULL,NULL,NULL,42.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(572,198,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(762,572,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(763,572,28,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(573,198,2,3,1,14.45,16.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(764,573,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(765,573,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(574,198,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(575,198,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(199,'7ca41be1-c44f-4590-a692-013f16ea86d7',2,'2013-05-17T21:20:00.000Z','(283) 615-2609','2013-05-17T22:00:00.000Z',0,NULL,NULL,NULL,NULL,30.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(576,199,18,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(577,199,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(766,577,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(767,577,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(578,199,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(200,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-03-12T22:35:00.000Z','(540) 387-4490','2013-03-12T23:13:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(579,200,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(768,579,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(201,'2b5419bf-1443-4570-8067-013f16ea86d8',4,'2013-03-17T22:10:00.000Z','(540) 387-4490','2013-03-17T22:40:00.000Z',0,NULL,NULL,NULL,NULL,29.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(580,201,19,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(769,580,29,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(770,580,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(581,201,2,1,1,6.15,8.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(771,581,30,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(772,581,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(773,581,31,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(774,581,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(582,201,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(583,201,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(202,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-03-25T16:50:00.000Z','(540) 387-4490','2013-03-25T17:31:00.000Z',0,NULL,NULL,NULL,NULL,71.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(584,202,20,3,2,20.95,55.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(775,584,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(776,584,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(777,584,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(778,584,43,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(585,202,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(586,202,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(587,202,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(203,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-04-17T16:15:00.000Z','(540) 387-4490','2013-04-17T16:48:00.000Z',0,NULL,NULL,NULL,NULL,77.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(588,203,21,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(589,203,3,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(779,589,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(780,589,44,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(590,203,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(591,203,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(204,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-04-23T22:35:00.000Z','(540) 387-4490','2013-04-23T23:10:00.000Z',0,NULL,NULL,NULL,NULL,78.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(592,204,4,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(781,592,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(782,592,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(593,204,2,4,1,16.5,26.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(783,593,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(784,593,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(785,593,33,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(786,593,34,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(594,204,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(595,204,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(205,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-04-23T23:05:00.000Z','(540) 387-4490','2013-04-23T23:42:00.000Z',0,NULL,NULL,NULL,NULL,9.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(596,205,2,1,1,6.15,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(787,596,35,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(788,596,36,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(789,596,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(790,596,37,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(791,596,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(792,596,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(206,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-05-03T19:00:00.000Z','(540) 387-4490','2013-05-03T19:41:00.000Z',0,NULL,NULL,NULL,NULL,85.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(597,206,5,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(793,597,47,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(598,206,6,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(599,206,7,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(794,599,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(795,599,38,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(600,206,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(601,206,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(602,206,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(207,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-05-21T01:15:00.000Z','(540) 387-4490','2013-05-21T01:57:00.000Z',0,NULL,NULL,NULL,NULL,38.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(603,207,8,5,1,26.95,38.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(796,603,39,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(797,603,49,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(798,603,40,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(799,603,50,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(800,603,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(208,'2b5419bf-1443-4570-8067-013f16ea86d8',2,'2013-05-25T19:15:00.000Z','(540) 387-4490','2013-05-25T19:56:00.000Z',0,NULL,NULL,NULL,NULL,13.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(604,208,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(801,604,20,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(209,'17a9eee5-2354-40f2-a279-013f16ea86d9',2,'2013-03-17T22:35:00.000Z','(223) 636-5019','2013-03-17T23:11:00.000Z',0,NULL,NULL,NULL,NULL,39.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(605,209,9,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(802,605,51,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(803,605,52,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(210,'17a9eee5-2354-40f2-a279-013f16ea86d9',2,'2013-05-05T21:20:00.000Z','(223) 636-5019','2013-05-05T21:56:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(606,210,10,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(804,606,5,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(805,606,17,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(211,'17a9eee5-2354-40f2-a279-013f16ea86d9',2,'2013-05-12T20:00:00.000Z','(223) 636-5019','2013-05-12T20:38:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(607,211,11,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(806,607,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(807,607,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(808,607,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(212,'17a9eee5-2354-40f2-a279-013f16ea86d9',4,'2013-05-20T20:15:00.000Z','(223) 636-5019','2013-05-20T20:45:00.000Z',2,'P.O. Box 811, 2885 Et, Road','Sed City','WA','50088',79.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(608,212,2,2,1,12.4,16.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(809,608,22,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(810,608,23,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(811,608,24,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(609,212,12,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(812,609,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(813,609,25,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(610,212,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(611,212,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(213,'df3dccae-8bb6-428f-91b1-013f16ea86da',2,'2013-03-17T20:30:00.000Z','(764) 227-7789','2013-03-17T21:08:00.000Z',0,NULL,NULL,NULL,NULL,32.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(612,213,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(814,612,42,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(815,612,43,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(613,213,26,8,1,7.95,10.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(816,613,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(817,613,44,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(818,613,45,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(614,213,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(214,'df3dccae-8bb6-428f-91b1-013f16ea86da',2,'2013-05-02T01:10:00.000Z','(764) 227-7789','2013-05-02T01:43:00.000Z',0,NULL,NULL,NULL,NULL,12);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(615,214,27,9,1,8.95,12,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(819,615,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(820,615,61,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(821,615,19,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(822,615,26,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(215,'df3dccae-8bb6-428f-91b1-013f16ea86da',2,'2013-05-03T21:30:00.000Z','(764) 227-7789','2013-05-03T22:02:00.000Z',0,NULL,NULL,NULL,NULL,92.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(616,215,13,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(823,616,27,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(824,616,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(825,616,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(826,616,14,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(617,215,2,4,1,16.5,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(827,617,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(828,617,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(829,617,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(830,617,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(618,215,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(619,215,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(620,215,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(621,215,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(216,'df3dccae-8bb6-428f-91b1-013f16ea86da',2,'2013-05-20T17:15:00.000Z','(764) 227-7789','2013-05-20T18:03:00.000Z',0,NULL,NULL,NULL,NULL,54.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(622,216,14,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(831,622,6,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(832,622,30,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(833,622,31,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(834,622,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(623,216,15,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(835,623,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(836,623,49,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(624,216,2,1,1,6.15,8.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(837,624,7,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(838,624,32,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(839,624,50,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(840,624,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(625,216,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(626,216,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(627,216,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(217,'df3dccae-8bb6-428f-91b1-013f16ea86da',3,'2013-05-21T01:30:00.000Z','(764) 227-7789','2013-05-21T02:14:00.000Z',2,'P.O. Box 467, 8040 Diam St.','Bibendum','MA','73582',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(628,217,16,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(841,628,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(842,628,51,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(218,'df3dccae-8bb6-428f-91b1-013f16ea86da',2,'2013-05-23T17:10:00.000Z','(764) 227-7789','2013-05-23T17:49:00.000Z',0,NULL,NULL,NULL,NULL,55.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(629,218,17,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(843,629,52,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(219,'e709c816-f7aa-405b-b93b-013f16ea86db',4,'2013-04-12T22:50:00.000Z','(529) 932-7105','2013-04-12T23:20:00.000Z',2,'3544 Ut, Rd.','Curabitur','HI','71517',23.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(630,219,2,1,1,6.15,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(844,630,33,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(845,630,34,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(846,630,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(847,630,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(848,630,35,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(849,630,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(631,219,28,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(850,631,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(851,631,17,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(852,631,42,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(632,219,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(220,'e709c816-f7aa-405b-b93b-013f16ea86db',2,'2013-04-14T22:15:00.000Z','(529) 932-7105','2013-04-14T23:00:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(633,220,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(853,633,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(221,'e709c816-f7aa-405b-b93b-013f16ea86db',3,'2013-04-18T02:00:00.000Z','(529) 932-7105','2013-04-18T02:41:00.000Z',2,'3544 Ut, Rd.','Curabitur','HI','71517',39.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(634,221,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(854,634,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(855,634,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(856,634,18,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(635,221,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(857,635,19,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(636,221,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(637,221,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(222,'e709c816-f7aa-405b-b93b-013f16ea86db',2,'2013-05-10T16:10:00.000Z','(529) 932-7105','2013-05-10T16:52:00.000Z',0,NULL,NULL,NULL,NULL,25.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(638,222,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(639,222,30,9,1,8.95,8.95,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(858,639,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(640,222,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(223,'e709c816-f7aa-405b-b93b-013f16ea86db',2,'2013-05-12T19:30:00.000Z','(529) 932-7105','2013-05-12T20:12:00.000Z',0,NULL,NULL,NULL,NULL,51.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(641,223,18,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(642,223,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(859,642,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(860,642,43,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(643,223,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(644,223,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(224,'e709c816-f7aa-405b-b93b-013f16ea86db',2,'2013-05-14T16:10:00.000Z','(529) 932-7105','2013-05-14T16:43:00.000Z',0,NULL,NULL,NULL,NULL,27.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(645,224,20,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(861,645,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(862,645,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(863,645,39,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(864,645,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(865,645,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(225,'76a30ed2-1468-4c06-95d9-013f16ea86dc',2,'2013-03-03T18:50:00.000Z','(378) 568-8959','2013-03-03T19:29:00.000Z',0,NULL,NULL,NULL,NULL,51.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(646,225,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(647,225,22,8,2,7.95,15.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(866,647,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(648,225,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(226,'76a30ed2-1468-4c06-95d9-013f16ea86dc',2,'2013-03-04T00:20:00.000Z','(378) 568-8959','2013-03-04T01:03:00.000Z',0,NULL,NULL,NULL,NULL,9.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(649,226,23,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(867,649,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(868,649,60,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(227,'76a30ed2-1468-4c06-95d9-013f16ea86dc',2,'2013-03-05T20:35:00.000Z','(378) 568-8959','2013-03-05T21:13:00.000Z',0,NULL,NULL,NULL,NULL,74.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(650,227,21,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(869,650,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(870,650,47,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(651,227,3,5,1,26.95,35.95,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(871,651,48,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(872,651,40,2,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(652,227,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(653,227,33,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(228,'76a30ed2-1468-4c06-95d9-013f16ea86dc',2,'2013-03-10T16:00:00.000Z','(378) 568-8959','2013-03-10T16:38:00.000Z',0,NULL,NULL,NULL,NULL,6.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(654,228,24,7,1,3.95,6.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(873,654,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(874,654,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(875,654,50,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(876,654,51,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(229,'76a30ed2-1468-4c06-95d9-013f16ea86dc',2,'2013-03-25T19:40:00.000Z','(378) 568-8959','2013-03-25T20:14:00.000Z',0,NULL,NULL,NULL,NULL,32.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(655,229,4,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(877,655,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(878,655,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(656,229,25,7,1,3.95,5.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(879,656,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(880,656,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(881,656,20,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(882,656,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(657,229,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(230,'76a30ed2-1468-4c06-95d9-013f16ea86dc',2,'2013-04-25T16:50:00.000Z','(378) 568-8959','2013-04-25T17:29:00.000Z',0,NULL,NULL,NULL,NULL,88.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(658,230,5,3,2,20.95,52.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(883,658,21,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(884,658,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(885,658,15,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(659,230,2,1,1,6.15,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(886,659,22,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(887,659,42,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(888,659,43,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(889,659,23,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(660,230,6,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(661,230,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(662,230,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(663,230,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(231,'76a30ed2-1468-4c06-95d9-013f16ea86dc',2,'2013-05-01T23:35:00.000Z','(378) 568-8959','2013-05-02T00:18:00.000Z',0,NULL,NULL,NULL,NULL,55.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(664,231,7,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(890,664,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(891,664,44,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(232,'76a30ed2-1468-4c06-95d9-013f16ea86dc',3,'2013-05-20T23:35:00.000Z','(378) 568-8959','2013-05-21T00:22:00.000Z',2,'Ap #805-4319 Arcu Rd.','Metus City','MO','84235',45.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(665,232,8,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(892,665,16,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(893,665,17,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(894,665,18,2,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(666,232,26,7,1,3.95,5.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(895,666,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(896,666,64,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(897,666,45,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(898,666,19,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(667,232,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(233,'66e7d945-c19e-472e-8ccb-013f16ea86dd',2,'2013-03-03T20:45:00.000Z','(925) 871-6501','2013-03-03T21:16:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(668,233,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(899,668,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(234,'66e7d945-c19e-472e-8ccb-013f16ea86dd',2,'2013-03-17T16:15:00.000Z','(925) 871-6501','2013-03-17T16:59:00.000Z',0,NULL,NULL,NULL,NULL,12.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(669,234,28,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(900,669,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(901,669,13,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(902,669,46,1,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(235,'66e7d945-c19e-472e-8ccb-013f16ea86dd',2,'2013-04-17T20:40:00.000Z','(925) 871-6501','2013-04-17T21:18:00.000Z',0,NULL,NULL,NULL,NULL,57.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(670,235,9,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(903,670,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(904,670,47,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(671,235,10,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(905,671,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(906,671,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(907,671,27,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(672,235,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(673,235,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(236,'66e7d945-c19e-472e-8ccb-013f16ea86dd',2,'2013-04-23T20:35:00.000Z','(925) 871-6501','2013-04-23T21:13:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(674,236,11,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(237,'66e7d945-c19e-472e-8ccb-013f16ea86dd',2,'2013-05-23T19:20:00.000Z','(925) 871-6501','2013-05-23T20:00:00.000Z',0,NULL,NULL,NULL,NULL,35.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(675,237,12,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(908,675,8,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(909,675,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(910,675,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(676,237,29,9,1,8.95,8.95,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(911,676,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(677,237,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(238,'f4a21e9d-cee7-4adf-8f68-013f16ea86de',2,'2013-03-06T02:50:00.000Z','(713) 390-4565','2013-03-06T03:27:00.000Z',0,NULL,NULL,NULL,NULL,41.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(678,238,13,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(239,'f4a21e9d-cee7-4adf-8f68-013f16ea86de',2,'2013-04-18T00:40:00.000Z','(713) 390-4565','2013-04-18T01:20:00.000Z',0,NULL,NULL,NULL,NULL,40.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(679,239,14,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(912,679,49,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(913,679,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(680,239,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(681,239,2,1,1,6.15,7.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(914,681,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(915,681,15,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(682,239,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(683,239,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(684,239,33,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(240,'f4a21e9d-cee7-4adf-8f68-013f16ea86de',2,'2013-05-10T20:05:00.000Z','(713) 390-4565','2013-05-10T20:45:00.000Z',0,NULL,NULL,NULL,NULL,27.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(685,240,15,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(916,685,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(917,685,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(918,685,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(919,685,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(241,'b5c24c3f-0028-4e06-bd1b-013f16ea86df',2,'2013-03-26T02:10:00.000Z','(123) 442-5981','2013-03-26T02:47:00.000Z',0,NULL,NULL,NULL,NULL,33.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(686,241,16,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(687,241,30,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(920,687,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(921,687,16,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(688,241,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(242,'b5c24c3f-0028-4e06-bd1b-013f16ea86df',3,'2013-04-05T23:50:00.000Z','(123) 442-5981','2013-04-06T00:30:00.000Z',2,'Ap #294-6210 Integer St.','Dolor','HI','15675',27.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(689,242,2,5,1,17.95,20.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(922,689,30,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(923,689,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(690,242,22,7,1,3.95,4.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(924,690,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(925,690,63,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(926,690,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(691,242,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(243,'b5c24c3f-0028-4e06-bd1b-013f16ea86df',2,'2013-05-05T19:40:00.000Z','(123) 442-5981','2013-05-05T20:21:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(692,243,17,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(927,692,9,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(928,692,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(929,692,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(244,'b5c24c3f-0028-4e06-bd1b-013f16ea86df',2,'2013-05-05T23:00:00.000Z','(123) 442-5981','2013-05-05T23:39:00.000Z',0,NULL,NULL,NULL,NULL,43.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(693,244,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(694,244,18,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(930,694,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(931,694,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(932,694,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(695,244,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(696,244,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(245,'b5c24c3f-0028-4e06-bd1b-013f16ea86df',2,'2013-05-18T00:45:00.000Z','(123) 442-5981','2013-05-18T01:25:00.000Z',0,NULL,NULL,NULL,NULL,76.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(697,245,1,4,1,16.5,16.5,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(698,245,19,2,2,16.95,44.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(933,698,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(934,698,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(935,698,31,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(936,698,32,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(699,245,20,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(937,699,43,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(938,699,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(939,699,33,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(940,699,34,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(941,699,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(700,245,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(701,245,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(702,245,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(246,'1effd1d9-5e90-4f67-94b2-013f16ea86e0',2,'2013-05-10T21:40:00.000Z','(775) 110-3692','2013-05-10T22:18:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(703,246,21,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(942,703,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(943,703,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(944,703,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(247,'1effd1d9-5e90-4f67-94b2-013f16ea86e0',2,'2013-05-24T01:05:00.000Z','(775) 110-3692','2013-05-24T01:47:00.000Z',0,NULL,NULL,NULL,NULL,91.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(704,247,3,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(945,704,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(946,704,13,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(705,247,4,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(947,705,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(948,705,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(949,705,14,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(706,247,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(707,247,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(248,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-03-01T17:45:00.000Z','(398) 800-8468','2013-03-01T18:22:00.000Z',0,NULL,NULL,NULL,NULL,60.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(708,248,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(709,248,2,4,1,16.5,26.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(950,709,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(951,709,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(952,709,48,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(710,248,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(711,248,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(249,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-03-17T16:00:00.000Z','(398) 800-8468','2013-03-17T16:36:00.000Z',0,NULL,NULL,NULL,NULL,68.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(712,249,5,5,1,26.95,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(953,712,38,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(954,712,39,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(955,712,49,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(713,249,6,3,1,20.95,31.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(956,713,40,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(957,713,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(958,713,50,2,6.8);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(714,249,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(715,249,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(250,'d815ca51-5883-409f-991a-013f16ea86e1',3,'2013-03-17T17:20:00.000Z','(398) 800-8468','2013-03-17T18:07:00.000Z',2,'P.O. Box 144, 564 Hendrerit Avenue','Nulla','MT','49214',33.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(716,250,7,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(717,250,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(959,717,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(960,717,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(718,250,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(251,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-03-17T21:40:00.000Z','(398) 800-8468','2013-03-17T22:20:00.000Z',0,NULL,NULL,NULL,NULL,26.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(719,251,8,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(961,719,20,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(962,719,16,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(252,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-03-25T19:05:00.000Z','(398) 800-8468','2013-03-25T19:51:00.000Z',0,NULL,NULL,NULL,NULL,25.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(720,252,2,5,1,17.95,20.2,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(963,720,17,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(721,252,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(964,721,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(722,252,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(253,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-04-05T21:50:00.000Z','(398) 800-8468','2013-04-05T22:30:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(723,253,9,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(254,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-05-05T17:20:00.000Z','(398) 800-8468','2013-05-05T17:58:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(724,254,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(965,724,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(966,724,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(255,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-05-10T19:05:00.000Z','(398) 800-8468','2013-05-10T19:46:00.000Z',0,NULL,NULL,NULL,NULL,37.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(725,255,10,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(967,725,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(968,725,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(726,255,26,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(969,726,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(970,726,61,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(727,255,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(256,'d815ca51-5883-409f-991a-013f16ea86e1',2,'2013-05-20T19:15:00.000Z','(398) 800-8468','2013-05-20T19:56:00.000Z',0,NULL,NULL,NULL,NULL,40.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(728,256,11,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(971,728,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(972,728,41,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(729,256,27,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(973,729,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(974,729,18,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(730,256,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(257,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-03-01T23:05:00.000Z','(643) 524-5182','2013-03-01T23:47:00.000Z',0,NULL,NULL,NULL,NULL,7.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(731,257,12,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(258,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-03-20T20:50:00.000Z','(643) 524-5182','2013-03-20T21:22:00.000Z',0,NULL,NULL,NULL,NULL,27.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(732,258,13,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(975,732,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(976,732,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(977,732,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(978,732,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(979,732,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(259,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-03-25T22:00:00.000Z','(643) 524-5182','2013-03-25T22:34:00.000Z',0,NULL,NULL,NULL,NULL,24.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(733,259,2,1,2,6.15,13.6,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(980,733,43,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(734,259,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(981,734,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(982,734,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(735,259,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(260,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-03-26T01:20:00.000Z','(643) 524-5182','2013-03-26T01:53:00.000Z',0,NULL,NULL,NULL,NULL,11.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(736,260,29,9,1,8.95,11.55,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(983,736,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(984,736,44,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(985,736,45,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(261,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-04-03T19:30:00.000Z','(643) 524-5182','2013-04-03T20:10:00.000Z',0,NULL,NULL,NULL,NULL,55.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(737,261,14,2,2,16.95,44.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(986,737,46,2,5.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(738,261,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(987,738,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(739,261,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(262,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-05-12T19:10:00.000Z','(643) 524-5182','2013-05-12T19:42:00.000Z',0,NULL,NULL,NULL,NULL,121.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(740,262,15,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(988,740,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(989,740,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(990,740,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(741,262,16,3,1,20.95,24.35,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(991,741,22,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(992,741,23,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(742,262,17,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(993,742,24,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(994,742,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(995,742,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(743,262,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(744,262,32,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(745,262,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(263,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-05-17T20:35:00.000Z','(643) 524-5182','2013-05-17T21:19:00.000Z',0,NULL,NULL,NULL,NULL,9.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(746,263,18,1,1,7.65,9.6,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(996,746,50,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(997,746,51,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(998,746,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(264,'c1fbd2bb-d656-41a3-b197-013f16ea86e2',2,'2013-05-23T16:00:00.000Z','(643) 524-5182','2013-05-23T16:38:00.000Z',0,NULL,NULL,NULL,NULL,98.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(747,264,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(999,747,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1000,747,25,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1001,747,15,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(748,264,19,4,2,23.45,63.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1002,748,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1003,748,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1004,748,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1005,748,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1006,748,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(749,264,20,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(750,264,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(751,264,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(752,264,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(265,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-03-03T22:40:00.000Z','(641) 976-2223','2013-03-03T23:22:00.000Z',0,NULL,NULL,NULL,NULL,20.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(753,265,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(754,265,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1007,754,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(755,265,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(266,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-04-01T17:15:00.000Z','(641) 976-2223','2013-04-01T18:02:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(756,266,21,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(267,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-04-01T23:45:00.000Z','(641) 976-2223','2013-04-02T00:26:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(757,267,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1008,757,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1009,757,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(268,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-04-11T00:20:00.000Z','(641) 976-2223','2013-04-11T01:01:00.000Z',0,NULL,NULL,NULL,NULL,38.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(758,268,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(759,268,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1010,759,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1011,759,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1012,759,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1013,759,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(760,268,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(761,268,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(269,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-04-14T20:00:00.000Z','(641) 976-2223','2013-04-14T20:44:00.000Z',0,NULL,NULL,NULL,NULL,109);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(762,269,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(763,269,3,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1014,763,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1015,763,28,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1016,763,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(764,269,4,5,2,26.95,62.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1017,764,29,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1018,764,13,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1019,764,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(765,269,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(766,269,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(767,269,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(270,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',3,'2013-04-23T19:35:00.000Z','(641) 976-2223','2013-04-23T20:09:00.000Z',2,'P.O. Box 560, 4261 Pede Rd.','Amet','UT','94584',63.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(768,270,5,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1020,768,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1021,768,43,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(769,270,6,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1022,769,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1023,769,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1024,769,31,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1025,769,45,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(770,270,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(771,270,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(271,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-05-01T19:35:00.000Z','(641) 976-2223','2013-05-01T20:14:00.000Z',0,NULL,NULL,NULL,NULL,22.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(772,271,7,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1026,772,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1027,772,32,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1028,772,46,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(272,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-05-11T02:20:00.000Z','(641) 976-2223','2013-05-11T02:56:00.000Z',0,NULL,NULL,NULL,NULL,46.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(773,272,8,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1029,773,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1030,773,33,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1031,773,34,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(774,272,24,8,1,7.95,13.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1032,774,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1033,774,48,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1034,774,49,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(775,272,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(273,'444fa3a4-a2c5-4a18-8920-013f16ea86e3',2,'2013-05-26T02:00:00.000Z','(641) 976-2223','2013-05-26T02:42:00.000Z',0,NULL,NULL,NULL,NULL,17.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(776,273,1,5,1,17.95,17.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(274,'194b2770-1215-4fbb-a137-013f16ea86e4',3,'2013-03-05T22:20:00.000Z','(942) 240-7629','2013-03-05T23:01:00.000Z',2,'715-6134 Ac St.','Pharetra City','OH','11469',16.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(777,274,9,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1035,777,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1036,777,50,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(778,274,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1037,778,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(779,274,35,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(275,'194b2770-1215-4fbb-a137-013f16ea86e4',2,'2013-03-10T23:30:00.000Z','(942) 240-7629','2013-03-11T00:13:00.000Z',0,NULL,NULL,NULL,NULL,39.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(780,275,2,1,1,6.15,8.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1038,780,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1039,780,51,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1040,780,52,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1041,780,41,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(781,275,10,4,1,23.45,27.55,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1042,781,35,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1043,781,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1044,781,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(782,275,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(783,275,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(276,'194b2770-1215-4fbb-a137-013f16ea86e4',2,'2013-04-26T00:35:00.000Z','(942) 240-7629','2013-04-26T01:11:00.000Z',0,NULL,NULL,NULL,NULL,39.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(784,276,11,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1045,784,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1046,784,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1047,784,37,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1048,784,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(785,276,26,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1049,785,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1050,785,64,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1051,785,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(786,276,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(277,'194b2770-1215-4fbb-a137-013f16ea86e4',2,'2013-05-01T21:30:00.000Z','(942) 240-7629','2013-05-01T22:10:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(787,277,12,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(278,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',2,'2013-03-03T21:45:00.000Z','(890) 104-1814','2013-03-03T22:24:00.000Z',0,NULL,NULL,NULL,NULL,51.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(788,278,13,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1052,788,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1053,788,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1054,788,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(789,278,14,2,1,16.95,23.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1055,789,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1056,789,39,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1057,789,40,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1058,789,44,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(790,278,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(791,278,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(279,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',3,'2013-03-11T02:45:00.000Z','(890) 104-1814','2013-03-11T03:30:00.000Z',2,'Ap #939-3921 Tempus Ave','Enim City','FL','37684',49.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(792,279,15,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1059,792,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1060,792,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1061,792,15,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(793,279,27,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1062,793,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(794,279,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(280,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',2,'2013-04-05T19:30:00.000Z','(890) 104-1814','2013-04-05T20:07:00.000Z',0,NULL,NULL,NULL,NULL,33.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(795,280,16,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(796,280,28,9,1,8.95,8.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1063,796,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1064,796,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(797,280,31,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(281,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',2,'2013-04-17T23:35:00.000Z','(890) 104-1814','2013-04-18T00:18:00.000Z',0,NULL,NULL,NULL,NULL,36.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(798,281,17,4,1,23.45,23.45,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(799,281,29,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1065,799,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1066,799,20,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1067,799,45,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(800,281,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(282,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',2,'2013-04-26T02:30:00.000Z','(890) 104-1814','2013-04-26T03:11:00.000Z',0,NULL,NULL,NULL,NULL,37.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(801,282,2,4,1,16.5,26.75,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1068,801,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1069,801,46,2,8.2);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(802,282,30,9,1,8.95,9.4,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1070,802,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1071,802,62,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(803,282,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(283,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',2,'2013-05-06T00:45:00.000Z','(890) 104-1814','2013-05-06T01:26:00.000Z',0,NULL,NULL,NULL,NULL,7.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(804,283,18,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(284,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',2,'2013-05-14T19:30:00.000Z','(890) 104-1814','2013-05-14T20:13:00.000Z',0,NULL,NULL,NULL,NULL,42.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(805,284,1,5,1,17.95,17.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(806,284,19,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1072,806,17,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(807,284,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(808,284,35,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(285,'0092a7cf-d4d1-40ef-8bca-013f16ea86e5',2,'2013-05-21T01:45:00.000Z','(890) 104-1814','2013-05-21T02:27:00.000Z',0,NULL,NULL,NULL,NULL,50.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(809,285,20,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(810,285,21,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1073,810,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1074,810,47,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(811,285,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(812,285,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(286,'0ffa1ce7-6bab-4c7d-9e4d-013f16ea86e6',2,'2013-03-18T01:10:00.000Z','(946) 156-4745','2013-03-18T01:44:00.000Z',0,NULL,NULL,NULL,NULL,41.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(813,286,3,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1075,813,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1076,813,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1077,813,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1078,813,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(814,286,22,7,2,3.95,7.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1079,814,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(815,286,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(287,'0ffa1ce7-6bab-4c7d-9e4d-013f16ea86e6',2,'2013-04-24T00:10:00.000Z','(946) 156-4745','2013-04-24T00:48:00.000Z',0,NULL,NULL,NULL,NULL,34.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(816,287,4,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(817,287,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1080,817,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1081,817,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(818,287,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(288,'0ffa1ce7-6bab-4c7d-9e4d-013f16ea86e6',2,'2013-05-26T01:50:00.000Z','(946) 156-4745','2013-05-26T02:33:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(819,288,5,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1082,819,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1083,819,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1084,819,21,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(820,288,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1085,820,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(821,288,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(289,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',2,'2013-03-03T17:30:00.000Z','(348) 943-5910','2013-03-03T18:09:00.000Z',0,NULL,NULL,NULL,NULL,47.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(822,289,6,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1086,822,22,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1087,822,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(823,289,7,3,1,20.95,24.35,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1088,823,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1089,823,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(824,289,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(825,289,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(290,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',2,'2013-03-03T21:20:00.000Z','(348) 943-5910','2013-03-03T21:58:00.000Z',0,NULL,NULL,NULL,NULL,4.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(826,290,25,7,1,3.95,4.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1090,826,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1091,826,14,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(291,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',2,'2013-03-03T22:05:00.000Z','(348) 943-5910','2013-03-03T22:48:00.000Z',0,NULL,NULL,NULL,NULL,5.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(827,291,26,7,1,3.95,5.9,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1092,827,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1093,827,15,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1094,827,41,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(292,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',2,'2013-03-10T22:50:00.000Z','(348) 943-5910','2013-03-10T23:35:00.000Z',0,NULL,NULL,NULL,NULL,60.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(828,292,8,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1095,828,23,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1096,828,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1097,828,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(829,292,27,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1098,829,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1099,829,62,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1100,829,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(830,292,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(293,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',3,'2013-03-20T17:35:00.000Z','(348) 943-5910','2013-03-20T18:18:00.000Z',2,'P.O. Box 129, 5651 Augue, Rd.','Donec','IN','87595',21);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(831,293,9,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1101,831,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1102,831,24,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1103,831,44,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(294,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',3,'2013-04-14T21:40:00.000Z','(348) 943-5910','2013-04-14T22:14:00.000Z',2,'P.O. Box 129, 5651 Augue, Rd.','Donec','IN','87595',52.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(832,294,10,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(833,294,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1104,833,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(834,294,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(295,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',2,'2013-04-15T00:15:00.000Z','(348) 943-5910','2013-04-15T00:58:00.000Z',0,NULL,NULL,NULL,NULL,28.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(835,295,11,6,1,21.45,28.2,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1105,835,45,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1106,835,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1107,835,25,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1108,835,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(296,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',2,'2013-05-03T16:10:00.000Z','(348) 943-5910','2013-05-03T16:48:00.000Z',0,NULL,NULL,NULL,NULL,75.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(836,296,12,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1109,836,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1110,836,47,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(837,296,13,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(838,296,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1111,838,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1112,838,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1113,838,27,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1114,838,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1115,838,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(839,296,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(840,296,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(841,296,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(297,'02e84edd-8bd9-4bfc-aa7f-013f16ea86e7',2,'2013-05-14T19:15:00.000Z','(348) 943-5910','2013-05-14T19:55:00.000Z',0,NULL,NULL,NULL,NULL,17.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(842,297,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1116,842,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1117,842,28,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1118,842,18,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(298,'529766f8-40a1-4384-aefe-013f16ea86e8',2,'2013-03-12T19:35:00.000Z','(938) 823-1723','2013-03-12T20:11:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(843,298,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1119,843,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1120,843,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(299,'529766f8-40a1-4384-aefe-013f16ea86e8',2,'2013-04-18T00:30:00.000Z','(938) 823-1723','2013-04-18T01:10:00.000Z',0,NULL,NULL,NULL,NULL,31.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(844,299,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1121,844,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1122,844,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1123,844,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1124,844,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(845,299,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1125,845,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(846,299,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(300,'529766f8-40a1-4384-aefe-013f16ea86e8',2,'2013-05-03T19:15:00.000Z','(938) 823-1723','2013-05-03T19:55:00.000Z',0,NULL,NULL,NULL,NULL,11.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(847,300,22,8,1,7.95,11.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1126,847,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1127,847,30,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1128,847,51,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(301,'529766f8-40a1-4384-aefe-013f16ea86e8',2,'2013-05-04T01:05:00.000Z','(938) 823-1723','2013-05-04T01:48:00.000Z',0,NULL,NULL,NULL,NULL,39.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(848,301,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(849,301,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1129,849,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1130,849,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(850,301,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(302,'529766f8-40a1-4384-aefe-013f16ea86e8',2,'2013-05-12T16:50:00.000Z','(938) 823-1723','2013-05-12T17:29:00.000Z',0,NULL,NULL,NULL,NULL,70.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(851,302,14,3,1,20.95,24.35,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1131,851,31,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1132,851,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(852,302,15,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1133,852,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1134,852,13,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(853,302,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(854,302,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(303,'529766f8-40a1-4384-aefe-013f16ea86e8',2,'2013-05-20T21:45:00.000Z','(938) 823-1723','2013-05-20T22:23:00.000Z',0,NULL,NULL,NULL,NULL,22.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(855,303,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1135,855,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1136,855,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(856,303,24,7,1,3.95,5.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1137,856,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1138,856,62,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1139,856,32,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1140,856,14,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1141,856,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(857,303,41,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(304,'300f5222-d80f-448d-ad0c-013f16ea86e9',2,'2013-03-17T16:30:00.000Z','(889) 761-0883','2013-03-17T17:09:00.000Z',0,NULL,NULL,NULL,NULL,29);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(858,304,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1142,858,33,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1143,858,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1144,858,34,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(859,304,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1145,859,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1146,859,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(860,304,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(305,'300f5222-d80f-448d-ad0c-013f16ea86e9',2,'2013-04-25T19:00:00.000Z','(889) 761-0883','2013-04-25T19:37:00.000Z',0,NULL,NULL,NULL,NULL,28.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(861,305,16,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(862,305,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1147,862,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1148,862,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1149,862,18,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1150,862,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(863,305,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(864,305,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(306,'300f5222-d80f-448d-ad0c-013f16ea86e9',3,'2013-05-10T21:30:00.000Z','(889) 761-0883','2013-05-10T22:12:00.000Z',2,'3903 Sollicitudin Avenue','Adipiscing','VT','77331',55.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(865,306,17,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1151,865,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1152,865,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1153,865,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1154,865,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(866,306,18,3,1,20.95,20.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(867,306,34,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(868,306,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(307,'300f5222-d80f-448d-ad0c-013f16ea86e9',3,'2013-05-12T21:40:00.000Z','(889) 761-0883','2013-05-12T22:12:00.000Z',2,'3903 Sollicitudin Avenue','Adipiscing','VT','77331',56.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(869,307,19,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1155,869,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1156,869,36,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(870,307,20,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1157,870,10,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1158,870,37,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1159,870,38,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(871,307,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(872,307,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(308,'4b7fefe5-f303-472c-ab08-013f16ea86ea',2,'2013-03-03T17:50:00.000Z','(136) 924-6445','2013-03-03T18:33:00.000Z',0,NULL,NULL,NULL,NULL,40.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(873,308,21,1,1,7.65,7.65,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(874,308,3,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1160,874,14,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(875,308,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(876,308,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(309,'4b7fefe5-f303-472c-ab08-013f16ea86ea',2,'2013-04-03T21:00:00.000Z','(136) 924-6445','2013-04-03T21:40:00.000Z',0,NULL,NULL,NULL,NULL,29.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(877,309,4,5,1,26.95,29.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1161,877,44,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1162,877,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(310,'4b7fefe5-f303-472c-ab08-013f16ea86ea',2,'2013-04-11T02:00:00.000Z','(136) 924-6445','2013-04-11T02:40:00.000Z',0,NULL,NULL,NULL,NULL,69.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(878,310,2,5,1,17.95,20.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1163,878,15,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(879,310,5,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(880,310,2,5,1,17.95,20.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1164,880,39,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1165,880,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(881,310,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(882,310,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(883,310,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(311,'4b7fefe5-f303-472c-ab08-013f16ea86ea',3,'2013-04-26T00:30:00.000Z','(136) 924-6445','2013-04-26T01:06:00.000Z',2,'Ap #538-9663 Enim Avenue','Dictum','OH','52785',38.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(884,311,6,5,1,26.95,38.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1166,884,45,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1167,884,46,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1168,884,47,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1169,884,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(312,'4b7fefe5-f303-472c-ab08-013f16ea86ea',2,'2013-05-03T19:00:00.000Z','(136) 924-6445','2013-05-03T19:42:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(885,312,7,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(313,'4b7fefe5-f303-472c-ab08-013f16ea86ea',3,'2013-05-06T01:00:00.000Z','(136) 924-6445','2013-05-06T01:40:00.000Z',2,'Ap #538-9663 Enim Avenue','Dictum','OH','52785',72.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(886,313,2,4,2,16.5,61.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1170,886,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1171,886,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1172,886,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1173,886,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1174,886,18,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(887,313,26,7,1,3.95,5.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1175,887,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1176,887,50,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(888,313,32,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(314,'4b7fefe5-f303-472c-ab08-013f16ea86ea',2,'2013-05-14T17:30:00.000Z','(136) 924-6445','2013-05-14T18:08:00.000Z',0,NULL,NULL,NULL,NULL,42.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(889,314,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(890,314,8,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(891,314,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(892,314,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(315,'4b7fefe5-f303-472c-ab08-013f16ea86ea',2,'2013-05-20T16:35:00.000Z','(136) 924-6445','2013-05-20T17:08:00.000Z',0,NULL,NULL,NULL,NULL,23.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(893,315,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(894,315,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1177,894,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(895,315,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(316,'4b7fefe5-f303-472c-ab08-013f16ea86ea',3,'2013-05-21T00:05:00.000Z','(136) 924-6445','2013-05-21T00:39:00.000Z',2,'Ap #538-9663 Enim Avenue','Dictum','OH','52785',58.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(896,316,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(897,316,2,5,1,17.95,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1178,897,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1179,897,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1180,897,13,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1181,897,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(898,316,2,1,2,6.15,16.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1182,898,14,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1183,898,40,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1184,898,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(899,316,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(900,316,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(901,316,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(317,'c1bd258b-3bca-4016-a759-013f16ea86eb',2,'2013-03-03T18:15:00.000Z','(490) 193-4579','2013-03-03T18:46:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(902,317,9,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(318,'c1bd258b-3bca-4016-a759-013f16ea86eb',3,'2013-03-06T00:40:00.000Z','(490) 193-4579','2013-03-06T01:20:00.000Z',2,'P.O. Box 377, 8310 Id Road','Fusce','WI','09577',73.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(903,318,10,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1185,903,20,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1186,903,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1187,903,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(904,318,11,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(905,318,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(906,318,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(319,'c1bd258b-3bca-4016-a759-013f16ea86eb',2,'2013-04-03T23:15:00.000Z','(490) 193-4579','2013-04-03T23:55:00.000Z',0,NULL,NULL,NULL,NULL,82.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(907,319,12,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1188,907,11,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1189,907,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1190,907,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(908,319,13,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(909,319,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(910,319,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(320,'c1bd258b-3bca-4016-a759-013f16ea86eb',2,'2013-05-17T22:45:00.000Z','(490) 193-4579','2013-05-17T23:32:00.000Z',0,NULL,NULL,NULL,NULL,31.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(911,320,14,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1191,911,21,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(912,320,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1192,912,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(913,320,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(321,'c1bd258b-3bca-4016-a759-013f16ea86eb',3,'2013-05-26T02:00:00.000Z','(490) 193-4579','2013-05-26T02:40:00.000Z',2,'P.O. Box 377, 8310 Id Road','Fusce','WI','09577',33.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(914,321,2,3,1,14.45,22.95,'very light on the cheese');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1193,914,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1194,914,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1195,914,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1196,914,22,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1197,914,44,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(915,321,29,9,1,8.95,8.95,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1198,915,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(916,321,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(322,'0521e7b5-7660-4272-95a0-013f16ea86ec',2,'2013-03-12T17:35:00.000Z','(445) 454-7004','2013-03-12T18:08:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(917,322,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(323,'0521e7b5-7660-4272-95a0-013f16ea86ec',2,'2013-03-14T21:45:00.000Z','(445) 454-7004','2013-03-14T22:25:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(918,323,15,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1199,918,23,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1200,918,24,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(324,'0521e7b5-7660-4272-95a0-013f16ea86ec',2,'2013-03-17T20:40:00.000Z','(445) 454-7004','2013-03-17T21:15:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(919,324,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(325,'0521e7b5-7660-4272-95a0-013f16ea86ec',2,'2013-03-20T16:50:00.000Z','(445) 454-7004','2013-03-20T17:32:00.000Z',0,NULL,NULL,NULL,NULL,62.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(920,325,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(921,325,16,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1201,921,25,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1202,921,45,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1203,921,16,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(922,325,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(923,325,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(326,'0521e7b5-7660-4272-95a0-013f16ea86ec',3,'2013-03-23T16:10:00.000Z','(445) 454-7004','2013-03-23T16:50:00.000Z',2,'P.O. Box 777, 6014 Ridiculus Street','At City','NV','38096',68.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(924,326,2,2,1,12.4,17.8,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1204,924,26,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1205,924,27,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1206,924,46,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(925,326,17,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(926,326,2,5,1,17.95,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1207,926,17,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1208,926,18,2,4.5);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(927,326,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(928,326,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(929,326,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(327,'0521e7b5-7660-4272-95a0-013f16ea86ec',3,'2013-04-05T22:50:00.000Z','(445) 454-7004','2013-04-05T23:31:00.000Z',2,'P.O. Box 777, 6014 Ridiculus Street','At City','NV','38096',62.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(930,327,18,4,1,23.45,37.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1209,930,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1210,930,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1211,930,48,2,8.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1212,930,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(931,327,2,2,1,12.4,19.15,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1213,931,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1214,931,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1215,931,29,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1216,931,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1217,931,30,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1218,931,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(932,327,39,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(933,327,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(328,'0521e7b5-7660-4272-95a0-013f16ea86ec',2,'2013-04-13T02:45:00.000Z','(445) 454-7004','2013-04-13T03:16:00.000Z',0,NULL,NULL,NULL,NULL,64.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(934,328,19,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(935,328,20,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(936,328,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(937,328,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(329,'0521e7b5-7660-4272-95a0-013f16ea86ec',4,'2013-04-25T21:35:00.000Z','(445) 454-7004','2013-04-25T22:05:00.000Z',2,'P.O. Box 777, 6014 Ridiculus Street','At City','NV','38096',16.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(938,329,21,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(330,'877c2ea2-aa27-4f2c-af6e-013f16ea86ed',2,'2013-03-17T16:45:00.000Z','(324) 969-3404','2013-03-17T17:28:00.000Z',0,NULL,NULL,NULL,NULL,53.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(939,330,3,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1219,939,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1220,939,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1221,939,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(940,330,4,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(941,330,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(942,330,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(331,'877c2ea2-aa27-4f2c-af6e-013f16ea86ed',2,'2013-04-05T17:30:00.000Z','(324) 969-3404','2013-04-05T18:03:00.000Z',0,NULL,NULL,NULL,NULL,35.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(943,331,2,5,1,17.95,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1222,943,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1223,943,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1224,943,41,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1225,943,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(944,331,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1226,944,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1227,944,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(945,331,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(332,'877c2ea2-aa27-4f2c-af6e-013f16ea86ed',2,'2013-04-05T21:20:00.000Z','(324) 969-3404','2013-04-05T21:58:00.000Z',0,NULL,NULL,NULL,NULL,33.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(946,332,5,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(947,332,22,8,1,7.95,7.95,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1228,947,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(948,332,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(333,'877c2ea2-aa27-4f2c-af6e-013f16ea86ed',2,'2013-04-23T22:50:00.000Z','(324) 969-3404','2013-04-23T23:29:00.000Z',0,NULL,NULL,NULL,NULL,7.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(949,333,6,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(334,'877c2ea2-aa27-4f2c-af6e-013f16ea86ed',2,'2013-04-25T19:50:00.000Z','(324) 969-3404','2013-04-25T20:34:00.000Z',0,NULL,NULL,NULL,NULL,16.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(950,334,2,3,1,14.45,16.15,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1229,950,12,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(335,'9989886e-9e81-49c9-93e5-013f16ea86ee',2,'2013-03-03T17:30:00.000Z','(956) 442-3863','2013-03-03T18:12:00.000Z',0,NULL,NULL,NULL,NULL,27.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(951,335,7,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(952,335,23,9,1,8.95,8.95,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1230,952,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1231,952,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(953,335,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(336,'9989886e-9e81-49c9-93e5-013f16ea86ee',3,'2013-04-05T22:10:00.000Z','(956) 442-3863','2013-04-05T22:51:00.000Z',2,'P.O. Box 198, 7996 Nunc St.','Fringilla City','TX','53410',56.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(954,336,8,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(955,336,9,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1232,955,42,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1233,955,31,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1234,955,43,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1235,955,32,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1236,955,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(956,336,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(957,336,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(337,'9989886e-9e81-49c9-93e5-013f16ea86ee',2,'2013-05-03T23:10:00.000Z','(956) 442-3863','2013-05-03T23:52:00.000Z',0,NULL,NULL,NULL,NULL,55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(958,337,2,4,2,16.5,45.3,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1237,958,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1238,958,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1239,958,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1240,958,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(959,337,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1241,959,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(960,337,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(338,'50da0744-c4be-4789-988d-013f16ea86ef',2,'2013-04-23T23:15:00.000Z','(429) 164-3030','2013-04-23T23:46:00.000Z',0,NULL,NULL,NULL,NULL,43.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(961,338,10,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1242,961,33,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1243,961,16,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1244,961,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(962,338,2,2,1,12.4,19.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1245,962,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1246,962,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1247,962,34,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1248,962,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(963,338,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(964,338,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(339,'4204eda6-6c0a-430e-b732-013f16ea86f0',2,'2013-03-10T23:30:00.000Z','(859) 865-2065','2013-03-11T00:11:00.000Z',0,NULL,NULL,NULL,NULL,22.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(965,339,11,2,1,16.95,22.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1249,965,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1250,965,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1251,965,18,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(340,'4204eda6-6c0a-430e-b732-013f16ea86f0',2,'2013-04-10T20:20:00.000Z','(859) 865-2065','2013-04-10T21:01:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(966,340,12,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(341,'4204eda6-6c0a-430e-b732-013f16ea86f0',2,'2013-04-12T23:05:00.000Z','(859) 865-2065','2013-04-12T23:46:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(967,341,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1252,967,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(342,'4204eda6-6c0a-430e-b732-013f16ea86f0',2,'2013-05-18T01:35:00.000Z','(859) 865-2065','2013-05-18T02:20:00.000Z',0,NULL,NULL,NULL,NULL,82.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(968,342,13,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1253,968,35,2,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1254,968,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(969,342,14,3,2,20.95,45.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1255,969,36,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(970,342,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(971,342,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(343,'4204eda6-6c0a-430e-b732-013f16ea86f0',3,'2013-05-23T22:00:00.000Z','(859) 865-2065','2013-05-23T22:37:00.000Z',2,'2219 Cursus Rd.','Amet','CA','96527',48.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(972,343,15,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1256,972,37,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1257,972,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(344,'fcc8aa52-ed4f-4aab-88e5-013f16ea86f1',2,'2013-03-05T21:40:00.000Z','(945) 533-1951','2013-03-05T22:14:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(973,344,16,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(345,'1beaa986-0480-4edf-83c5-013f16ea86f2',2,'2013-04-25T21:40:00.000Z','(166) 510-8527','2013-04-25T22:13:00.000Z',0,NULL,NULL,NULL,NULL,8.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(974,345,26,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1258,974,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1259,974,60,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1260,974,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(346,'1beaa986-0480-4edf-83c5-013f16ea86f2',2,'2013-05-03T19:40:00.000Z','(166) 510-8527','2013-05-03T20:15:00.000Z',0,NULL,NULL,NULL,NULL,48.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(975,346,17,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1261,975,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1262,975,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1263,975,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1264,975,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1265,975,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(976,346,1,1,2,6.15,12.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(977,346,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(978,346,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(347,'ee189f0a-d565-44f0-b339-013f16ea86f3',2,'2013-03-23T17:20:00.000Z','(921) 573-6588','2013-03-23T18:02:00.000Z',0,NULL,NULL,NULL,NULL,32.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(979,347,18,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1266,979,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1267,979,38,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1268,979,49,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(980,347,19,2,1,16.95,16.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(981,347,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(982,347,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(348,'ee189f0a-d565-44f0-b339-013f16ea86f3',2,'2013-03-23T19:35:00.000Z','(921) 573-6588','2013-03-23T20:17:00.000Z',0,NULL,NULL,NULL,NULL,25.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(983,348,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(984,348,27,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1269,984,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1270,984,62,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(985,348,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(349,'ee189f0a-d565-44f0-b339-013f16ea86f3',3,'2013-04-12T23:35:00.000Z','(921) 573-6588','2013-04-13T00:07:00.000Z',2,'Ap #560-469 Non Rd.','Nec','IL','35131',57.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(986,349,20,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(987,349,21,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(988,349,3,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(989,349,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(990,349,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(991,349,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(350,'ee189f0a-d565-44f0-b339-013f16ea86f3',3,'2013-04-17T21:30:00.000Z','(921) 573-6588','2013-04-17T22:10:00.000Z',2,'Ap #560-469 Non Rd.','Nec','IL','35131',51.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(992,350,1,2,2,12.4,24.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(993,350,4,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1271,993,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1272,993,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(994,350,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(995,350,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(351,'ee189f0a-d565-44f0-b339-013f16ea86f3',2,'2013-05-20T19:40:00.000Z','(921) 573-6588','2013-05-20T20:15:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(996,351,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1273,996,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1274,996,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(352,'ee189f0a-d565-44f0-b339-013f16ea86f3',2,'2013-05-23T16:40:00.000Z','(921) 573-6588','2013-05-23T17:20:00.000Z',0,NULL,NULL,NULL,NULL,11.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(997,352,29,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1275,997,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1276,997,50,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1277,997,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(353,'ee189f0a-d565-44f0-b339-013f16ea86f3',2,'2013-05-25T20:50:00.000Z','(921) 573-6588','2013-05-25T21:31:00.000Z',0,NULL,NULL,NULL,NULL,33.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(998,353,5,2,2,16.95,33.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(354,'91c49c62-e750-47c3-afb2-013f16ea86f4',3,'2013-03-03T18:10:00.000Z','(629) 876-2320','2013-03-03T18:50:00.000Z',2,'Ap #879-7971 Nec, Street','Placerat City','TN','61074',21.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(999,354,6,1,1,7.65,9.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1278,999,39,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1279,999,51,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1280,999,52,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1000,354,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1281,1000,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1001,354,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(355,'91c49c62-e750-47c3-afb2-013f16ea86f4',3,'2013-03-20T21:30:00.000Z','(629) 876-2320','2013-03-20T22:09:00.000Z',2,'Ap #879-7971 Nec, Street','Placerat City','TN','61074',21.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1002,355,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1003,355,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1282,1003,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1004,355,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(356,'91c49c62-e750-47c3-afb2-013f16ea86f4',2,'2013-04-03T20:30:00.000Z','(629) 876-2320','2013-04-03T21:04:00.000Z',0,NULL,NULL,NULL,NULL,62.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1005,356,7,5,2,26.95,62.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1283,1005,17,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1284,1005,18,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(357,'91c49c62-e750-47c3-afb2-013f16ea86f4',3,'2013-04-21T00:50:00.000Z','(629) 876-2320','2013-04-21T01:24:00.000Z',2,'Ap #879-7971 Nec, Street','Placerat City','TN','61074',42.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1006,357,8,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1285,1006,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1286,1006,20,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1287,1006,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1288,1006,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1007,357,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1289,1007,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1290,1007,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1008,357,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(358,'91c49c62-e750-47c3-afb2-013f16ea86f4',3,'2013-05-06T02:35:00.000Z','(629) 876-2320','2013-05-06T03:21:00.000Z',2,'Ap #879-7971 Nec, Street','Placerat City','TN','61074',21.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1009,358,9,1,1,7.65,8.95,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1291,1009,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1292,1009,19,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1293,1009,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1010,358,24,8,1,7.95,10.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1294,1010,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1295,1010,13,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1296,1010,22,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1297,1010,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1011,358,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(359,'91c49c62-e750-47c3-afb2-013f16ea86f4',2,'2013-05-14T17:40:00.000Z','(629) 876-2320','2013-05-14T18:13:00.000Z',0,NULL,NULL,NULL,NULL,33.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1012,359,10,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1298,1012,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1299,1012,14,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1013,359,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1300,1013,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1014,359,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(360,'91c49c62-e750-47c3-afb2-013f16ea86f4',3,'2013-05-17T21:30:00.000Z','(629) 876-2320','2013-05-17T22:09:00.000Z',2,'Ap #879-7971 Nec, Street','Placerat City','TN','61074',51.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1015,360,2,3,2,14.45,39.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1301,1015,23,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1302,1015,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1303,1015,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1016,360,26,8,1,7.95,10.55,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1304,1016,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1305,1016,24,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1306,1016,25,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1017,360,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(361,'91c49c62-e750-47c3-afb2-013f16ea86f4',3,'2013-05-25T23:05:00.000Z','(629) 876-2320','2013-05-25T23:49:00.000Z',2,'Ap #879-7971 Nec, Street','Placerat City','TN','61074',64);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1018,361,2,4,2,16.5,49.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1307,1018,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1308,1018,45,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1309,1018,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1310,1018,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1019,361,27,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1311,1019,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1312,1019,47,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1313,1019,15,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1020,361,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(362,'170d08c3-94ef-4e77-a261-013f16ea86f5',2,'2013-04-13T00:20:00.000Z','(282) 169-7830','2013-04-13T00:51:00.000Z',0,NULL,NULL,NULL,NULL,29.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1021,362,11,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1314,1021,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1315,1021,48,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(363,'170d08c3-94ef-4e77-a261-013f16ea86f5',2,'2013-05-18T02:10:00.000Z','(282) 169-7830','2013-05-18T02:46:00.000Z',0,NULL,NULL,NULL,NULL,72.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1022,363,12,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1316,1022,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1317,1022,27,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1318,1022,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1023,363,13,2,1,16.95,16.95,'low salt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1024,363,14,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1319,1024,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1320,1024,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1321,1024,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1025,363,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1026,363,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1027,363,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(364,'768f2de6-f4b7-471c-91e6-013f16ea86f6',3,'2013-03-02T03:05:00.000Z','(376) 583-5528','2013-03-02T03:39:00.000Z',2,'Ap #791-9237 Convallis Ave','Interdum','LA','74380',19.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1028,364,15,1,2,7.65,19.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1322,1028,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1323,1028,51,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1324,1028,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(365,'768f2de6-f4b7-471c-91e6-013f16ea86f6',3,'2013-04-03T23:10:00.000Z','(376) 583-5528','2013-04-03T23:50:00.000Z',2,'Ap #791-9237 Convallis Ave','Interdum','LA','74380',21);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1029,365,16,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1325,1029,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1326,1029,28,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1327,1029,52,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1328,1029,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1329,1029,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(366,'768f2de6-f4b7-471c-91e6-013f16ea86f6',4,'2013-04-17T16:50:00.000Z','(376) 583-5528','2013-04-17T17:20:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1030,366,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1330,1030,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(367,'768f2de6-f4b7-471c-91e6-013f16ea86f6',2,'2013-04-23T20:10:00.000Z','(376) 583-5528','2013-04-23T20:50:00.000Z',0,NULL,NULL,NULL,NULL,12.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1031,367,29,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1331,1031,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1332,1031,41,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1333,1031,42,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1334,1031,43,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(368,'768f2de6-f4b7-471c-91e6-013f16ea86f6',2,'2013-05-02T00:35:00.000Z','(376) 583-5528','2013-05-02T01:19:00.000Z',0,NULL,NULL,NULL,NULL,31.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1032,368,17,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1335,1032,44,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1336,1032,19,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1337,1032,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(369,'768f2de6-f4b7-471c-91e6-013f16ea86f6',2,'2013-05-03T23:35:00.000Z','(376) 583-5528','2013-05-04T00:14:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1033,369,30,9,1,8.95,8.95,'say ''Hi'' to Doris');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1338,1033,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1339,1033,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(370,'768f2de6-f4b7-471c-91e6-013f16ea86f6',2,'2013-05-13T01:45:00.000Z','(376) 583-5528','2013-05-13T02:25:00.000Z',0,NULL,NULL,NULL,NULL,77);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1034,370,18,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1340,1034,45,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1341,1034,29,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1035,370,19,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1036,370,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1342,1036,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1343,1036,31,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1344,1036,13,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1037,370,31,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1038,370,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1039,370,33,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(371,'768f2de6-f4b7-471c-91e6-013f16ea86f6',2,'2013-05-15T00:05:00.000Z','(376) 583-5528','2013-05-15T00:39:00.000Z',0,NULL,NULL,NULL,NULL,19.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1040,371,20,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1345,1040,5,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1346,1040,32,2,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1041,371,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1347,1041,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1042,371,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(372,'6af2ef7f-c95c-4e30-adb4-013f16ea86f7',2,'2013-04-01T21:50:00.000Z','(880) 539-7849','2013-04-01T22:35:00.000Z',0,NULL,NULL,NULL,NULL,80.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1043,372,21,4,2,23.45,67.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1348,1043,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1349,1043,33,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1350,1043,34,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1044,372,3,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1351,1044,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1352,1044,47,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1353,1044,48,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1354,1044,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1045,372,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1046,372,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(373,'6af2ef7f-c95c-4e30-adb4-013f16ea86f7',2,'2013-04-21T00:05:00.000Z','(880) 539-7849','2013-04-21T00:45:00.000Z',0,NULL,NULL,NULL,NULL,11.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1047,373,23,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1355,1047,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1356,1047,49,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1357,1047,35,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1358,1047,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(374,'6af2ef7f-c95c-4e30-adb4-013f16ea86f7',2,'2013-04-24T02:05:00.000Z','(880) 539-7849','2013-04-24T02:38:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1048,374,4,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(375,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',2,'2013-03-17T16:20:00.000Z','(575) 380-6774','2013-03-17T16:59:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1049,375,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1359,1049,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(376,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',2,'2013-03-26T02:45:00.000Z','(575) 380-6774','2013-03-26T03:26:00.000Z',0,NULL,NULL,NULL,NULL,55.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1050,376,5,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1360,1050,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1361,1050,37,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(377,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',2,'2013-04-15T00:15:00.000Z','(575) 380-6774','2013-04-15T00:55:00.000Z',0,NULL,NULL,NULL,NULL,72.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1051,377,6,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1362,1051,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1363,1051,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1364,1051,38,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1365,1051,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1052,377,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1366,1052,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1367,1052,14,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1053,377,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1054,377,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1055,377,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1056,377,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(378,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',3,'2013-05-05T17:30:00.000Z','(575) 380-6774','2013-05-05T18:04:00.000Z',2,'955-4287 Consectetuer Rd.','Mauris City','OR','25882',7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1057,378,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1368,1057,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1369,1057,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(379,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',3,'2013-05-05T20:50:00.000Z','(575) 380-6774','2013-05-05T21:29:00.000Z',2,'955-4287 Consectetuer Rd.','Mauris City','OR','25882',15.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1058,379,2,2,1,12.4,15.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1370,1058,41,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(380,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',3,'2013-05-12T17:15:00.000Z','(575) 380-6774','2013-05-12T17:55:00.000Z',2,'955-4287 Consectetuer Rd.','Mauris City','OR','25882',73.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1059,380,7,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1371,1059,39,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1060,380,8,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1372,1060,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1373,1060,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1374,1060,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1061,380,9,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1062,380,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1063,380,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1064,380,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(381,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',2,'2013-05-15T01:35:00.000Z','(575) 380-6774','2013-05-15T02:16:00.000Z',0,NULL,NULL,NULL,NULL,34.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1065,381,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1375,1065,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1376,1065,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1377,1065,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1378,1065,44,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1379,1065,21,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1380,1065,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1066,381,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1381,1066,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1067,381,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(382,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',3,'2013-05-17T16:45:00.000Z','(575) 380-6774','2013-05-17T17:21:00.000Z',2,'955-4287 Consectetuer Rd.','Mauris City','OR','25882',88.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1068,382,10,5,1,26.95,31.45,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1382,1068,22,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1383,1068,45,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1384,1068,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1069,382,11,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1070,382,12,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1385,1070,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1386,1070,16,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1071,382,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1072,382,34,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1073,382,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(383,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',2,'2013-05-23T23:45:00.000Z','(575) 380-6774','2013-05-24T00:29:00.000Z',0,NULL,NULL,NULL,NULL,35.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1074,383,13,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1387,1074,24,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1075,383,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1388,1075,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1076,383,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(384,'cc9a8db5-c80e-41fc-8ed2-013f16ea86f8',2,'2013-05-25T22:05:00.000Z','(575) 380-6774','2013-05-25T22:41:00.000Z',0,NULL,NULL,NULL,NULL,41.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1077,384,14,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(385,'f65afde1-2fdf-48ad-bcbf-013f16ea86f9',2,'2013-03-03T23:20:00.000Z','(929) 558-5253','2013-03-03T23:54:00.000Z',0,NULL,NULL,NULL,NULL,26.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1078,385,15,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1389,1078,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1390,1078,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1391,1078,27,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(386,'f65afde1-2fdf-48ad-bcbf-013f16ea86f9',2,'2013-03-10T21:05:00.000Z','(929) 558-5253','2013-03-10T21:49:00.000Z',0,NULL,NULL,NULL,NULL,50.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1079,386,2,4,1,16.5,28.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1392,1079,46,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1393,1079,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1394,1079,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1395,1079,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1396,1079,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1080,386,2,4,1,16.5,18.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1397,1080,6,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1081,386,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1082,386,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(387,'f65afde1-2fdf-48ad-bcbf-013f16ea86f9',2,'2013-04-04T02:30:00.000Z','(929) 558-5253','2013-04-04T03:05:00.000Z',0,NULL,NULL,NULL,NULL,37.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1083,387,16,5,1,26.95,26.95,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1084,387,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1398,1084,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1399,1084,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1085,387,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(388,'f65afde1-2fdf-48ad-bcbf-013f16ea86f9',2,'2013-04-14T21:05:00.000Z','(929) 558-5253','2013-04-14T21:44:00.000Z',0,NULL,NULL,NULL,NULL,33.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1086,388,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1087,388,29,9,1,8.95,15.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1400,1087,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1401,1087,17,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1402,1087,48,2,5.2);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1088,388,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(389,'f65afde1-2fdf-48ad-bcbf-013f16ea86f9',2,'2013-05-10T20:20:00.000Z','(929) 558-5253','2013-05-10T20:57:00.000Z',0,NULL,NULL,NULL,NULL,44.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1089,389,2,1,1,6.15,6.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1403,1089,18,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1090,389,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1091,389,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1092,389,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(390,'f65afde1-2fdf-48ad-bcbf-013f16ea86f9',2,'2013-05-20T23:15:00.000Z','(929) 558-5253','2013-05-20T23:50:00.000Z',0,NULL,NULL,NULL,NULL,101.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1093,390,17,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1404,1093,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1405,1093,50,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1406,1093,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1094,390,18,4,2,23.45,55.1,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1407,1094,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1408,1094,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1409,1094,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1095,390,2,2,1,12.4,16.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1410,1095,31,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1411,1095,32,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1412,1095,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1096,390,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1097,390,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1098,390,34,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(391,'f65afde1-2fdf-48ad-bcbf-013f16ea86f9',2,'2013-05-21T02:10:00.000Z','(929) 558-5253','2013-05-21T02:54:00.000Z',0,NULL,NULL,NULL,NULL,57.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1099,391,19,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1100,391,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1413,1100,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1101,391,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(392,'3a0300d9-9606-4569-a3e8-013f16ea86fa',2,'2013-03-03T22:30:00.000Z','(432) 388-1417','2013-03-03T23:08:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1102,392,22,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1414,1102,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1415,1102,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(393,'3a0300d9-9606-4569-a3e8-013f16ea86fa',2,'2013-03-20T17:45:00.000Z','(432) 388-1417','2013-03-20T18:19:00.000Z',0,NULL,NULL,NULL,NULL,20.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1103,393,20,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(394,'3a0300d9-9606-4569-a3e8-013f16ea86fa',2,'2013-03-21T02:00:00.000Z','(432) 388-1417','2013-03-21T02:37:00.000Z',0,NULL,NULL,NULL,NULL,19.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1104,394,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1416,1104,33,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1417,1104,34,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1418,1104,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(395,'3a0300d9-9606-4569-a3e8-013f16ea86fa',2,'2013-04-17T19:20:00.000Z','(432) 388-1417','2013-04-17T20:00:00.000Z',0,NULL,NULL,NULL,NULL,97.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1105,395,21,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1419,1105,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1420,1105,52,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1106,395,3,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1421,1106,36,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1422,1106,37,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1107,395,4,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1423,1107,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1424,1107,41,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1108,395,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1109,395,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1110,395,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(396,'3a0300d9-9606-4569-a3e8-013f16ea86fa',2,'2013-04-24T00:00:00.000Z','(432) 388-1417','2013-04-24T00:34:00.000Z',0,NULL,NULL,NULL,NULL,59.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1111,396,2,3,2,14.45,32.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1425,1111,42,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1112,396,5,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1113,396,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1114,396,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(397,'3a0300d9-9606-4569-a3e8-013f16ea86fa',2,'2013-05-03T21:15:00.000Z','(432) 388-1417','2013-05-03T22:01:00.000Z',0,NULL,NULL,NULL,NULL,47.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1115,397,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1426,1115,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1427,1115,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1428,1115,45,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1116,397,6,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1117,397,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1118,397,31,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(398,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',3,'2013-03-03T22:45:00.000Z','(281) 514-3068','2013-03-03T23:20:00.000Z',2,'404-6753 Facilisis Ave','Aville','KS','01567',79.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1119,398,7,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1429,1119,7,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1430,1119,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1431,1119,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1120,398,8,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1432,1120,39,2,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1433,1120,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1121,398,9,1,2,7.65,15.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1122,398,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1123,398,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1124,398,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(399,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',2,'2013-03-10T16:35:00.000Z','(281) 514-3068','2013-03-10T17:17:00.000Z',0,NULL,NULL,NULL,NULL,51.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1125,399,10,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1434,1125,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1435,1125,40,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1126,399,11,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1436,1126,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1437,1126,20,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1438,1126,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1127,399,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1128,399,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(400,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',2,'2013-03-10T19:45:00.000Z','(281) 514-3068','2013-03-10T20:18:00.000Z',0,NULL,NULL,NULL,NULL,56.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1129,400,12,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1439,1129,48,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1440,1129,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1441,1129,21,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1130,400,13,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1442,1130,49,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1443,1130,50,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1131,400,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1132,400,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(401,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',2,'2013-03-23T23:30:00.000Z','(281) 514-3068','2013-03-24T00:12:00.000Z',0,NULL,NULL,NULL,NULL,10.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1133,401,23,9,1,8.95,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1444,1133,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1445,1133,51,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1446,1133,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(402,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',3,'2013-04-14T16:30:00.000Z','(281) 514-3068','2013-04-14T17:09:00.000Z',2,'404-6753 Facilisis Ave','Aville','KS','01567',53);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1134,402,14,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1447,1134,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1448,1134,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1449,1134,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1450,1134,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1135,402,15,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1451,1135,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1452,1135,15,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1136,402,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1137,402,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(403,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',2,'2013-04-17T16:50:00.000Z','(281) 514-3068','2013-04-17T17:24:00.000Z',0,NULL,NULL,NULL,NULL,37.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1138,403,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1139,403,2,4,1,16.5,18.55,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1453,1139,23,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1140,403,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1141,403,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(404,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',3,'2013-05-05T19:15:00.000Z','(281) 514-3068','2013-05-05T19:55:00.000Z',2,'404-6753 Facilisis Ave','Aville','KS','01567',48.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1142,404,16,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1454,1142,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1455,1142,17,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1143,404,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1144,404,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1145,404,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(405,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',3,'2013-05-11T01:20:00.000Z','(281) 514-3068','2013-05-11T01:59:00.000Z',2,'404-6753 Facilisis Ave','Aville','KS','01567',15.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1146,405,2,2,1,12.4,15.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1456,1146,42,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1457,1146,43,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(406,'5c8da1e2-88ab-476f-94c2-013f16ea86fb',2,'2013-05-13T00:00:00.000Z','(281) 514-3068','2013-05-13T00:33:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1147,406,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1458,1147,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(407,'2ba7aa86-66d2-4946-9715-013f16ea86fc',2,'2013-03-03T21:45:00.000Z','(653) 705-1457','2013-03-03T22:25:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1148,407,2,5,1,17.95,20.2,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1459,1148,24,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1149,407,25,7,1,3.95,4.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1460,1149,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1461,1149,25,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1150,407,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(408,'2ba7aa86-66d2-4946-9715-013f16ea86fc',2,'2013-04-01T22:20:00.000Z','(653) 705-1457','2013-04-01T22:52:00.000Z',0,NULL,NULL,NULL,NULL,7.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1151,408,17,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(409,'2ba7aa86-66d2-4946-9715-013f16ea86fc',3,'2013-04-03T21:35:00.000Z','(653) 705-1457','2013-04-03T22:13:00.000Z',2,'364-6175 Tincidunt Street','Pharetra','VA','80436',26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1152,409,18,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(410,'2ba7aa86-66d2-4946-9715-013f16ea86fc',2,'2013-04-17T23:30:00.000Z','(653) 705-1457','2013-04-18T00:12:00.000Z',0,NULL,NULL,NULL,NULL,15.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1153,410,19,1,2,7.65,15.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(411,'2ba7aa86-66d2-4946-9715-013f16ea86fc',2,'2013-05-14T17:50:00.000Z','(653) 705-1457','2013-05-14T18:38:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1154,411,26,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1462,1154,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1463,1154,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(412,'2ba7aa86-66d2-4946-9715-013f16ea86fc',3,'2013-05-23T19:00:00.000Z','(653) 705-1457','2013-05-23T19:43:00.000Z',2,'364-6175 Tincidunt Street','Pharetra','VA','80436',40.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1155,412,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1464,1155,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1465,1155,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1466,1155,44,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1156,412,2,2,1,12.4,16.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1467,1156,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1468,1156,45,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1469,1156,27,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1157,412,35,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1158,412,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(413,'9cca07f4-74c4-47ce-a272-013f16ea86fd',2,'2013-03-05T18:15:00.000Z','(283) 653-0786','2013-03-05T18:52:00.000Z',0,NULL,NULL,NULL,NULL,59.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1159,413,20,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1160,413,27,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1470,1160,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1471,1160,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1161,413,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(414,'9cca07f4-74c4-47ce-a272-013f16ea86fd',2,'2013-03-05T22:40:00.000Z','(283) 653-0786','2013-03-05T23:21:00.000Z',0,NULL,NULL,NULL,NULL,16.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1162,414,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(415,'9cca07f4-74c4-47ce-a272-013f16ea86fd',2,'2013-03-06T03:45:00.000Z','(283) 653-0786','2013-03-06T04:18:00.000Z',0,NULL,NULL,NULL,NULL,113.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1163,415,21,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1472,1163,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1473,1163,46,1,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1164,415,3,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1474,1164,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1475,1164,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1476,1164,49,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1165,415,1,5,1,17.95,17.95,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1166,415,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1167,415,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1168,415,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(416,'9cca07f4-74c4-47ce-a272-013f16ea86fd',2,'2013-04-02T01:35:00.000Z','(283) 653-0786','2013-04-02T02:20:00.000Z',0,NULL,NULL,NULL,NULL,21.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1169,416,2,3,1,14.45,21.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1477,1169,50,2,6.8);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1478,1169,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(417,'9cca07f4-74c4-47ce-a272-013f16ea86fd',3,'2013-04-10T23:10:00.000Z','(283) 653-0786','2013-04-10T23:55:00.000Z',2,'230-7699 Scelerisque Rd.','Phasellus','GA','29773',57.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1170,417,4,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1171,417,5,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1479,1171,8,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1480,1171,51,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1172,417,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1173,417,31,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(418,'9cca07f4-74c4-47ce-a272-013f16ea86fd',2,'2013-04-10T23:40:00.000Z','(283) 653-0786','2013-04-11T00:13:00.000Z',0,NULL,NULL,NULL,NULL,42.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1174,418,2,3,2,14.45,42.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1481,1174,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1482,1174,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1483,1174,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1484,1174,28,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(419,'9cca07f4-74c4-47ce-a272-013f16ea86fd',3,'2013-04-12T16:35:00.000Z','(283) 653-0786','2013-04-12T17:08:00.000Z',2,'230-7699 Scelerisque Rd.','Phasellus','GA','29773',90.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1175,419,6,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1485,1175,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1486,1175,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1487,1175,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1488,1175,18,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1176,419,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1489,1176,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1490,1176,41,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1491,1176,31,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1492,1176,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1177,419,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1178,419,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1179,419,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1180,419,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(420,'9cca07f4-74c4-47ce-a272-013f16ea86fd',2,'2013-04-17T23:20:00.000Z','(283) 653-0786','2013-04-17T23:55:00.000Z',0,NULL,NULL,NULL,NULL,46.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1181,420,7,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(421,'9cca07f4-74c4-47ce-a272-013f16ea86fd',2,'2013-05-11T02:30:00.000Z','(283) 653-0786','2013-05-11T03:04:00.000Z',0,NULL,NULL,NULL,NULL,20.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1182,421,2,4,1,16.5,20.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1493,1182,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1494,1182,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1495,1182,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(422,'9cca07f4-74c4-47ce-a272-013f16ea86fd',3,'2013-05-13T02:20:00.000Z','(283) 653-0786','2013-05-13T03:05:00.000Z',2,'230-7699 Scelerisque Rd.','Phasellus','GA','29773',8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1183,422,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1496,1183,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1497,1183,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(423,'f7bebab8-c767-4979-bab2-013f16ea86fe',3,'2013-05-05T17:05:00.000Z','(168) 424-7326','2013-05-05T17:49:00.000Z',2,'171 Vitae St.','Cursus City','IA','23120',39.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1184,423,8,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1498,1184,43,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1499,1184,44,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1185,423,29,9,1,8.95,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1500,1185,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1501,1185,64,1,0.45);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1186,423,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(424,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',3,'2013-03-23T17:35:00.000Z','(585) 279-3277','2013-03-23T18:15:00.000Z',2,'8391 Imperdiet, Rd.','Tincidunt City','OH','97338',24.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1187,424,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1188,424,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1502,1188,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1189,424,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(425,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',2,'2013-03-23T22:50:00.000Z','(585) 279-3277','2013-03-23T23:35:00.000Z',0,NULL,NULL,NULL,NULL,59.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1190,425,9,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1503,1190,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1504,1190,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1505,1190,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1191,425,10,5,1,26.95,31.45,'hold the liver');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1506,1191,45,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1507,1191,14,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1508,1191,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1192,425,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1193,425,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(426,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',2,'2013-03-25T23:15:00.000Z','(585) 279-3277','2013-03-25T23:51:00.000Z',0,NULL,NULL,NULL,NULL,43.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1194,426,11,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1509,1194,33,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1510,1194,46,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1195,426,22,8,2,7.95,15.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1511,1195,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1512,1195,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1196,426,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(427,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',2,'2013-04-01T19:20:00.000Z','(585) 279-3277','2013-04-01T20:01:00.000Z',0,NULL,NULL,NULL,NULL,121.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1197,427,12,4,2,23.45,59.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1513,1197,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1514,1197,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1515,1197,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1198,427,13,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1516,1198,48,2,8.2);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1517,1198,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1199,427,14,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1518,1199,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1519,1199,16,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1200,427,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1201,427,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1202,427,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(428,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',2,'2013-04-04T00:15:00.000Z','(585) 279-3277','2013-04-04T01:00:00.000Z',0,NULL,NULL,NULL,NULL,19.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1203,428,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1520,1203,34,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1521,1203,35,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1522,1203,36,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(429,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',2,'2013-04-14T20:20:00.000Z','(585) 279-3277','2013-04-14T21:03:00.000Z',0,NULL,NULL,NULL,NULL,65.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1204,429,15,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1205,429,16,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1206,429,17,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1207,429,32,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1208,429,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1209,429,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(430,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',2,'2013-04-15T02:20:00.000Z','(585) 279-3277','2013-04-15T02:57:00.000Z',0,NULL,NULL,NULL,NULL,93.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1210,430,2,5,2,17.95,53.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1523,1210,9,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1524,1210,50,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1525,1210,17,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1526,1210,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1211,430,1,4,2,16.5,33,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1212,430,35,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1213,430,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(431,'f8ec5ae3-3844-452b-bb79-013f16ea86ff',2,'2013-05-25T16:45:00.000Z','(585) 279-3277','2013-05-25T17:22:00.000Z',0,NULL,NULL,NULL,NULL,58.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1214,431,2,5,2,17.95,58.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1527,1214,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1528,1214,52,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1529,1214,37,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1530,1214,41,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1531,1214,42,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(432,'e0e1eb58-2c0c-4849-9626-013f16ea8700',2,'2013-03-10T16:05:00.000Z','(709) 650-4546','2013-03-10T16:47:00.000Z',0,NULL,NULL,NULL,NULL,72.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1215,432,18,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1532,1215,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1533,1215,44,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1216,432,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1534,1216,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1535,1216,45,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1536,1216,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1537,1216,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1538,1216,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1217,432,19,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1539,1217,47,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1218,432,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1219,432,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1220,432,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(433,'e0e1eb58-2c0c-4849-9626-013f16ea8700',2,'2013-04-11T01:05:00.000Z','(709) 650-4546','2013-04-11T01:40:00.000Z',0,NULL,NULL,NULL,NULL,37);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1221,433,20,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1222,433,23,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1540,1222,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1541,1222,39,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1542,1222,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1223,433,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(434,'e0e1eb58-2c0c-4849-9626-013f16ea8700',2,'2013-04-14T20:00:00.000Z','(709) 650-4546','2013-04-14T20:39:00.000Z',0,NULL,NULL,NULL,NULL,17.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1224,434,2,3,1,14.45,17.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1543,1224,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1544,1224,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(435,'e0e1eb58-2c0c-4849-9626-013f16ea8700',2,'2013-05-06T00:50:00.000Z','(709) 650-4546','2013-05-06T01:29:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1225,435,21,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(436,'e0e1eb58-2c0c-4849-9626-013f16ea8700',3,'2013-05-14T19:00:00.000Z','(709) 650-4546','2013-05-14T19:41:00.000Z',2,'Ap #111-5843 Massa. Ave','Auctor','TX','43177',35.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1226,436,3,5,1,26.95,35.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1545,1226,49,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1546,1226,50,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1547,1226,51,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(437,'e0e1eb58-2c0c-4849-9626-013f16ea8700',2,'2013-05-23T19:15:00.000Z','(709) 650-4546','2013-05-23T19:49:00.000Z',0,NULL,NULL,NULL,NULL,71.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1227,437,4,3,2,20.95,41.9,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1228,437,2,4,1,16.5,24.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1548,1228,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1549,1228,40,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1550,1228,13,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1229,437,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1230,437,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(438,'71bf25ac-4b80-4469-ae39-013f16ea8701',2,'2013-03-23T22:45:00.000Z','(272) 138-1745','2013-03-23T23:21:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1231,438,24,7,1,3.95,3.95,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1551,1231,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(439,'71bf25ac-4b80-4469-ae39-013f16ea8701',2,'2013-04-17T17:35:00.000Z','(272) 138-1745','2013-04-17T18:21:00.000Z',0,NULL,NULL,NULL,NULL,103.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1232,439,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1233,439,5,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1552,1233,20,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1553,1233,52,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1234,439,6,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1554,1234,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1555,1234,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1556,1234,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1235,439,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1236,439,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1237,439,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(440,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-03-01T22:00:00.000Z','(270) 574-3828','2013-03-01T22:36:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1238,440,25,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1557,1238,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(441,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-03-02T02:00:00.000Z','(270) 574-3828','2013-03-02T02:45:00.000Z',0,NULL,NULL,NULL,NULL,69.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1239,441,7,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1240,441,8,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1241,441,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1242,441,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1243,441,36,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1244,441,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(442,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-04-05T22:50:00.000Z','(270) 574-3828','2013-04-05T23:22:00.000Z',0,NULL,NULL,NULL,NULL,34.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1245,442,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1246,442,1,4,1,16.5,16.5,'keep it warm; I may be late');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1247,442,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1248,442,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(443,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-04-17T21:35:00.000Z','(270) 574-3828','2013-04-17T22:16:00.000Z',0,NULL,NULL,NULL,NULL,27.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1249,443,9,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1558,1249,14,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1559,1249,21,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1250,443,26,7,1,3.95,4.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1560,1250,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1561,1250,15,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1251,443,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(444,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-04-17T23:45:00.000Z','(270) 574-3828','2013-04-18T00:30:00.000Z',0,NULL,NULL,NULL,NULL,32.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1252,444,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1562,1252,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1563,1252,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1564,1252,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1565,1252,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1566,1252,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1253,444,27,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1567,1253,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1568,1253,19,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1569,1253,44,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1570,1253,45,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1571,1253,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1254,444,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(445,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-04-20T22:15:00.000Z','(270) 574-3828','2013-04-20T22:58:00.000Z',0,NULL,NULL,NULL,NULL,113.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1255,445,10,6,1,21.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1572,1255,22,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1573,1255,46,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1256,445,11,2,2,16.95,42,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1574,1256,23,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1575,1256,47,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1257,445,12,2,2,16.95,39.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1576,1257,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1577,1257,14,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1258,445,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1259,445,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1260,445,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(446,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-05-13T00:10:00.000Z','(270) 574-3828','2013-05-13T00:55:00.000Z',0,NULL,NULL,NULL,NULL,27.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1261,446,13,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1578,1261,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1579,1261,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1580,1261,25,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1581,1261,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(447,'407194d9-15b2-4b75-9268-013f16ea8702',2,'2013-05-23T21:40:00.000Z','(270) 574-3828','2013-05-23T22:11:00.000Z',0,NULL,NULL,NULL,NULL,23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1262,447,14,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(448,'6339190a-56dc-44cd-bfbe-013f16ea8703',2,'2013-03-03T18:35:00.000Z','(494) 542-9811','2013-03-03T19:12:00.000Z',0,NULL,NULL,NULL,NULL,36.05);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1263,448,15,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1582,1263,26,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1583,1263,49,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1264,448,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1584,1264,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1265,448,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(449,'6339190a-56dc-44cd-bfbe-013f16ea8703',2,'2013-03-06T01:30:00.000Z','(494) 542-9811','2013-03-06T02:07:00.000Z',0,NULL,NULL,NULL,NULL,33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1266,449,16,4,1,23.45,33.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1585,1266,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1586,1266,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1587,1266,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1588,1266,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1589,1266,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(450,'6339190a-56dc-44cd-bfbe-013f16ea8703',2,'2013-04-10T21:20:00.000Z','(494) 542-9811','2013-04-10T21:59:00.000Z',0,NULL,NULL,NULL,NULL,38.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1267,450,17,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1590,1267,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1591,1267,52,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1592,1267,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1593,1267,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1594,1267,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1268,450,29,9,1,8.95,8.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1595,1268,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1269,450,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(451,'6339190a-56dc-44cd-bfbe-013f16ea8703',3,'2013-04-25T23:00:00.000Z','(494) 542-9811','2013-04-25T23:40:00.000Z',2,'8682 Dignissim St.','Sagittis City','MA','86664',21.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1270,451,18,6,1,21.45,21.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(452,'6339190a-56dc-44cd-bfbe-013f16ea8703',3,'2013-05-10T16:10:00.000Z','(494) 542-9811','2013-05-10T16:49:00.000Z',2,'8682 Dignissim St.','Sagittis City','MA','86664',6.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1271,452,1,1,1,6.15,6.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(453,'6339190a-56dc-44cd-bfbe-013f16ea8703',2,'2013-05-14T22:15:00.000Z','(494) 542-9811','2013-05-14T22:50:00.000Z',0,NULL,NULL,NULL,NULL,40);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1272,453,19,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1273,453,30,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1596,1273,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1597,1273,41,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1598,1273,17,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1274,453,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(454,'6339190a-56dc-44cd-bfbe-013f16ea8703',2,'2013-05-20T22:00:00.000Z','(494) 542-9811','2013-05-20T22:44:00.000Z',0,NULL,NULL,NULL,NULL,120.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1275,454,20,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1599,1275,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1600,1275,42,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1276,454,21,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1601,1276,18,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1602,1276,43,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1277,454,3,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1603,1277,31,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1604,1277,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1278,454,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1279,454,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1280,454,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(455,'6339190a-56dc-44cd-bfbe-013f16ea8703',2,'2013-05-24T00:10:00.000Z','(494) 542-9811','2013-05-24T00:53:00.000Z',0,NULL,NULL,NULL,NULL,29.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1281,455,4,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1605,1281,32,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1606,1281,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1282,455,22,7,1,3.95,5.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1607,1282,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1608,1282,33,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1609,1282,34,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1610,1282,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1283,455,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(456,'3ac7c387-7012-4c33-be30-013f16ea8704',2,'2013-04-03T23:45:00.000Z','(341) 395-7156','2013-04-04T00:29:00.000Z',0,NULL,NULL,NULL,NULL,51.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1284,456,5,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1611,1284,19,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1612,1284,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1613,1284,13,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1285,456,2,5,1,17.95,20.2,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1614,1285,14,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1286,456,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1287,456,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(457,'3ac7c387-7012-4c33-be30-013f16ea8704',3,'2013-05-05T22:05:00.000Z','(341) 395-7156','2013-05-05T22:42:00.000Z',2,'6924 Eleifend Av.','Tellus','KY','43609',27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1288,457,6,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1615,1288,10,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1616,1288,35,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1617,1288,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(458,'3ac7c387-7012-4c33-be30-013f16ea8704',2,'2013-05-26T01:15:00.000Z','(341) 395-7156','2013-05-26T02:00:00.000Z',0,NULL,NULL,NULL,NULL,52.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1289,458,7,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1290,458,8,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1618,1290,36,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1619,1290,45,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1291,458,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1292,458,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(459,'746f6ad4-f332-43f5-904b-013f16ea8705',2,'2013-03-21T02:35:00.000Z','(708) 211-0792','2013-03-21T03:20:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1293,459,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1620,1293,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1621,1293,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(460,'746f6ad4-f332-43f5-904b-013f16ea8705',2,'2013-04-12T17:00:00.000Z','(708) 211-0792','2013-04-12T17:35:00.000Z',0,NULL,NULL,NULL,NULL,28.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1294,460,9,1,1,7.65,7.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1295,460,10,1,2,7.65,15.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1296,460,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1297,460,35,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(461,'746f6ad4-f332-43f5-904b-013f16ea8705',2,'2013-04-23T20:45:00.000Z','(708) 211-0792','2013-04-23T21:18:00.000Z',0,NULL,NULL,NULL,NULL,97.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1298,461,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1622,1298,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1623,1298,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1624,1298,15,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1625,1298,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1299,461,2,3,1,14.45,26.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1626,1299,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1627,1299,38,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1628,1299,48,2,6.8);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1629,1299,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1300,461,11,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1301,461,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1302,461,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1303,461,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(462,'746f6ad4-f332-43f5-904b-013f16ea8705',2,'2013-05-23T17:20:00.000Z','(708) 211-0792','2013-05-23T17:56:00.000Z',0,NULL,NULL,NULL,NULL,11.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1304,462,24,8,1,7.95,11.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1630,1304,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1631,1304,49,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1632,1304,39,2,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1633,1304,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(463,'746f6ad4-f332-43f5-904b-013f16ea8705',2,'2013-05-26T00:35:00.000Z','(708) 211-0792','2013-05-26T01:10:00.000Z',0,NULL,NULL,NULL,NULL,18.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1305,463,12,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1634,1305,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1635,1305,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(464,'b9b39c6b-e93f-4596-86bf-013f16ea8706',2,'2013-03-25T22:35:00.000Z','(950) 862-9798','2013-03-25T23:17:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1306,464,2,5,1,17.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1636,1306,40,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1637,1306,50,1,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1638,1306,51,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1639,1306,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(465,'b9b39c6b-e93f-4596-86bf-013f16ea8706',2,'2013-04-17T21:15:00.000Z','(950) 862-9798','2013-04-17T21:54:00.000Z',0,NULL,NULL,NULL,NULL,27.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1307,465,13,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1640,1307,52,2,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1641,1307,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1308,465,25,7,1,3.95,5.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1642,1308,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1643,1308,41,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1644,1308,20,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1645,1308,42,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1646,1308,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1309,465,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(466,'b9b39c6b-e93f-4596-86bf-013f16ea8706',2,'2013-05-03T19:15:00.000Z','(950) 862-9798','2013-05-03T19:51:00.000Z',0,NULL,NULL,NULL,NULL,20.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1310,466,14,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1647,1310,17,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1648,1310,43,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1649,1310,21,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1311,466,26,8,1,7.95,7.95,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1650,1311,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1312,466,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(467,'b9b39c6b-e93f-4596-86bf-013f16ea8706',2,'2013-05-03T20:40:00.000Z','(950) 862-9798','2013-05-03T21:23:00.000Z',0,NULL,NULL,NULL,NULL,33.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1313,467,15,3,1,20.95,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1651,1313,44,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1314,467,27,9,1,8.95,8.95,'love it when the crust is a little burnt');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1652,1314,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1315,467,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(468,'b9b39c6b-e93f-4596-86bf-013f16ea8706',2,'2013-05-18T02:35:00.000Z','(950) 862-9798','2013-05-18T03:16:00.000Z',0,NULL,NULL,NULL,NULL,33.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1316,468,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1653,1316,22,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1317,468,28,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1654,1317,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1655,1317,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1318,468,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(469,'aedcca6a-4f04-4f61-8d00-013f16ea8707',2,'2013-03-03T21:35:00.000Z','(510) 118-7374','2013-03-03T22:11:00.000Z',0,NULL,NULL,NULL,NULL,12.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1319,469,29,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1656,1319,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1657,1319,18,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1658,1319,23,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1659,1319,45,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(470,'aedcca6a-4f04-4f61-8d00-013f16ea8707',2,'2013-03-06T00:20:00.000Z','(510) 118-7374','2013-03-06T00:59:00.000Z',0,NULL,NULL,NULL,NULL,19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1320,470,16,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1660,1320,24,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1661,1320,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1662,1320,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(471,'aedcca6a-4f04-4f61-8d00-013f16ea8707',3,'2013-03-13T00:35:00.000Z','(510) 118-7374','2013-03-13T01:19:00.000Z',2,'P.O. Box 235, 8495 Risus. Avenue','Quam','WA','37294',84.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1321,471,17,3,2,20.95,41.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1322,471,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1323,471,2,4,1,16.5,22.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1663,1323,25,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1664,1323,26,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1665,1323,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1666,1323,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1324,471,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1325,471,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1326,471,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(472,'aedcca6a-4f04-4f61-8d00-013f16ea8707',2,'2013-03-18T01:20:00.000Z','(510) 118-7374','2013-03-18T02:07:00.000Z',0,NULL,NULL,NULL,NULL,27.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1327,472,18,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1667,1327,46,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1668,1327,47,1,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(473,'aedcca6a-4f04-4f61-8d00-013f16ea8707',2,'2013-04-10T16:30:00.000Z','(510) 118-7374','2013-04-10T17:11:00.000Z',0,NULL,NULL,NULL,NULL,44.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1328,473,1,3,2,14.45,28.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1329,473,30,9,1,8.95,14.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1669,1329,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1670,1329,48,1,2.6);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1671,1329,49,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1672,1329,14,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1673,1329,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1330,473,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(474,'aedcca6a-4f04-4f61-8d00-013f16ea8707',3,'2013-04-20T21:30:00.000Z','(510) 118-7374','2013-04-20T22:13:00.000Z',2,'P.O. Box 235, 8495 Risus. Avenue','Quam','WA','37294',27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1331,474,19,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1674,1331,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1675,1331,28,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(475,'aedcca6a-4f04-4f61-8d00-013f16ea8707',3,'2013-04-25T21:20:00.000Z','(510) 118-7374','2013-04-25T22:02:00.000Z',2,'P.O. Box 235, 8495 Risus. Avenue','Quam','WA','37294',56.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1332,475,20,3,1,20.95,29.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1676,1332,29,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1677,1332,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1678,1332,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1679,1332,30,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1680,1332,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1333,475,21,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1334,475,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1335,475,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(476,'aedcca6a-4f04-4f61-8d00-013f16ea8707',2,'2013-05-05T23:00:00.000Z','(510) 118-7374','2013-05-05T23:38:00.000Z',0,NULL,NULL,NULL,NULL,54.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1336,476,3,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1681,1336,31,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1337,476,4,4,1,23.45,25.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1682,1337,32,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1338,476,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1339,476,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(477,'aedcca6a-4f04-4f61-8d00-013f16ea8707',2,'2013-05-25T16:50:00.000Z','(510) 118-7374','2013-05-25T17:32:00.000Z',0,NULL,NULL,NULL,NULL,67.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1340,477,5,4,2,23.45,46.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1341,477,22,8,2,7.95,18.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1683,1341,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1684,1341,33,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1685,1341,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1342,477,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(478,'43d4f9e3-99da-40ed-b682-013f16ea8708',3,'2013-03-05T22:20:00.000Z','(552) 554-3280','2013-03-05T22:51:00.000Z',2,'7239 Et, Road','Tempor','TX','00883',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1343,478,6,1,1,7.65,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1686,1343,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1687,1343,52,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1344,478,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1688,1344,64,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1345,478,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(479,'43d4f9e3-99da-40ed-b682-013f16ea8708',2,'2013-03-10T23:30:00.000Z','(552) 554-3280','2013-03-11T00:12:00.000Z',0,NULL,NULL,NULL,NULL,42.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1346,479,7,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1689,1346,34,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1690,1346,41,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1691,1346,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1347,479,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1692,1347,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1348,479,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(480,'43d4f9e3-99da-40ed-b682-013f16ea8708',2,'2013-04-26T00:35:00.000Z','(552) 554-3280','2013-04-26T01:15:00.000Z',0,NULL,NULL,NULL,NULL,23.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1349,480,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1350,480,25,8,1,7.95,8.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1693,1350,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1694,1350,60,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1695,1350,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1351,480,32,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(481,'43d4f9e3-99da-40ed-b682-013f16ea8708',3,'2013-05-01T21:30:00.000Z','(552) 554-3280','2013-05-01T22:06:00.000Z',2,'7239 Et, Road','Tempor','TX','00883',31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1352,481,8,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1353,481,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1696,1353,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1697,1353,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1354,481,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(482,'77b01908-6c68-4ad9-b8af-013f16ea8709',2,'2013-05-11T02:20:00.000Z','(487) 913-4567','2013-05-11T02:59:00.000Z',0,NULL,NULL,NULL,NULL,51.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1355,482,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1698,1355,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1699,1355,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1700,1355,44,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1701,1355,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1356,482,2,2,2,12.4,27.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1702,1356,35,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1357,482,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1358,482,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(483,'77b01908-6c68-4ad9-b8af-013f16ea8709',3,'2013-05-23T21:10:00.000Z','(487) 913-4567','2013-05-23T21:49:00.000Z',2,'3192 Laoreet Rd.','Integer','IA','10919',19.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1359,483,9,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1703,1359,36,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1704,1359,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1705,1359,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(484,'52d51e1f-f945-4e9f-8533-013f16ea870a',2,'2013-03-10T16:30:00.000Z','(618) 597-6222','2013-03-10T17:16:00.000Z',0,NULL,NULL,NULL,NULL,49);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1360,484,10,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1706,1360,16,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1707,1360,17,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1708,1360,18,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1361,484,27,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1709,1361,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1710,1361,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1362,484,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(485,'52d51e1f-f945-4e9f-8533-013f16ea870a',3,'2013-03-10T22:30:00.000Z','(618) 597-6222','2013-03-10T23:08:00.000Z',2,'Ap #910-8612 Quisque Avenue','Utville','MD','74665',32.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1363,485,11,1,2,7.65,21.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1711,1363,45,2,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1712,1363,46,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1713,1363,19,1,0.65);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1364,485,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1714,1364,63,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1365,485,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(486,'52d51e1f-f945-4e9f-8533-013f16ea870a',2,'2013-04-24T01:35:00.000Z','(618) 597-6222','2013-04-24T02:15:00.000Z',0,NULL,NULL,NULL,NULL,52.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1366,486,12,3,2,20.95,52.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1715,1366,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1716,1366,47,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1717,1366,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(487,'52d51e1f-f945-4e9f-8533-013f16ea870a',3,'2013-05-10T23:15:00.000Z','(618) 597-6222','2013-05-10T23:59:00.000Z',2,'Ap #910-8612 Quisque Avenue','Utville','MD','74665',31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1367,487,13,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1718,1367,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1719,1367,15,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1720,1367,38,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(488,'52d51e1f-f945-4e9f-8533-013f16ea870a',2,'2013-05-13T02:45:00.000Z','(618) 597-6222','2013-05-13T03:24:00.000Z',0,NULL,NULL,NULL,NULL,77.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1368,488,14,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1721,1368,11,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1722,1368,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1723,1368,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1369,488,15,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1724,1369,49,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1725,1369,16,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1370,488,16,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1371,488,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1372,488,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1373,488,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(489,'52d51e1f-f945-4e9f-8533-013f16ea870a',2,'2013-05-20T21:30:00.000Z','(618) 597-6222','2013-05-20T22:07:00.000Z',0,NULL,NULL,NULL,NULL,50.1);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1374,489,17,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1375,489,2,3,1,14.45,22.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1726,1375,50,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1727,1375,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1728,1375,51,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1729,1375,18,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1376,489,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1377,489,31,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(490,'fd7fbda4-a765-448e-836b-013f16ea870b',2,'2013-03-06T00:30:00.000Z','(116) 965-7370','2013-03-06T01:05:00.000Z',0,NULL,NULL,NULL,NULL,34.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1378,490,18,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1379,490,29,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1730,1379,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1731,1379,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1380,490,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(491,'fd7fbda4-a765-448e-836b-013f16ea870b',2,'2013-03-26T02:45:00.000Z','(116) 965-7370','2013-03-26T03:31:00.000Z',0,NULL,NULL,NULL,NULL,31.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1381,491,19,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1382,491,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1732,1382,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1383,491,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(492,'fd7fbda4-a765-448e-836b-013f16ea870b',3,'2013-04-06T00:00:00.000Z','(116) 965-7370','2013-04-06T00:32:00.000Z',2,'P.O. Box 286, 5025 Donec Rd.','Interdum','LA','57214',50.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1384,492,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1733,1384,19,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1734,1384,13,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1735,1384,14,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1736,1384,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1385,492,20,3,1,20.95,27.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1737,1385,39,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1738,1385,40,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1739,1385,20,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1740,1385,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1741,1385,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1386,492,34,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1387,492,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(493,'fd7fbda4-a765-448e-836b-013f16ea870b',2,'2013-04-14T17:15:00.000Z','(116) 965-7370','2013-04-14T18:01:00.000Z',0,NULL,NULL,NULL,NULL,85.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1388,493,21,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1742,1388,52,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1743,1388,21,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1744,1388,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1745,1388,16,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1389,493,3,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1746,1389,41,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1747,1389,17,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1390,493,4,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1391,493,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1392,493,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1393,493,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(494,'fd7fbda4-a765-448e-836b-013f16ea870b',2,'2013-04-21T00:30:00.000Z','(116) 965-7370','2013-04-21T01:01:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1394,494,5,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1748,1394,18,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1749,1394,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(495,'fd7fbda4-a765-448e-836b-013f16ea870b',2,'2013-05-12T16:05:00.000Z','(116) 965-7370','2013-05-12T16:50:00.000Z',0,NULL,NULL,NULL,NULL,70);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1395,495,6,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1396,495,2,4,2,16.5,45.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1750,1396,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1751,1396,42,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1752,1396,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1753,1396,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1397,495,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1398,495,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(496,'fd7fbda4-a765-448e-836b-013f16ea870b',2,'2013-05-13T01:40:00.000Z','(116) 965-7370','2013-05-13T02:17:00.000Z',0,NULL,NULL,NULL,NULL,21);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1399,496,7,2,1,16.95,21,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1754,1399,13,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1755,1399,43,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1756,1399,44,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(497,'fd7fbda4-a765-448e-836b-013f16ea870b',3,'2013-05-15T00:30:00.000Z','(116) 965-7370','2013-05-15T01:05:00.000Z',2,'P.O. Box 286, 5025 Donec Rd.','Interdum','LA','57214',36.8);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1400,497,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1401,497,2,3,1,14.45,17.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1757,1401,14,2,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1758,1401,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1402,497,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1403,497,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(498,'fd7fbda4-a765-448e-836b-013f16ea870b',2,'2013-05-23T16:20:00.000Z','(116) 965-7370','2013-05-23T17:06:00.000Z',0,NULL,NULL,NULL,NULL,54.6);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1404,498,8,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1759,1404,15,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1760,1404,45,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1405,498,22,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1761,1405,59,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1406,498,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(499,'98e62a0f-8502-4c02-acdf-013f16ea870c',2,'2013-03-17T17:20:00.000Z','(998) 695-1689','2013-03-17T17:58:00.000Z',0,NULL,NULL,NULL,NULL,24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1407,499,9,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1762,1407,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1763,1407,25,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(500,'98e62a0f-8502-4c02-acdf-013f16ea870c',2,'2013-03-25T23:35:00.000Z','(998) 695-1689','2013-03-26T00:15:00.000Z',0,NULL,NULL,NULL,NULL,19.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1408,500,2,2,1,12.4,19.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1764,1408,46,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1765,1408,26,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1766,1408,16,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(501,'98e62a0f-8502-4c02-acdf-013f16ea870c',3,'2013-04-12T19:45:00.000Z','(998) 695-1689','2013-04-12T20:30:00.000Z',2,'957-6278 Pede. Road','Erat','AK','64486',78.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1409,501,10,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1767,1409,27,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1768,1409,28,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1769,1409,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1410,501,2,2,1,12.4,19.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1770,1410,47,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1771,1410,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1772,1410,18,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1773,1410,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1774,1410,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1411,501,33,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1412,501,34,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(502,'98e62a0f-8502-4c02-acdf-013f16ea870c',3,'2013-05-25T22:10:00.000Z','(998) 695-1689','2013-05-25T22:50:00.000Z',2,'957-6278 Pede. Road','Erat','AK','64486',57.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1413,502,11,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1775,1413,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1776,1413,14,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1777,1413,29,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1778,1413,30,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1414,502,1,2,1,12.4,12.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1415,502,2,1,1,6.15,8.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1779,1415,48,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1780,1415,15,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1781,1415,31,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1782,1415,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1416,502,35,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1417,502,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1418,502,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(503,'31a5cc70-223a-45c9-8c99-013f16ea870d',3,'2013-03-18T02:40:00.000Z','(376) 235-6524','2013-03-18T03:15:00.000Z',2,'P.O. Box 929, 8134 Phasellus Av.','Aliquet','HI','33271',19.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1419,503,2,3,1,14.45,19.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1783,1419,49,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1784,1419,16,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1785,1419,17,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1786,1419,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(504,'31a5cc70-223a-45c9-8c99-013f16ea870d',2,'2013-04-01T20:50:00.000Z','(376) 235-6524','2013-04-01T21:33:00.000Z',0,NULL,NULL,NULL,NULL,27.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1420,504,1,4,1,16.5,16.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1421,504,23,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1787,1421,60,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1422,504,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(505,'31a5cc70-223a-45c9-8c99-013f16ea870d',2,'2013-04-15T02:30:00.000Z','(376) 235-6524','2013-04-15T03:02:00.000Z',0,NULL,NULL,NULL,NULL,20.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1423,505,1,3,1,14.45,14.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1424,505,24,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1788,1424,61,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1425,505,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(506,'31a5cc70-223a-45c9-8c99-013f16ea870d',2,'2013-05-05T16:40:00.000Z','(376) 235-6524','2013-05-05T17:11:00.000Z',0,NULL,NULL,NULL,NULL,118.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1426,506,12,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1427,506,13,4,2,23.45,67.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1789,1427,50,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1790,1427,51,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1791,1427,18,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1792,1427,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1428,506,14,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1429,506,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1430,506,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1431,506,31,10,2,1.5,3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(507,'31a5cc70-223a-45c9-8c99-013f16ea870d',2,'2013-05-05T19:05:00.000Z','(376) 235-6524','2013-05-05T19:43:00.000Z',0,NULL,NULL,NULL,NULL,25.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1432,507,15,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1793,1432,32,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1794,1432,33,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1795,1432,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1433,507,25,7,1,3.95,3.95,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1796,1433,62,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1434,507,32,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(508,'31a5cc70-223a-45c9-8c99-013f16ea870d',2,'2013-05-10T21:35:00.000Z','(376) 235-6524','2013-05-10T22:20:00.000Z',0,NULL,NULL,NULL,NULL,26.85);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1435,508,16,6,1,21.45,26.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1797,1435,12,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1798,1435,52,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1799,1435,19,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1800,1435,41,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1801,1435,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(509,'31a5cc70-223a-45c9-8c99-013f16ea870d',3,'2013-05-11T00:40:00.000Z','(376) 235-6524','2013-05-11T01:17:00.000Z',2,'P.O. Box 929, 8134 Phasellus Av.','Aliquet','HI','33271',48.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1436,509,17,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1802,1436,42,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1803,1436,43,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1804,1436,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(510,'31a5cc70-223a-45c9-8c99-013f16ea870d',2,'2013-05-17T20:45:00.000Z','(376) 235-6524','2013-05-17T21:25:00.000Z',0,NULL,NULL,NULL,NULL,78.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1437,510,18,3,2,20.95,41.9,'no pickles');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1438,510,19,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1805,1438,34,2,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1806,1438,13,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1807,1438,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1439,510,33,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1440,510,34,12,2,2.75,5.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(511,'31a5cc70-223a-45c9-8c99-013f16ea870d',2,'2013-05-20T16:45:00.000Z','(376) 235-6524','2013-05-20T17:21:00.000Z',0,NULL,NULL,NULL,NULL,9.25);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1441,511,26,8,1,7.95,9.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1808,1441,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1809,1441,35,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(512,'873a988f-9691-4a26-9a7f-013f16ea870e',3,'2013-03-12T19:00:00.000Z','(814) 528-1833','2013-03-12T19:32:00.000Z',2,'Ap #133-8301 Ut, Avenue','Luctus','FL','21849',63.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1442,512,20,3,2,20.95,48.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1810,1442,36,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1811,1442,44,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1443,512,27,9,1,8.95,12.85,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1812,1443,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1813,1443,14,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1814,1443,45,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1815,1443,15,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1444,512,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(513,'873a988f-9691-4a26-9a7f-013f16ea870e',2,'2013-04-11T00:45:00.000Z','(814) 528-1833','2013-04-11T01:25:00.000Z',0,NULL,NULL,NULL,NULL,44.5);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1445,513,21,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1446,513,2,2,1,12.4,17.8,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1816,1446,16,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1817,1446,37,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1818,1446,46,1,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1447,513,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1448,513,37,13,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(514,'873a988f-9691-4a26-9a7f-013f16ea870e',3,'2013-04-21T00:00:00.000Z','(814) 528-1833','2013-04-21T00:44:00.000Z',2,'Ap #133-8301 Ut, Avenue','Luctus','FL','21849',33.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1449,514,3,5,1,26.95,33.7,'put all the anchovies on one half, mushrooms on the other half');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1819,1449,17,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1820,1449,18,1,2.25);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1821,1449,38,1,2.25);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(515,'873a988f-9691-4a26-9a7f-013f16ea870e',2,'2013-05-01T16:40:00.000Z','(814) 528-1833','2013-05-01T17:21:00.000Z',0,NULL,NULL,NULL,NULL,31.65);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1450,515,4,4,1,23.45,31.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1822,1450,47,1,4.1);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1823,1450,19,2,4.1);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(516,'873a988f-9691-4a26-9a7f-013f16ea870e',3,'2013-05-21T00:05:00.000Z','(814) 528-1833','2013-05-21T00:50:00.000Z',2,'Ap #133-8301 Ut, Avenue','Luctus','FL','21849',35.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1451,516,2,3,2,14.45,35.7,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1824,1451,13,2,3.4);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(517,'873a988f-9691-4a26-9a7f-013f16ea870e',2,'2013-05-26T02:15:00.000Z','(814) 528-1833','2013-05-26T02:55:00.000Z',0,NULL,NULL,NULL,NULL,8.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1452,517,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1825,1452,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(518,'f283762c-53c5-45b8-af2e-013f16ea870f',2,'2013-03-20T20:30:00.000Z','(594) 147-8651','2013-03-20T21:04:00.000Z',0,NULL,NULL,NULL,NULL,11.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1453,518,29,9,1,8.95,11.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1826,1453,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1827,1453,14,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1828,1453,39,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(519,'d92660d7-37af-4e44-8851-013f16ea8710',3,'2013-04-14T19:00:00.000Z','(153) 558-2447','2013-04-14T19:38:00.000Z',2,'636 Mi Street','Egestas','OH','62494',23.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1454,519,5,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(520,'d92660d7-37af-4e44-8851-013f16ea8710',2,'2013-05-10T22:15:00.000Z','(153) 558-2447','2013-05-10T22:50:00.000Z',0,NULL,NULL,NULL,NULL,35.9);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1455,520,6,4,1,23.45,23.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1456,520,30,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1829,1456,60,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1830,1456,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1457,520,38,14,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(521,'d92660d7-37af-4e44-8851-013f16ea8710',3,'2013-05-20T17:45:00.000Z','(153) 558-2447','2013-05-20T18:23:00.000Z',2,'636 Mi Street','Egestas','OH','62494',36.45);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1458,521,7,6,1,21.45,24.15,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1831,1458,15,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1459,521,22,8,1,7.95,10.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1832,1459,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1833,1459,16,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1460,521,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(522,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-03-03T18:15:00.000Z','(526) 161-6430','2013-03-03T18:55:00.000Z',0,NULL,NULL,NULL,NULL,63.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1461,522,8,3,1,20.95,20.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1462,522,9,3,1,20.95,26.05,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1834,1462,48,1,3.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1835,1462,40,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1463,522,10,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1836,1463,17,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1837,1463,49,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1838,1463,50,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1464,522,40,15,1,2,2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1465,522,41,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1466,522,31,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(523,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-04-01T17:50:00.000Z','(526) 161-6430','2013-04-01T18:28:00.000Z',0,NULL,NULL,NULL,NULL,37.7);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1467,523,11,2,1,16.95,18.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1839,1467,51,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1468,523,23,9,2,8.95,17.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1840,1468,62,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1841,1468,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1469,523,32,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(524,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-04-03T22:05:00.000Z','(526) 161-6430','2013-04-03T22:41:00.000Z',0,NULL,NULL,NULL,NULL,57.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1470,524,12,2,1,16.95,19.65,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1842,1470,52,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1843,1470,20,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1471,524,13,5,1,26.95,31.45,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1844,1471,21,2,4.5);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1845,1471,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1472,524,33,12,1,2.75,2.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1473,524,34,11,2,1.95,3.9,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(525,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-04-03T23:15:00.000Z','(526) 161-6430','2013-04-03T23:52:00.000Z',0,NULL,NULL,NULL,NULL,7.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1474,525,24,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1846,1474,63,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1847,1474,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(526,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-05-01T17:35:00.000Z','(526) 161-6430','2013-05-01T18:12:00.000Z',0,NULL,NULL,NULL,NULL,3.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1475,526,25,7,1,3.95,3.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1848,1475,64,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1849,1475,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(527,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-05-17T22:45:00.000Z','(526) 161-6430','2013-05-17T23:29:00.000Z',0,NULL,NULL,NULL,NULL,88.15);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1476,527,14,4,1,23.45,29.6,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1850,1476,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1851,1476,22,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1852,1476,19,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1853,1476,57,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1477,527,15,4,2,23.45,55.1,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1854,1477,23,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1855,1477,13,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1478,527,35,11,1,1.95,1.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1479,527,36,10,1,1.5,1.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(528,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-05-23T20:05:00.000Z','(526) 161-6430','2013-05-23T20:40:00.000Z',0,NULL,NULL,NULL,NULL,26.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1480,528,16,5,1,26.95,26.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(529,'5d31ec29-280b-41fd-a713-013f16ea8711',2,'2013-05-26T02:00:00.000Z','(526) 161-6430','2013-05-26T02:46:00.000Z',0,NULL,NULL,NULL,NULL,13.75);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1481,529,2,2,1,12.4,13.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1856,1481,14,1,1.35);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(530,'944e40ae-3d87-4c94-9058-013f16ea8712',3,'2013-03-02T02:20:00.000Z','(245) 505-1225','2013-03-02T03:02:00.000Z',2,'P.O. Box 987, 3876 Lectus Rd.','Turpis','OR','74060',24.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1482,530,17,3,1,20.95,24.35,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1857,1482,24,1,1.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1858,1482,15,1,1.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(531,'944e40ae-3d87-4c94-9058-013f16ea8712',2,'2013-04-10T20:30:00.000Z','(245) 505-1225','2013-04-10T21:05:00.000Z',0,NULL,NULL,NULL,NULL,36.95);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1483,531,18,4,1,23.45,25.5,'ring the bell and leave on the porch');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1859,1483,41,1,2.05);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1484,531,26,8,1,7.95,7.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1860,1484,58,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1485,531,37,13,2,1.75,3.5,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(532,'82483c0d-4440-400f-874d-013f16ea8713',2,'2013-03-01T21:45:00.000Z','(268) 718-3205','2013-03-01T22:24:00.000Z',0,NULL,NULL,NULL,NULL,25.3);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1486,532,19,1,1,7.65,10.25,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1861,1486,42,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1862,1486,25,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1863,1486,26,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1864,1486,43,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1865,1486,53,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1487,532,27,9,1,8.95,13.3,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1866,1487,59,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1867,1487,60,1,0.45);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1868,1487,44,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1869,1487,27,1,1.3);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1870,1487,45,1,1.3);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1488,532,38,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(533,'82483c0d-4440-400f-874d-013f16ea8713',2,'2013-05-03T20:45:00.000Z','(268) 718-3205','2013-05-03T21:16:00.000Z',0,NULL,NULL,NULL,NULL,30.35);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1489,533,20,2,1,16.95,19.65,'very light on the sauce');
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1871,1489,4,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1872,1489,28,2,2.7);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1490,533,28,9,1,8.95,8.95,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1873,1490,61,1,0);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1874,1490,54,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1491,533,39,14,1,1.75,1.75,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(534,'82483c0d-4440-400f-874d-013f16ea8713',2,'2013-05-10T16:15:00.000Z','(268) 718-3205','2013-05-10T16:53:00.000Z',0,NULL,NULL,NULL,NULL,9.4);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1492,534,2,1,1,6.15,9.4,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1875,1492,16,1,0.65);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1876,1492,46,2,2.6);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(535,'00c9fef0-0b48-4cc7-9058-013f16ea8714',2,'2013-03-01T18:05:00.000Z','(220) 807-9902','2013-03-01T18:44:00.000Z',0,NULL,NULL,NULL,NULL,23.2);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1493,535,2,2,1,12.4,23.2,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1877,1493,47,2,5.4);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1878,1493,48,1,2.7);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1879,1493,17,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1880,1493,29,1,1.35);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1881,1493,55,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT INTO [dbo].[Order] ([Id],[CustomerId],[OrderStatusId],[OrderDate],[Phone],[DeliveryDate],[DeliveryCharge],[DeliveryStreet],[DeliveryCity],[DeliveryState],[DeliveryZip],[ItemsTotal])VALUES(536,'00c9fef0-0b48-4cc7-9058-013f16ea8714',2,'2013-03-01T22:20:00.000Z','(220) 807-9902','2013-03-01T23:05:00.000Z',0,NULL,NULL,NULL,NULL,27.55);
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON
INSERT INTO [dbo].[OrderItem] ([Id],[OrderId],[ProductId],[ProductSizeId],[Quantity],[UnitPrice],[TotalPrice],[Instructions])VALUES(1494,536,21,4,1,23.45,27.55,NULL);
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
SET IDENTITY_INSERT [dbo].[OrderItemOption] ON
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1882,1494,30,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1883,1494,18,1,2.05);
INSERT INTO [dbo].[OrderItemOption] ([Id],[OrderItemId],[ProductOptionId],[Quantity],[Price])VALUES(1884,1494,56,1,0);
SET IDENTITY_INSERT [dbo].[OrderItemOption] OFF
