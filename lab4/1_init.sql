create database lab4;
use lab4;

create table customers(
    id integer primary key AUTO_INCREMENT,
    name varchar(30),
    age integer,
    address varchar(30),
    salary float
);

create view customer_views as select name,age from customers;
