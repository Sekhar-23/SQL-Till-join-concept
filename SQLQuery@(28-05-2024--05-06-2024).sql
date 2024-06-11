create database [students details] --database creation
use [students details]
create schema [10th class] --schema creation
create table [10th class].[personal Details](roll_number int primary key,name varchar(50),mother_name varchar(50),father_name varchar(50),Mat_score int,physics_score int,phone_number bigint,Date_of_join date) --Table creation
select * from [10th class].[personal Details] --data retrival(DSL/DRL)
create table [10th class].[Education Details](roll_number int primary key,name varchar(50),Mat_score int,physics_score int,phone_number bigint,Date_of_join date)
select * from [10th class].[Education Details]
--DML Language commands
--1.insert
--case 1:
insert into [10th class].[personal Details] values(101,'Ram','Rupa','Raju',25,25,9676344461,'2010-06-07')
--case 2,3:
insert into [10th class].[personal Details](roll_number,name,mother_name,father_name,mat_score,physics_score,phone_number,Date_of_join) values(102,'Rama','Rupa devi','Raju vardhan',26,28,9676301461,'2011-05-07'),(103,'Laxmani','Vani','John',28,28,8796344461,'2010-06-09'),(104,'Rama krishna','joythi','Revanth',25,30,9786543098,'2010-06-17'),(105,'Veni','Rani','venkat',29,29,4678901234,'2011-06-07'),(106,'Charan','Gouthami','Nagababu',30,30,870912430,'2011-06-17')
--2.update
update [10th class].[personal Details] set phone_number=8907686541 where name='Ram' --single column update
update [10th class].[personal Details] set Mat_score=30,physics_score='29' where name='charan' --multiple columns 
select * from [10th class].[Basic Details]
--3.delete
delete from [10th class].[personal Details] where name='Veni' --single row
exec sp_rename '[10th class].[[Basic Details]]]','Basic Details' --rename of table
exec sp_rename '[10th class].[Basic Details].phone_number','contacts' --Rename of column
exec sp_renamedb 'students details','Students_Details' --Rename of Database
--DDL commands
--1.alter
alter table [10th class].[Basic Details] add Gender char(7) --Alter the column Name
--case 2: delete the column
alter table [10th class].[Basic Details] drop column Gender --deletion of the column Name
--case 3:modify the data type of column name
alter table [10th class].[Basic Details] alter column father_name varchar(45) --Modify the column date type
--Truncate
insert into [10th class].[Education Details] values(101,'Ram',25,25,9676344461,'2010-06-07'),(102,'Rama',26,28,9676301461,'2011-05-07'),(103,'Laxmani',28,28,8796344461,'2010-06-09')
truncate table [10th class].[Education Details] 
--drop --delete the records of table from database
drop table [10th class].[Education Details]
--TCL Commands
--1.Roll Back
--2.save
--commit
select * from [10th class].[Basic Details]
--1.Roll Back
--step 1:
Begin Transaction
update [10th class].[Basic Details] set Mat_score=30 where physics_score=25
--step:2
Begin Transaction
update [10th class].[Basic Details] set Mat_score=30 where physics_score=25
rollback
--2.save point
--step:1
Begin Transaction T2
update [10th class].[Basic Details] set Mat_score=30 where physics_score=25
--step:2
Begin Transaction T2
update [10th class].[Basic Details] set Mat_score=30 where physics_score=25
save Transaction T2
--step:3 :IT can be roll_backed
Begin Transaction
update [10th class].[Basic Details] set Mat_score=30 where physics_score=25
rollback
--commit
--step1:
Begin Transaction
update [10th class].[Basic Details] set Mat_score=29 where physics_score=25
commit
--step2:
Begin Transaction
update [10th class].[Basic Details] set Mat_score=29 where physics_score=25
rollback
select * from [10th class].[Basic Details]
--Set Operators
--{=,!=,>,<,>=,<=,}
select * from [10th class].[Basic Details] where Mat_score=25
select * from [10th class].[Basic Details] where Mat_score!=25
select * from [10th class].[Basic Details] where Mat_score<=25
select * from [10th class].[Basic Details] where Mat_score>=25
select * from [10th class].[Basic Details] where Mat_score>25
select * from [10th class].[Basic Details] where Mat_score<25
--{IN,NOT IN,AND,OR,BETWEEN,LIKE,NOT LIKE}
select * from [10th class].[Basic Details] where Mat_score in(25,24,30)
select * from [10th class].[Basic Details] where Mat_score not in (25,30)
select * from [10th class].[Basic Details] where Mat_score between 28 and 30
select * from [10th class].[Basic Details] where Mat_score=25 and physics_score=30
select * from [10th class].[Basic Details] where Mat_score=25 or physics_score=28
select * from [10th class].[Basic Details] where contacts like'9%1'
select * from [10th class].[Basic Details] where contacts like'_9%1'
select * from [10th class].[Basic Details] where contacts like'9%6_'
select * from [10th class].[Basic Details] where contacts like'9%1%'
select * from [10th class].[Basic Details] where name like'R%'
select * from [10th class].[Basic Details] where name like'_a%'
select * from [10th class].[Basic Details] where name like'%m_'
select * from [10th class].[Basic Details] where name like'%a'
select * from [10th class].[Basic Details] where name like'%a%'
select * from [10th class].[Basic Details] where name not like'R%'
select * from [10th class].[Basic Details] where name not like'_a%'
select * from [10th class].[Basic Details] where name not like'%m_'
select * from [10th class].[Basic Details] where name not like'%a'
select * from [10th class].[Basic Details] where name not like'%a%'
--CLAUSES
--1.Where
--2.groupby
--3.having
--4.order by
--2.groupby
select name,sum(Mat_score)as SUM from [10th class].[Basic Details] group by name
--3.having
select name,sum(Mat_score)as SUM from [10th class].[Basic Details] group by name having name like 'R%'
--4.order by
select name,sum(Mat_score)as SUM from [10th class].[Basic Details] group by name,Mat_score having Mat_score in(25,28,30) order by Mat_score DESC
--Data Backup
--1.Structure backup 
select * into [10th class].Basic_Details from [10th class].[Basic Details] where 10=2
select * from [10th class].Basic_Detail
select * from [10th class].Basic_Details
--2.Data backup
Insert into [10th class].Basic_Details select * from [10th class].[Basic Details]
--3.Structure+Data Backup
select * into [10th class].Basic_Detail from [10th class].[Basic Details]




