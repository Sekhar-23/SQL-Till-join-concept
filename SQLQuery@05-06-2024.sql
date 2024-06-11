use Tarak
--where:is used for fiter the date based on specific condition either the single or multiple columns
select * from Family
select * from Family where mother_name='Gouthami' --single column
select * from family where mother_name='Gouthami' and father_name='Nagababu' --multiple columns
alter table Family add salary int
update Family set salary=28000 where name='Prasad'
update Family set salary=96000 where name='Tarak'
update Family set salary=89000 where name='Harsha'
update Family set salary=200000 where name='Vishal'
update Family set salary=250000 where name='Charan'
update Family set salary=29000 where name='chakra'
select father_name,sum(salary) as Total_salary_of_Children from Family group by father_name
select father_name,sum(salary) as Total_salary_of_Children from Family where mother_name='Rani' group by father_name
select father_name,sum(salary) as Total_salary_of_Children from Family group by father_name having sum(salary)<100000
select father_name,mother_name,sum(salary) as Total_salary_of_Children from Family group by father_name --voilate rule 1
select father_name,sum(salary) as Total_salary_of_Children from Family group by father_name,mother_name --rule2
select father_name,mother_name,sum(salary) as Total_salary_of_Children from Family group by father_name,mother_name --rule1
select father_name,sum(salary) as Total_salary_of_Children,max(salary) as Max_salary from Family group by father_name
select father_name,sum(salary) as Total_salary_of_Children,max(salary) as Max_salary from Family group by father_name having max(salary)>200000
select father_name,sum(salary) as Total_salary_of_Children,max(salary)Max_salary,count(salary) as count_of from Family group by father_name,mother_name having mother_name='Rani'
select father_name,sum(salary) as Total_salary_of_Children,max(salary)Max_salary from Family group by father_name,salary having salary>50000 order by  max(salary) DESC
--Data back up
select * into Tarak_Family from family where 2=3 --structure back up
select * from Tarak_family
insert into Tarak_Family select * from family --data back up
select * into Tarak_Members from family --stucture+ data backup
select * from Tarak_Members
EXEC sp_rename 'dbo.family.Education','Qualification' --rename of column name
select * from Family
--rename table name
EXEC sp_rename 'dbo.Family','Tarak_Brothers'
select * from Tarak_Brothers
use master
EXEC sp_renamedb 'Tarak','Tarak_Family_Members'



