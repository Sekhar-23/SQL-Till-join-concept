use Tarak
select * from Family
update Family set DOB='2003-12-20' where name='Tarak'
select * from Family where DOB='2003-12-20' --equal
select * from Family where DOB!='2003-12-20' --not equal
select * from Family where DOB<='2003-12-20' --less than or equal
select * from Family where DOB>='2003-12-20' --greater than or equal
select * from Family where DOB<'2003-12-20' --less than
select * from Family where DOB>'2003-12-20' --greater than
select * from Family where DOB<>'2003-12-20'
select * from Family where Education not in('ITI','BTECH','Diplmo')
select * from Family where Education in('ITI','BTECH','Diplmo')
select name from Family where Education in('ITI','BTECH') and mother_name='Rani'
select name from Family where Education in('ITI','BTECH') and mother_name in('Rani','Nagaraja')
select name from Family where DOB between'2003-01-02'and '2011-12-12'
select name from Family where DOB between'2003-12-20' and '2014-12-12'
update Family set name='Charan' where DOB='2014-12-02'
select name from Family where DOB between'2003-12-20'and '2003-12-20'
select name from Family where DOB='2003-12-20' or Education='ITI'
select name from Family where DOB='2003-01-20' or Education='ITI'
select name from family where name like '_a%' 
--second letter is a 
select name from family where name like 'c%' --start with c
insert into Family values('Raju','chakra','Rupa','2004-12-12','BTECH',null)
select name from family where name like '%a' --ending with a
select name from family where name like '%a_' --second letter with a
select name from family where name like '%a%' --middle with a
select name from family where name not like 'a%' --not stating with a
select name from family where name like '%ra%'
select name from family where name not like '%ra%'--not in the middle with ra
select name from family where name not like '_a%'--not second letter with a
select name from family where name not like '%a_'--last second letter is not a
select name from family where name not like '%a' --last letter is not a