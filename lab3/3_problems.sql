-- use CollMgmtSys;
--1
select * from student where major="Software";
--2
select name,age,major from student;
--3
select name from student where major="Software" and age>25;
--4
select dept as department from faculty;
--5
select * from student where name like "S%";
--6
select * from faculty where name like "_.T%";
--7
select name from class where time="E5-6";
--8
select name from class where time="E5-6" and fid in (
    select fid from faculty where name like "B%"
);
--9
select * from faculty order by dept asc,fid asc;
--10
select name from class where room="R3" or fid in (
    select fid from faculty where name="B.Devkota"
);
--11
select name from student inner join enrolled on student.snum = enrolled.snum where enrolled.classname="C++";
--12
select name from faculty where dept="Computer" or fid in (
    select fid from class where time like "E%"
);
--13
select faculty.name,faculty.dept from faculty inner join class on faculty.fid = class.fid where class.time="M8-9";
--14
select avg(age) as "Average Age" from student where level="Bachelor";
--15
select count(*) as "number of faculties" from faculty;
--16
select enrolled.classname from student inner join enrolled on enrolled.snum = student.snum where student.name="Sam KC";
--17
select student.name from student where snum in (
    select snum from enrolled where classname in  (
        select class.name from class inner join faculty on faculty.fid = class.fid where NOT faculty.name="B.Devkota"
    )
);
--18
-- start transaction;
    update class
    set time="M7-8"
    where name="C++" and room="R3";
    select * from class;
-- rollback;

--19
select name from student where major = "Software" or major="Computer";
--20
-- start transaction;
delete from enrolled where snum in (select min(age) as age from student);
delete from student where snum in (select min(age) as age from student);
select * from student;
-- rollback;