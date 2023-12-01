--
-- MySQL Database 
-- MGIS 320 PROJECT PART 3
-- Original code by Madeline Mariano, An Dang, Abby Smith, Swetha Nair,
--      with minor modifications by the instructor
--

drop database if exists SSAMP_database;
create database SSAMP_database;
use SSAMP_database;


----- Customer Database--------
create table Customer
(
	CustomerID            int,
    CustCoursID           int,
    FirstName             char,
    LastName              char,
    CustomerAddress       varchar(),
    PaymentType           char,
    PhoneNumber           int,
    Email                 varchar(),
    primary key (CustomerID)
);

insert into Customer (CustomerID, CustCourseID, FirstName, LastName, CustomerAddress, PaymentType, PhoneNumber, Email)
values
();

----- MembershipPlan Database--------
create table MembershipPlan
(
	MembershipPlanID     int,
    MembershipFee        decimal,
    PlanDescription      varchar(),
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
    PlanDescription varchar(),
	Cost            decimal,
    primary key (RentalPlanID)
);

insert into RentalPlan (RentalPlanID, PlanDescription, Cost)
values
();

----- Product Type --------
create table ProductType
(
	ProductTypeID        char,
    ProductDescription   varchar(),
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
    ModelName          varchar(),
    ModelDescription   varchar(),
    WarrantyLength     int,
    CurrentCost        decimal,
    ColorID            char,
    CurrentStock       int,
    PackageOffered     char,
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
    CourseFocus         varchar(),
    CourseDescription   varchar(),
    Date                date,
    Duration            int,
    Music               varchar(),
    BodyActivity        varchar(),
    primary key (CourseID),
    foreign key (ProductTypeID) references ProductType(ProductTypeID)
);

insert into Course (CourseID, ProductTypeID, CourseFocus, CourseDescription, Date, Duration, Music, BodyActivity)
values
();

----- Course---
create table Course
(
	CourseID            int,
    ProductTypeID       char,
    CourseFocus         varchar(),
    CourseDescription   varchar(),
    Date                date,
    Duration            int,
    Music               varchar(),
    BodyActivity        varchar(),
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
    ShippingAddress    varchar(),
    Price              decimal,
    Weight             decimal,
    ShippingDate       date,
    ShippingOption     char,
    PaymentType        char,
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
    AmtPaid               decimal,
    Warranty              int,
    DateBought            date,
    Personalization       varchar(),
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
    CustomerFee        decimal,
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



