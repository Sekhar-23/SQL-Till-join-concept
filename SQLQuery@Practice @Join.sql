create table Table1(id int,names varchar(50),phone_Number bigint,salary int,gender char(7)) 
create table Table2(id int,names varchar(50),Location varchar(50),Age int,designation varchar(25))
insert into Table1 values(101,'Tarak',9676344461,98000,'Male'),(102,'Sekhar',8790912430,95000,'Male'),(102,'Sekhar',8790912430,95000,'Male'),(104,'Ramya',9676543210,120000,'Female')
--1 1 2  3 3 5
select * from Table1
select * from Table2
insert into Table2 values(101,'Tarak','GUNTUR',21,'Database Developer'),(101,'Radha','Vijayawada',20,'Python Developer'),(102,'Sekhar','Vizag',22,'Manager'),(103,'Rupa','Tirupathi',45,'CEO'),(103,'Krishna','Vizag',22,'project Manager'),(105,'Laxmi','Hyderabad',23,'Accountant')
select * from Table1 T1 inner join Table2 T2 on T1.id=T2.id
delete from Table1 where names='Raj'
insert into Table1 values(102,'Sekhar',8790912430,95000,'Male')
select * from Table1 T1 left outer join Table2 T2 on T1.id=T2.id
select * from Table1 T1 right join Table2 T2 on T1.id=T2.id
select * from Table1 T1 full join Table2 T2 on T1.id=T2.id
truncate table Table1

select * from Table1 T1 cross join Table2 T2
