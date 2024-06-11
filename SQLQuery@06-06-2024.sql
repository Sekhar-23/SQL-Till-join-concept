use [Tarak_Family_Members]
select * from [dbo].[Tarak_Members]
select SUM(salary) as SUM_VALUE  from[dbo].[Tarak_Members] --sum value
select MAx(salary) as MAX_Salary from Tarak_Members --Max Value
select Avg(salary) as Avg_Salary from Tarak_Members --Avg value
select Min(salary) as Min_Salary from Tarak_Members --Min function
select count(father_name) as Number_of_fathers from Tarak_Members --Count function
select distinct count(*) as graduation_day  from Tarak_Members --Table level
select  count(graduation_day) as graduation_day  from Tarak_Members
select distinct father_name,mother_name from Tarak_Members --distinct values in Multiple columns
select distinct * from Tarak_Members --distinct values at table level
select distinct count (father_name) as Father_name from Tarak_Members
select Power(salary,1) from Tarak_Members
select sin(45) as SIN_Output
select cos(45) as COS_Output
select sqrt(25) as Sqrt_function
select ceiling(2.333) as Ceiling_function
select floor(2.9) as Floor_function
select round(2.3333,2) as Round_Function
select abs(-2) as ABS_FUNCTION
select abs(2.3) as ABS_FUNCTION
select exp(2) as EXP_FUNCTION
select log(3) as Log_Function
select power(3,4) as Power_function