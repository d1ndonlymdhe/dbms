create database CollMgmtSys;
use CollMgmtSys;

CREATE TABLE student(
    snum integer primary key,
    name varchar(100),
    major varchar(50),
    level varchar(20),
    age integer
);

CREATE TABLE faculty(
    fid varchar(10) primary key,
    name varchar(50),
    dept varchar(30)
);

CREATE TABLE class(
    name varchar(30),
    time varchar(10),
    room varchar(5),
    fid varchar(10),
    foreign key (fid) references faculty(fid)
);

CREATE TABLE enrolled(
    snum integer,
    classname varchar(10),
    foreign key (snum) references student(snum)
);


