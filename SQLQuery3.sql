use Tarak
create table friends(name varchar(50),age bigint)
insert into friends values('Tarak','20')
select * from friends
insert into friends values('krishna','21'),('Ram','21')
alter table friends drop column mobile_number
insert into friends values('krishna',21,9676344461)
alter table friends add mobile_number bigint
delete friends where name='krishna'
update friends set mobile_number=7687876570 where name='Tarak'
update friends set mobile_number=8790912430 where name='Ram'
alter table friends add working_company varchar(50),place varchar(50)
update friends set working_company='wipro',place='Ponnur' where name='Tarak'
update friends set working_company='wipro',place='Ponnur'
alter table friends add gender char(7) 
delete friends
update friends set working_company='Infosys' where name in ('Tarak','Ram') and working_company='wipro'
delete from friends where name='Ram'