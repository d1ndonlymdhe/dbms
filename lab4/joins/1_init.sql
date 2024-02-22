create database store;
use store;
create table tblCustomer(
    CustID integer primary key,
    Name varchar(50),
    Address varchar(30),
    ContactNo varchar(10)
);

CREATE TABLE tblProduct (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50),
    UnitPrice INT,
    CatID INT,
    EntryDate DATETIME,
    ExpiryDate DATETIME
);

CREATE TABLE tblOrder (
   OrderID INT PRIMARY KEY,
   ProductID INT, 
   Quantity INT,
   Price FLOAT,
   CustomerId INT, 
   ContactNo varchar(10),
   FOREIGN KEY (ProductID) REFERENCES tblProduct(ProductID),
   FOREIGN KEY (CustomerID) REFERENCES tblCustomer(CustID) 
);