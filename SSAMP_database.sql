--
-- MySQL Database 
-- MGIS 320 PROJECT PART 3
-- Original code by Madeline Mariano, An Dang, Abby Smith, Swetha Nair,
--      with minor modifications by the instructor
--

drop database if exists SSAMP_database;
create database SSAMP_database;
use SSAMP_database;

create table MembershipPlan
--(
    
--);

insert into MembershipPlan (MembershipPlanID, MembershipFee, PlanDescription, PaymentPlan)
values
();

create table CustomerMembership
(
    RepID            int,
    RepFName	     char(30),
    RepLName	     char(30),
    CommPercent		 decimal(3,2),
	primary key (RepID)
);

insert into CustomerMembership ()
	values
	();

create table CustCat
(
    CustCatID	     	char(10),
    CustomerCategory	varchar(20),
	primary key (CustCatID)
);

insert into CustCat (CustCatID, CustomerCategory)
	values
	('COMPSTORE',	'Computer Store'),
	('CORP',	'Corporate'),
	('GIFT',	'Gift Store'),
	('NOVELTY',	'Novelty Shop'),
	('SUPER',	'Supermarket'),
	('HOBBY',	'Hobby Shops');

create table Customer
(
    CustID            	int,
    CustomerName	 	varchar(100),
    CustCatID	    	char(10),
    RepID		 		int,
    PrimaryContact		varchar(50),
    PhoneNumber			char(17),
    CreditLimit			decimal(9,2),
    StreetAddress		varchar(100),
    City				varchar(50),
    StateProvince				varchar(20),
    Zip					char(10),
	primary key (CustID),
    foreign key (RepID) references SalesRep(RepID),
    foreign key (CustCatID) references CustCat(CustCatID)
);

insert into Customer (CustID, CustomerName, CustCatID, RepID, PrimaryContact, PhoneNumber, CreditLimit, StreetAddress,
	City, StateProvince, Zip)
    values
	(3001,	'Cattaneo, Inc.',	'CORP',	105,	'Nicolo Cattaneo',	'(229) 555-0100',	5000,	'9167 N. Squaw Creek Street',	'Sea Island',	'GA',	'31561'),
	(3002,	'ComputerGuru',	'COMPSTORE',	105,	'Alinne Matos',	'(215) 555-0100',	5000,	'48 Sunnyslope Dr.',	'Seiling',	'OK',	'73663'),
	(3003,	'Family First Groceries',	'SUPER',	101,	'Taneli Riutta',	'(262) 555-0100',	5000,	'7133 Lawrence St. ',	'Sayner',	'WI',	'54560'),
	(3004,	'FastBest Computers',	'COMPSTORE',	102,	'Isa Hulsegge',	'(303) 555-0100',	5000,	'65 Central St. ',	'El Segundo',	'CA',	'90245'),
	(3005,	'Neighborhood Markets',	'SUPER',	101,	'Eugen Agafitei',	'(252) 555-0100',	7500,	'7671 Proctor St. ',	'El Segundo',	'CA',	'90245'),
	(3006,	'New GiftMart',	'GIFT',	105,	'Ebru Erdogan',	'(212) 555-0100',	10000,	'8220 Bishop Road ',	'Seiling',	'OK',	'73663'),
	(3007,	'Tailspin Toys (Sans Souci, SC)',	'HOBBY',	105,	'Coralie Emond',	'(405) 555-0100',	25000,	'9824 Brandywine Ave. ',	'Seiling',	'OK',	'73663'),
	(3008,	'Tailspin Toys (Sauquoit, NY)',	'HOBBY',	104,	'Isabell  Duperre',	'(276) 555-0100',	25000,	'793 Mammoth Street',	'Sayner',	'WI',	'54560'),
	(3009,	'Tailspin Toys (Scofield, UT)',	'HOBBY',	102,	'Valerio Cardoso',	'(240) 555-0100',	25000,	'9887 Charles Road ',	'Sentinel Butte',	'ND',	'58654'),
	(3010,	'Tailspin Toys (Seagraves, TX)',	'HOBBY',	104,	'Anindo Mazumdar',	'(803) 555-0100',	25000,	'532 West Clinton Ave. ',	'Sentinel Butte',	'ND',	'58654'),
	(3011,	'Tailspin Toys (Sekiu, WA)',	'HOBBY',	101,	'Duleep Walia',	'(385) 555-0100',	25000,	'919 Canterbury St. ',	'Sentinel Butte',	'ND',	'58654'),
	(3012,	'Unique Novelties',	'NOVELTY',	104,	'Damodar Shenoy',	'(252) 555-0100',	15000,	'8648 Briarwood Dr. ',	'El Segundo',	'CA',	'90245'),
	(3013,	'Vast Enterprises',	'CORP',	101,	'Alena Kellnerova',	'(212) 555-0100',	5000,	'317 Gartner Ave. ',	'Sauquoit',	'NY',	'13456'),
	(3014,	'Wingtip Toys (Sarversville, PA)',	'HOBBY',	101,	'Darakhshan Javaherian',	'(701) 555-0100',	15000,	'551 North Goldfield St.',	'Sentinel Butte',	'ND',	'58654'),
	(3015,	'Wingtip Toys (Sayner, WI)',	'HOBBY',	101,	'Varuna Ganguly',	'(210) 555-0100',	15000,	'135 Cross St.',	'Seagraves',	'TX',	'79359'),
	(3016,	'Wingtip Toys (Schererville, IN)',	'HOBBY',	103,	'Prasert Supitayaporn',	'(219) 555-0100',	15000,	'936 East Jones Street ',	'Schererville',	'IN',	'46375'),
	(3017,	'Wingtip Toys (Shay, PA)',	'HOBBY',	102,	'Noel Cartier',	'(229) 555-0100',	15000,	'857 White St. ',	'Scott',	'LA',	'70583');

create table MyOrder
(
    OrderID      int,
    SaleDate	 date,
    RepID	     int,
    CustID		 int,
	primary key (OrderID),
    foreign key (RepID) references SalesRep(RepID),
    foreign key (CustID) references Customer(CustID)
);

insert into MyOrder (OrderID, SaleDate, RepID, CustID)
    values
    (50001,	'2023-09-01',	101,	3001),
	(50002,	'2023-09-02',	102,	3002),
	(50003,	'2023-09-03',	101,	3003),
	(50004,	'2023-09-04',	101,	3003),
	(50005,	'2023-09-05',	102,	3004),
	(50006,	'2023-09-06',	101,	3005),
	(50007,	'2023-09-07',	103,	3006),
	(50008,	'2023-09-08',	103,	3006),
	(50009,	'2023-09-09',	103,	3007),
	(50010,	'2023-09-10',	104,	3008),
	(50011,	'2023-09-11',	102,	3009),
	(50012,	'2023-09-12',	101,	3010),
	(50013,	'2023-09-13',	101,	3011),
	(50014,	'2023-09-14',	104,	3012),
	(50015,	'2023-09-15',	104,	3012),
	(50016,	'2023-09-16',	101,	3013),
	(50017,	'2023-09-17',	101,	3013),
	(50018,	'2023-09-18',	101,	3014),
	(50019,	'2023-09-19',	101,	3015),
	(50020,	'2023-09-20',	103,	3016),
	(50021,	'2023-09-21',	102,	3017);

create table OrderLine
(
    OrderID            	int,
    LineNum	 			int,
    ItemID	    		char(15),
    ItemDescription		varchar(30),
    SoldQty				int,
    UnitPrice			decimal(9,2),
    ExtendedPrice		decimal(9,2),
    CONSTRAINT pk_orders primary key (OrderID, LineNum), -- composite key as LineNum repeats for diff orders and needed OrderID
    foreign key (ItemID) references Inventory(ItemID),
    foreign key (OrderID) references MyOrder(OrderID)
);

insert into OrderLine (OrderID, LineNum, ItemID, ItemDescription, SoldQty, UnitPrice, ExtendedPrice)
	values
	(50001,	1,	'DRILL',	'Drill',	80,	50.00,	4000.00),
	(50001,	2,	'TS-MEN',	'Men\'s T-Shirt',	72,	18.00,	1296.00),
	(50002,	1,	'TS-MEN',	'Men\'s T-Shirt',	24,	18.00,	432.00),
	(50003,	1,	'COVER',	'Coveralls',	90,	32.00,	2880.00),
	(50003,	2,	'TS-MEN',	'Men\'s T-Shirt',	72,	18.00,	1296.00),
	(50003,	3,	'TAPE',	'Tape',	200,	1.28,	256.00),
	(50004,	1,	'JACKET',	'Jacket',	2,	25.00,	50.00),
	(50004,	2,	'TS-MEN',	'Men\'s T-Shirt',	24,	18.00,	432.00),
	(50004,	3,	'TAPE',	'Tape',	200,	1.28,	256.00),
	(50005,	1,	'TARP',	'Tarp',	100,	15.00,	1500.00),
	(50006,	1,	'BUBBLE',	'Bubble Wrap',	100,	22.00,	2200.00),
	(50006,	2,	'TOOLS',	'Deluxe Toolkit',	10,	230.00,	2300.00),
	(50006,	3,	'TS-MEN',	'Men\'s T-Shirt',	24,	18.00,	432.00),
	(50007,	1,	'TS-MEN',	'Men\'s T-Shirt',	24,	18.00,	432.00),
	(50008,	1,	'COVER',	'Coveralls',	90,	32.00,	2880.00),
	(50009,	1,	'TS-MEN',	'Men\'s T-Shirt',	24,	18.00,	432.00),
	(50009,	2,	'SPACKLE',	'Spackle',	45,	1.89,	85.05),
	(50010,	1,	'TS-MEN',	'Men\'s T-Shirt',	84,	18.00,	1512.00),
	(50010,	2,	'MUG',	'Mug',	10,	13.00,	130.00),
	(50010,	3,	'STD-TOOL',	'Standard Toolkit',	50,	112.00,	5600.00),
	(50011,	1,	'TS-MEN',	'Men\'s T-Shirt',	48,	18.00,	864.00),
	(50011,	2,	'STD-TOOL',	'Standard Toolkit',	50,	112.00,	5600.00),
	(50012,	1,	'BUBBLE',	'Bubble Wrap',	100,	20.00,	2000.00),
	(50012,	2,	'TS-MEN',	'Men\'s T-Shirt',	72,	18.00,	1296.00),
	(50012,	3,	'TAPE',	'Tape',	200,	1.28,	256.00),
	(50013,	1,	'DRILL',	'Drill',	80,	50.00,	4000.00),
	(50014,	1,	'TOOLS',	'Deluxe Toolkit',	10,	230.00,	2300.00),
	(50014,	2,	'TS-LADY',	'Ladies\' T-Shirt',	8,	16.00,	128.00),
	(50014,	3,	'TS-MEN',	'Men\'s T-Shirt',	84,	18.00,	1512.00),
	(50015,	1,	'TS-LADY',	'Ladies\' T-Shirt',	8,	16.00,	128.00),
	(50015,	2,	'STD-TOOL',	'Standard Toolkit',	50,	112.00,	5600.00),
	(50016,	1,	'EPOXY',	'Epoxy',	72,	3.70,	266.40),
	(50016,	2,	'TS-MEN',	'Men\'s T-Shirt',	48,	18.00,	864.00),
	(50016,	3,	'SAMPLER',	'Sampler',	50,	99.00,	4950.00),
	(50017,	1,	'JACKET',	'Jacket',	2,	25.00,	50.00),
	(50018,	1,	'SAMPLER',	'Sampler',	50,	99.00,	4950.00),
	(50018,	2,	'TARP',	'Tarp',	100,	15.00,	1500.00),
	(50019,	1,	'BUBBLE',	'Bubble Wrap',	100,	22.00,	2200.00),
	(50019,	2,	'TOOLS',	'Deluxe Toolkit',	9,	230.00,	2070.00),
	(50019,	3,	'TS-LADY',	'Ladies\' T-Shirt',	8,	16.00,	128.00),
	(50020,	1,	'COVER',	'Coveralls',	90,	32.00,	2880.00),
	(50020,	2,	'TS-MEN',	'Men\'s T-Shirt',	72,	18.00,	1296.00),
	(50020,	3,	'SPACKLE',	'Spackle',	45,	1.89,	85.05),
	(50021,	1,	'TOOLS',	'Deluxe Toolkit',	9,	230.00,	2070.00),
	(50021,	2,	'JACKET',	'Jacket',	2,	25.00,	50.00),
	(50021,	3,	'TS-MEN',	'Men\'s T-Shirt',	72,	18.00,	1296.00),
	(50021,	4,	'TS-LADY',	'Ladies\' T-Shirt',	18,	16.00,	288.00);

-- End script