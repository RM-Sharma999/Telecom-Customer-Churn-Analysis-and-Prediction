USE db_churn
GO

Select
	Customer_ID,
	Gender,
	Age,
	Married,
	State,
	Number_of_Referrals,
	Tenure_in_Months,
	IsNull(Value_Deal, 'None') as Value_Deal,
	Phone_Service,
	IsNull(Multiple_Lines, 'No') as Multiple_Lines,
	Internet_Service,
	IsNull(Internet_Type, 'None') as Internet_Type,
	IsNull(Online_Security, 'No') as Online_Security,
	IsNull(Online_Backup, 'No') as Online_Backup,
	IsNull(Device_Protection_Plan, 'No') as Device_Protection_Plan,
	IsNull(Premium_Support, 'No') as Premium_Support,
	IsNull(Streaming_TV, 'No') as Streaming_TV,
	IsNull(Streaming_Movies, 'No') as Streaming_Movies,
	IsNull(Streaming_Music, 'No') as Streaming_Music,
	IsNull(Unlimited_Data, 'No') as Unlimited_Data,
	Contract,
	Paperless_Billing,
	Payment_Method,
	Monthly_Charge,
	Total_Charges,
	Total_Refunds,
	Total_Extra_Data_Charges,
	Total_Long_Distance_Charges,
	Total_Revenue,
	Customer_Status,
	IsNull(Churn_Category, 'Others') as Churn_Category,
	IsNull(Churn_Reason, 'Others') as Churn_Reason
Into [db_churn].[dbo].[prod_Churn]
From [db_churn].[dbo].[stg_Churn]