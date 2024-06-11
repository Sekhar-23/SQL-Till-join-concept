use Tarak_Family_Members
select convert(varchar,cast('2023-12-23' as date),106)
select format(cast('2023-12-05' as date),'MM-dd-yyyy')
select * from Tarak_Family
select * from Address
create table Address(name varchar(50),salary int,city varchar(15))
insert into Address values('raj',28000,'Hyderabad'),('krishna',96000,'Mumbai'),('sateesh',89000,'Chennai'),('Anup',200000,'Pune'),('setu',250000,'Vijayawada'),('gyionsh',29000,'Delhi')
select TF.father_name,TF.name,TF.DOB,TF.salary,Addres.city from Tarak_Family TF inner join Address Addres on TF.name=Addres.name
select TF.father_name,TF.name,TF.DOB,TF.salary,Addres.city from Tarak_Family TF left outer join Address Addres on TF.name=Addres.name
select TF.father_name,TF.name,TF.DOB,Addres.salary,Addres.city from Tarak_Family TF right join Address Addres on TF.name=Addres.name
select TF.father_name,TF.name,TF.DOB,TF.salary,Addres.city from Tarak_Family TF Full join Address Addres on TF.name=Addres.name
select TF.father_name,TF.name,TF.DOB,TF.salary,Addres.city from Tarak_Family TF cross join Address Addres
insert into Tarak_Family values('Nagababu','Vishal','Radha','2013-12-12','6th standard',null,null)