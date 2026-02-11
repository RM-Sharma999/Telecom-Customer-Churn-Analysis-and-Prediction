 USE db_churn
GO

Create View vw_ChurnData as 
	Select * From prod_Churn Where Customer_Status In ('Churned', 'Stayed')

Create View vw_JoinData as
	Select * From prod_Churn Where Customer_Status  = 'Joined'