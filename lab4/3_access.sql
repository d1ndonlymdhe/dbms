select * from customer_views;
select name from customer_views where age>25;
drop view customer_views;

select count(*) as "customers age > 25" from customers where age = 25;
select count(*) as "customer count" from customers;
select min(age) as "smallest age" from customers;
select max(age) as "max age" from customers;
select avg(salary) as "average" from customers;
select sum(salary) as "total sal" from customers;