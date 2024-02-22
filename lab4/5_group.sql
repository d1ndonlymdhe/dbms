select name,sum(salary) from customers group by name;
select * from customers order by name desc,age asc;

select * from customers where address in ('kota','mumbai','indore');


select * from customers where id in (select id from customers where salary>4500);
-- start transaction;
update customers SET
salary = salary * 0.25
where age in (select age from customers where age>27);
select * from customers;
-- rollback;