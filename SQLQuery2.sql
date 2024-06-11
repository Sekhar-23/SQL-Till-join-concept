create database Tarak
create table Family(father_name varchar(50),name varchar(50),mother_name varchar(50),DOB Date,Education Varchar(50),graduation_day date)
insert into Family values('raghav','Taraka','Rani','2003/12/20','BTECH','2025/06/06')
select * from Family
truncate table Family
select * from Family
alter table Family add Branch varchar(50)
select * from Family
alter table Family alter column Branch NVARCHAR(50)
alter table Family drop column Branch
Select * from Family
select DOB from Family
insert into Family(DOB) values('2003/12/20')
insert into Family(DOB) values('2014/12/02')
insert into Family(DOB) values('2011/11/12')
insert into Family(DOB) values('2005/03/12')
insert into Family(DOB) values('2000/01/02')
select * from Family
select DOB from Family
update Family set father_name='Nagababu',mother_name='Gouthami' where DOB in('2014-12-02','2011-11-12')
update Family set father_name='sivaya',mother_name='Nagaraja' where DOB=('2000-01-02')
update Family set father_name='raghav',mother_name='Rani' where DOB=('2005-03-12')
select father_name , mother_name,DOB from Family
update Family set father_name='raghav',mother_name='Rani' where DOB=('2003-12-20')
select father_name,mother_name,DOB from Family
update Family set name='Taraka' where DOB='2003-12-20'
update Family set name='Harsha' where DOB='2005-03-12'
update Family set name='Prasad' where DOB='2000-01-02'
update Family set name='Vishal' where DOB='2011-11-12'
update Family set name='Charan' where DOB='2014-12-02'
delete Family where DOB='2003-12-20'
select * from Family
insert into Family values('Raghav','Tarak','Rani','2003-12-20','BTECH','2025')
select * from Family
delete Family where graduation_day='2025-01-01'
use Tarak
select * from Family
use master
truncate table Family
select * from Family
drop table Family
select * from Family
use Tarak
update Family set Education='ITI',graduation_day='2020-07-07' where name='Prasad'
update Family set Education='8th standard' where name='Vishal'
update Family set Education='5th standard' where name='Charan'
update Family set Education='Diplmo' where name='Harsha'
select * from Family
insert into Family values('Raghav','Tarak','Rani','2003-12-20','BTECH','2025-08-08')
truncate table Family
insert into Family values('Sivahya','Prasad','Nagaraja','2000-01-02','ITI','2020-07-07')
insert into Family(father_name,name,mother_name,DOB,Education) values('Raghav','Tarak','Rani','2003-12-20','BTECH')
insert into Family(father_name,name,mother_name,DOB,Education) values('Raghav','Harsha','Rani','2005-03-12','Diplmo')
insert into Family(father_name,name,mother_name,DOB,Education) values('Nagababu','Vishal','Gouthami','2011-11-12','8th standard')
insert into Family(father_name,name,mother_name,DOB,Education) values('Nagababu','Vishal','Gouthami','2014-12-02','5th standard')
update Family set DOB='2000-01-02' where name='Prasad'