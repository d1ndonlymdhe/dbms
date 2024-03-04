select t1.orderID,t0.ProductID,t0.Name,t0.UnitPrice,t1.Quantity,t1.Price
from tblProduct AS t0
inner join tblOrder as t1 on t0.ProductID = t1.ProductID
ORDER By t0.ProductID;


select t1.OrderID,t0.ProductID,t0.Name,t0.UnitPrice,t1.Quantity as Quantity,t1.Price as Price
from tblProduct as t0
left outer join tblOrder as t1 on t1.ProductID = t0.ProductID
order by t0.ProductID;

select t1.OrderID,t0.ProductID,t0.Name,t0.UnitPrice,t1.Quantity as Quantity,t1.Price as Price
from tblProduct as t0
right outer join tblOrder as t1 on t1.ProductID = t0.ProductID
order by t0.ProductID;

select t1.OrderID,t0.ProductID,t0.Name,t0.UnitPrice,t1.Quantity as Quantity,t1.Price as Price from tblProduct as t0
left join tblOrder as t1 on t0.ProductID = t1.ProductID
union
select t1.OrderID,t0.ProductID,t0.Name,t0.UnitPrice,t1.Quantity as Quantity,t1.Price as Price from tblProduct as t0
right join tblOrder as t1 on t0.ProductID = t1.ProductID;


SELECT t1.OrderID, t0.ProductID, t0.Name, t0.UnitPrice, t1.Quantity, t1.Price
FROM tblProduct AS t0 CROSS JOIN tblOrder AS t1
ORDER BY t0.ProductID;

SELECT t1.OrderID, t0.ProductID, t0.Name, t0.UnitPrice, t1.Quantity, t1.Price, t2.Name AS
Customer
FROM tblProduct AS t0
INNER JOIN tblOrder AS t1 ON t0.ProductID = t1.ProductID
INNER JOIN tblCustomer AS t2 ON t1.CustomerID = t2.CustID
ORDER BY t1.OrderID;

SELECT t1.OrderID, t0.ProductID, t0.Name, t0.UnitPrice, t1.Quantity, t1.Price, t2.Name AS Customer
FROM tblProduct AS t0
INNER JOIN tblOrder AS t1 ON t0.ProductID = t1.ProductID
INNER JOIN tblCustomer AS t2 ON t1.CustomerID = t2.CustID AND t1.ContactNo = t2.ContactNo
ORDER BY t1.OrderID;