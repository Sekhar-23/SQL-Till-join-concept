select * from [dbo].[Tarak_Brothers]
select count(distinct mother_name) from [dbo].[Tarak_Brothers]
select getdate() as Today
select DAY(getdate())
select DAY([graduation_day])as DAY_Week from [dbo].[Tarak_Brothers] where name='Prasad'
select MONTH([graduation_day])as MONTH_NUMBER from [dbo].[Tarak_Brothers] where name='Prasad'
select YEAR([graduation_day])as YEAR_ from [dbo].[Tarak_Brothers] where name='Prasad'
select Datepart(YY,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
select Datepart(MM,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
select Datepart(DD,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
select Datepart(MI,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
select Datepart(ss,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
select Datepart(HH,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
select Datepart(Ms,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
select Datepart(WW,[DOB]) as DOB from[dbo].[Tarak_Brothers] where name='Tarak'
--Date Name
select datename(YY,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
select datename(MM,[DOB]) as MoNTH_ from [dbo].[Tarak_Brothers] where name='Tarak'
select datename(DD,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
select datename(WW,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
--DateADD
select dateadd(YY,3,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
select dateadd(YY,-3,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
select dateadd(MM,3,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
select dateadd(DD,3,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
select dateadd(YY,3,[DOB]) as Year_ from [dbo].[Tarak_Brothers] where name='Tarak'
select Datediff(yy,'2024-12-12','2023-10-12')
select Datediff(mm,'2024-11-12','2025-10-12')
select Datediff(dd,'2024-12-12','2025-10-12')
--EOMONTH
select EOMONTH(getdate())
--ISValid
select isdate('2023-12-11')
--string functions
select right('TARAKA RAJASEKHAR',5)
select left('TARAKA RAJASEKHAR',5)
select ltrim('TARAKA RAJASEKHAR',5)
select rtrim('TARAKA RAJASEKHAR      ')
select replicate('Tarak',5)
select len('TArak')
select lower('TARAK')
select reverse('Taraka')
select right(name,2) as Last_Two_letters from [dbo].[Tarak_Brothers]
select left(name,2) as First_Two_letters from [dbo].[Tarak_Brothers]
select len(name) as length from[dbo].[Tarak_Brothers]
select reverse(name) as Reverse_Function from [dbo].[Tarak_Brothers]
select ltrim(name) as [removes left_space] from[dbo].[Tarak_Brothers]
select rtrim(name) as [removes right_space] from [dbo].[Tarak_Brothers]
select upper(name) as [uppercase letters] from[dbo].[Tarak_Brothers]
select upper(name) as [uppercase letters] from[dbo].[Tarak_Brothers]
select max(len(name))as Max_length,name from [dbo].[Tarak_Brothers] group by name
select replicate(name,3) as Replicate_Name from[dbo].[Tarak_Brothers]
select right(charindex('a',name),1) as a_position,name from[dbo].[Tarak_Brothers]
select trim('     Raju')
select trim('Raju      ')
select substring(name,1,3) as string,name from [dbo].[Tarak_Brothers]
select datepart(MM,[DOB]) from[dbo].[Tarak_Brothers]
select replace(name,'r','a')as replace_function,name from [dbo].[Tarak_Brothers]
select stuff(name,1,4,'Abc') as stuff_example from[dbo].[Tarak_Brothers]
select concat('Tarak','Rajasekhar')
select charindex('n',reverse('nameing'))
select left('XYZ@MICROSOFT.COM',3)as col1,right('XYZ@MICROSOFT.COM',13)as col2
select concat(upper(substring('MICRO SOFT',1,1)),lower(substring('MICRO SOFT',2,4)),' ',upper(SUBSTRING('MICRO SOFT',7,1)),lower(substring('Micro soft',8,4))) as Initial_upper_case
select concat(lower(substring('MICRO SOFT',1,1)),upper(substring('MICRO SOFT',2,4)),' ',lower(SUBSTRING('MICRO SOFT',7,1)),upper(substring('Micro soft',8,4))) as Initial_upper_case
SELECT CAST(YEAR(GETDATE()) AS VARCHAR(4)) + '-01-01' AS First_Day_Of_First_Month;
SELECT CAST(YEAR(GETDATE()) AS VARCHAR(4)) + '-01-31' AS Last_Day_Of_First_Month;
SELECT CAST(YEAR(GETDATE()) AS VARCHAR(4)) + '-12-01' AS First_Day_Of_Last_Month;
SELECT CAST(YEAR(GETDATE()) AS VARCHAR(4)) + '-12-31' AS Last_Day_Of_Last_Month;

