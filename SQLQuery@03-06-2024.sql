use Tarak
Begin Transaction
update Family set DOB='2003-12-10' where name='Tarak'
select * from Family
Begin Transaction
update Family set DOB='2003-12-10' where name='Tarak'
rollback
Begin Transaction
update Family set DOB='2003-12-10' where name='Tarak'
update Family set DOB='2003-11-10' where name='Harsha'
Begin Transaction
update Family set DOB='2003-12-10' where name='Tarak'
update Family set DOB='2003-11-10' where name='Harsha'
rollback
Begin Transaction Transaction1
update Family set DOB='2003-12-10' where name='Tarak'
update Family set DOB='2003-11-10' where name='Harsha'
Begin Transaction Transaction1
update Family set DOB='2003-12-10' where name='Tarak'
update Family set DOB='2003-11-10' where name='Harsha'
save Transaction Transaction1
Begin Transaction Transaction1
update Family set DOB='2003-12-10' where name='Tarak'
update Family set DOB='2003-11-10' where name='Harsha'
Begin Transaction Transaction1
update Family set DOB='2003-12-20' where name='Tarak'
update Family set DOB='2005-03-12' where name='Harsha'
commit
Begin Transaction Transaction1
update Family set DOB='2003-12-10' where name='Tarak'
update friends set age=22 where name='Radha'
rollback
Begin Transaction Transaction1
update Family set DOB='2003-12-10' where name='Tarak'
update friends set age=22 where name='Radha'
select * from friends
select * from Family
insert into friends values('Ram',20,9676344461,'wipro','Hyderabad','Male')
insert into friends values('Radha',21,8790912430,'wipro','Bangalore','Female')


