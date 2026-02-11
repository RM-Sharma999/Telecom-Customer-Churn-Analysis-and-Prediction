USE db_churn
GO

Select Gender, Count(Gender) as Total_Count,
Count(Gender) * 100.0 / (Select Count(*) from stg_Churn) as Percentage 
from stg_Churn
Group By Gender

Select Contract, Count(Contract) as Total_Count,
Count(Contract) * 100.0 / (Select Count(*) from stg_Churn) as Percentage 
from stg_Churn
Group By Contract

Select Customer_Status, Count(Customer_Status) as Total_Count, Sum(Total_Revenue) as Total_Rev,
Sum(Total_Revenue) / (Select Sum(Total_Revenue) from stg_Churn) * 100 as Rev_Percentage
from stg_Churn
Group By Customer_Status

Select State, Count(State) as Total_Count,
Count(State) * 100.0 / (Select Count(*) from stg_Churn) as Percentage 
from stg_Churn
Group By State
Order By Percentage desc

select Distinct Internet_Type
from stg_Churn