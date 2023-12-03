/*
   MySQL Database 
   MGIS 320 PROJECT PART 3
   Original code by Madeline Mariano, An Dang, Abby Smith, Swetha Nair
   Company: Peloton
*/

drop database if exists SSAMP_database;
create database SSAMP_database;
use SSAMP_database;


----- Customer Database--------
create table Customer
(
	CustomerID            int,
    CustCoursID           int,
    FirstName             char(100),
    LastName              char(100),
    CustomerAddress       varchar(255),
    PaymentType           char(100),
    PhoneNumber           int,
    Email                 varchar(255),
    primary key (CustomerID)
);

insert into Customer (CustomerID, CustCourseID, FirstName, LastName, CustomerAddress, PaymentType, PhoneNumber, Email)
values
 
	(0001,	270001,	"Anna",	"Apple",	"1234 Main ST, Rochester NY 14623",	"Visa Credit",	7034019485,	"an.app@hotmail.com"),
	(0002,	270002,	"Boris", "Bank",	"1235 Main ST, Rochester NY 14623",	"Discover Credit",	5713059382,	"bank_boris@gmail.com"),
	(0003,	270003,	"Cameron",	"Carrot",	"1236 Main ST, Rochester NY 14623",	"Discover Credit",	5853494930,	"c_carrot@gmail.com"),
    (0004,	270004,	"Derek",	"Door",	"1237 Main ST, Rochester NY 14623",	"MasterCard Credit",	3154962034,	"ddoor11@gmail.com"),
	(0005,	270005,	"Evelyn",	"Exit",	"1238 Main ST, Rochester NY 14623",	"Visa Credit",	7067483928,	"goodbye_e@hotmail.com"),
	(0006,	270006,	"Fred",	"Fish",	"1239 Main ST, Rochester NY 14623",	"MasterCard Credit",	6783927293,	"fishing_is_life@yahoo.com"),
	(0007,	270007,	"Greg",	"Gong",	"1240 Main ST, Rochester NY 14623",	"Paypal",	7034309432,	"greg_gong@hotmail.com"),
	(0008,	270008,	"Harry",	"Hat",	"1241 Main ST, Rochester NY 14623",	"Paypal",	5128395342,	"hat.harry@gmail.com"),
	(0009,	270009,	"Ivanka",	"Inchworm",	"1242 Main ST, Rochester NY 14623",	"Paypal",	2617458375,	"worm_or_ivanka@hotmail"),
	(0010,	270010,	"Jane",	"Jacket",	"1000 Main ST, Rochester NY 14623",	"Paypal",	5023459862,	"jjacket_purple@gmail.com"),
	(0011,	270011,	"Kristen",	"King",	"1204 Main ST, Rochester NY 14623",	"Visa Credit",	5718889287,	"king.kristy@yahoo.com"),
	(0012,	270012,	"Laura",	"Love",	"1214 Main ST, Rochester NY 14623",	"Visa Credit",	3249084723,	"live_laugh_love@hotmail.com"),
	(0013,	270013,	"Matt",	"Murdock",	"1232 Main ST, Rochester NY 14623",	"Visa Credit",	9854567383,	"matty.mur@gmail.com"),
	(0014,	270014,	"Nora",	"Next",	"2134 Main ST, Rochester NY 14623",	"MasterCard Credit",	7382947853,	"thanks.next99@hotmail.com"),
	(0015,	270015,	"Oliver",	"Orange",	"1284 Main ST, Rochester NY 14623",	"MasterCard Credit",	9013829485,	"orange.juice3@gmail.com"),
	(0016,	270016,	"Paige",	"Penny",	"1294 Main ST, Rochester NY 14623",	"Visa Credit",	7578967384,	"is.penny.a.dime@hotmail.com"),
	(0017,	270017,	"Quinn",	"Question",	"1295 Main ST, Rochester NY 14623",	"Paypal",	4564728394,	"dont_ask_me@yahoo.com"),
	(0018,	270018,	"Rafael",	"Rowboat",	"1253 Main ST, Rochester NY 14623",	"Paypal",	4078274957,	"boat_lover@hotmail.com"),
	(0019,	270019,	"Silas",	"Silver",	"1254 Main ST, Rochester NY 14623",	"Visa Credit",	5085557829,	"silver.fox@yahoo.com"),
	(0020,	270020,	"Tristan",	"Trips",	"1264 Main ST, Rochester NY 14623",	"Discover Credit",	9078495765,	"rather_stayhome@yahoo.com"),
	(0021,	270021,	"Uma",	"Umbrella",	"1274 Main ST, Rochester NY 14623",	"Discover Credit",	2156784356,	"rihannah.queen@gmail.com"),
	(0022,	270022,	"Veda",	"Voyager",	"8796 Main ST, Rochester NY 14623",	"Visa Credit",	7032227584,	"adventure.123@gmail.com"),
	(0023,	270023,	"William",	"Waffle",	"1332 Main ST, Rochester NY 14623",	"Visa Credit",	5719994035,	"ilovejonasbrothers@hotmail.com"),
	(0024,	270024,	"Ximena",	"Xenon",	"1052 Main ST, Rochester NY 14623",	"Discover Credit",	8472930495,	"nice.lastname@yahoo.com"),
	(0025,	270025,	"Yael",	"Yoga",	"4034 Main ST, Rochester NY 14623",	"Paypal",	3859384036,	"ilivenear_lululemon@hotmail.com"),
	(0026,	270026,	"Zahra",	"Zebra",	"5902 Main ST, Rochester NY 14623",	"Visa Credit",	9384950305,	"gotothezoo.once@yahoo.com");

----- MembershipPlan Database--------
create table MembershipPlan
(
	MembershipPlanID     int,
    MembershipFee        decimal(5,5),
    PlanDescription      varchar(255),
    Monthly              bool,
    primary key (MembershipPlanID)
);

insert into MembershipPlan (RentalPlanID, PlanDescription, Cost)
values
();

----- RentalPlan Database--------
create table RentalPlan
(
	RentalPlanID    char,
    PlanDescription varchar(255),
	Cost            decimal(6,5),
    primary key (RentalPlanID)
);

insert into RentalPlan (RentalPlanID, PlanDescription, Cost)
values
();

----- Product Type --------
create table ProductType
(
	ProductTypeID        char(50),
    ProductDescription   varchar(255),
    primary key (ProductTypeID)
);

insert into ProductType (ProductTypeID, ProductDesciption)
values
();

----- Model --------
----- ColorID????---
create table Model
(
	ModelID            int,
    ProductTypeID      char,
    ModelName          varchar(255),
    ModelDescription   varchar(255),
    WarrantyLength     int,
    CurrentCost        decimal(6,5),
    ColorID            char(20),
    CurrentStock       int,
    PackageOffered     char(255),
    primary key (ModelID),
    foreign key (ProductTypeID) references ProductType(ProductTypeID)
);

insert into Model (ModelID, ProductTypeID, ModelName, ModelDescription, WarrantyLength, CurrentCost, ColorID, CurrentStock, PackageOffered)
values
();

----- Course---
create table Course
(
	CourseID            int,
    ProductTypeID       char,
    CourseFocus         varchar(100),
    CourseDescription   varchar(255),
    Date                date,
    Duration            int,
    Music               varchar(100),
    BodyActivity        varchar(100),
    primary key (CourseID),
    foreign key (ProductTypeID) references ProductType(ProductTypeID)
);

insert into Course (CourseID, ProductTypeID, CourseFocus, CourseDescription, Date, Duration, Music, BodyActivity)
values
();

----- Shipping---
create table Shipping
(
	ShippingID         int,
    CustomerID         int,
    PurchaseSerialNum  int,
    ShippingAddress    varchar(255),
    Price              decimal(6,5),
    Weight             decimal(6,5),
    ShippingDate       date,
    ShippingOption     char(100),
    PaymentType        char(200),
    primary key (ShippingID),
    foreign key (CustomerID) references Customer(CustomerID),
    foreign key (PurchaseSerialNum) references CustomerPurchase(PurchaseSerialNum)
);

insert into Shipping (ShippingID, CustomerID, PurchaseSerialNum, ShippingAddress, Price, Weight, ShippingDate, ShippingOption, PaymentType)
values
();

----- CustomerPurchase---
create table CustomerPurchase
(
	PurchaseSerialNum     int,
    ModelID               int,
    ShippingID            int,
    CustomerID            int,
    AmtPaid               decimal(6,5),
    Warranty              int,
    DateBought            date,
    Personalization       varchar(200),
    primary key (PurchaseSerialNum),
    foreign key (ModelID)    references Model(ModelID),
    foreign key (ShippingID) references Shipping(ShippingID),
    foreign key (CustomerID) references Customer(CustomerID)
);

insert into CustomerPurchase (PurchaseSerialNum, ModelID, ShippingID, CustomerID, AmtPaid, Warranty, DateBought, Personalization)
values
();

----- Rental---
create table Rental
(
	RentalID      int,
    ShippingID    int,
    CustomerID    int,
    ModelID       int, 
    RentalPlanID  int, 
    Warranty      int,
    RentalDate    date,
    primary key (RentalID),
    foreign key (ShippingID)   references Shipping(ShippingID),
    foreign key (CustomerID)   references Customer(CustomerID),
    foreign key (ModelID)      references Model(ModelID),
    foreign key (RentalPlanID) references RentalPlan(RentalPlanID)
);

insert into Rental (RentalID, ShippingID, CustomerID, ModelID, RentalPlanID, Warranty, RentalDate)
values
();

----- CustomerMembership---
create table CustomerMembership
(
	CustomerID         int,
    MembershipPlanID   int,
    CustomerFee        decimal(5,5),
    SmartDevices       bool,
    HealthMetric       int, 
    Ranking            int,
    ExpirationDate     date,
    foreign key (MembershipPlanID)   references MembershipPlan(MembershipPlanID),
    foreign key (CustomerID)         references Customer(CustomerID)
);

insert into CustomerMembership (CustomerID, MembershipPlanID, CustomerFee, SmartDevices, HealthMetric, Ranking, ExpirationDate)
values
();



