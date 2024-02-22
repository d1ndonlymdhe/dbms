INSERT INTO tblCustomer (CustID, Name, Address, ContactNo) VALUES 
(1, 'Sam', 'New Delhi', "9555555555"),
(2, 'Rahul', 'Gurgaon', "9666666666"),
(3, 'Hans', 'Noida', "9444444444"),
(4, 'Jeetu', 'Delhi', "9333333333"),
(5, 'Ankit', 'Noida', "9222222222");


INSERT INTO tblProduct (ProductID, Name, UnitPrice, CatID, EntryDate, ExpiryDate) VALUES 
(1, 'Dell Computer', 25000, 1, '2012-10-16 23:05:05', '2012-10-16 23:05:05'),
(2, 'HCL Computer', 20000, 1, '2012-10-16 23:05:46', '2012-10-16 23:05:46'),
(3, 'Apple Mobile', 40000, 3, '2012-10-16 23:06:11', '2012-10-16 23:06:11'),
(4, 'Samsung Mobile', 25000, 3, '2012-10-16 23:06:28', '2012-10-16 23:06:28'),
(5, 'Sony Laptop', 35000, 2, '2012-10-16 23:06:52', '2012-10-16 23:06:52'),
(6, 'Dell Laptop', 36000, 2, '2012-10-16 23:07:07', '2012-10-16 23:07:07'),
(7, 'HP Printer', 12000, 4, '2012-10-16 23:07:35', '2012-10-16 23:07:35'),
(8, 'Canon Printer', 10000, 4, '2012-10-16 23:07:54', '2012-10-16 23:07:54');


INSERT INTO tblOrder (OrderID, ProductID, Quantity, Price, CustomerID, ContactNo) VALUES 
(1, 1, 6, 150000, 1, '9555555555'),
(2, 2, 4, 80000, 2, NULL),
(3, 2 ,2 ,40000 ,3 ,'9444444444'),
(4 ,3 ,5 ,200000 ,4 ,'9333333333'),
(5 ,5 ,1 ,35000 ,5 ,'9666666666');