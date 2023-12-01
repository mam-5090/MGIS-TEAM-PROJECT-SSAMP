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
();

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



