use Tarak_Family_Members
select * from [dbo].[Tarak_Brothers]
update [dbo].[Tarak_Brothers] set name='Taraka rajasekhar' where name='Tarak'
select concat(upper(substring(name,1,1)),lower(substring(name,2,charindex('a',name)))) from [dbo].[Tarak_Brothers]
select datepart(YY,'2023-12-12')
select cast(year(getdate()) as varchar(4))+'-01-01'as First_Day
alter table [dbo].[Tarak_Brothers] add DOJ datetime
update [dbo].[Tarak_Brothers] set DOJ='2023-12-03 05:50:14.908' where name='Taraka rajasekhar'
select year(DOB) from [dbo].[Tarak_Brothers] where DOB='2000-01-02'
select datename(DW,'2023-12-12')
select dateadd(YY,3,'2023-12-12')
select dateadd(YY,3,'2023-12-12')
select datepart(MM,cast('2018-12-13 08:12:12.890'as varchar(50))) as Date_part
select datepart(dd,cast('2018-12-13 08:12:12.890'as varchar(50))) as Date_part
select datediff(YY,'2023-12-12','2024-01-12')
select convert(varchar(40),'2023-12-02',101)
select EOMONTH('2023-01-02',11)
select isdate('2023-12-12')
select format(2023-12-09,'dd-mm-yyyy') as Day_FORMAT
SELECT FORMAT(cast('2023-12-05'as date), 'mm-dd-yyyy') AS FormattedDate
select convert(Varchar,cast('2023-12-05' as Date),105)as formatted_date
select datediff(yy,'2023-12-12','2020-12-12')
select name,format(DOB,'dd-MM-yyyy') as DOB from[dbo].[Tarak_Brothers]
select cast(year(getdate()) as varchar(4))+'-01-01' as 
select datefromparts(2023,1,1) as firstDay
select datefromparts(2023,1,1) as firstDay_firstMonth
select EOMONTH(datefromparts(2023,12,1)) as firstDay_lastMonth
select EOMONTH(datefromparts(2023,1,1)) as lastday_firstMonth
select datefromparts(2023,12,1) as lastDay_lastmonth