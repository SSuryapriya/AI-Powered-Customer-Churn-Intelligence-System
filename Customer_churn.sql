create database customer_churn;

use customer_churn;

select * from telco limit 10;

select count(*) as Total_customers
from telco;

show columns from telco;

SELECT 'Churn Label', COUNT(*) AS Total_Customers
FROM telco
GROUP BY 'Churn Label';

SELECT
ROUND(
SUM(CASE WHEN 'Churn Label' ='Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
2
) AS 'Churn Rate'
FROM telco;

SELECT Gender,
COUNT(*) AS Total_Customers
FROM telco
GROUP BY Gender;

SELECT Gender,
'Churn_Label',
COUNT(*) AS Total
FROM telco
GROUP BY Gender, 'Churn_Label';

SELECT 'Payment_Method',
COUNT(*) AS 'Total_Customers'
FROM telco
GROUP BY 'Payment_Method';


--  Average Monthly Charge
SELECT ROUND(AVG(`Monthly Charge`),2) AS Avg_Monthly_Charge
FROM telco;

--  Average Monthly Charge by Churn
SELECT `Churn Label`,
ROUND(AVG(`Monthly Charge`),2) AS Avg_Monthly_Charge
FROM telco
GROUP BY `Churn Label`;

--  Total Revenue
SELECT ROUND(SUM(`Total Revenue`),2) AS Total_Revenue
FROM telco;

-- Average Total Charges
SELECT ROUND(AVG(`Total Charges`),2) AS Avg_Total_Charges
FROM telco;

-- Average CLTV
SELECT ROUND(AVG(CLTV),2) AS Avg_CLTV
FROM telco;

--  Average Satisfaction Score
SELECT ROUND(AVG(`Satisfaction Score`),2) AS Avg_Satisfaction_Score
FROM telco;

--  Average Tenure
SELECT ROUND(AVG(`Tenure in Months`),2) AS Avg_Tenure
FROM telco;

--  Churn Category
SELECT `Churn Category`,
COUNT(*) AS Total
FROM telco
GROUP BY `Churn Category`;

--  Top Churn Reasons
SELECT `Churn Reason`,
COUNT(*) AS Total
FROM telco
WHERE `Churn Label`='Yes'
GROUP BY `Churn Reason`
ORDER BY Total DESC;

--  Churn by State
SELECT State,
COUNT(*) AS Total
FROM telco
WHERE `Churn Label`='Yes'
GROUP BY State
ORDER BY Total DESC;

--  Top 10 Cities by Churn
SELECT City,
COUNT(*) AS Total
FROM telco
WHERE `Churn Label`='Yes'
GROUP BY City
ORDER BY Total DESC
LIMIT 10;

--  Churn by Tenure
SELECT `Tenure in Months`,
COUNT(*) AS Total
FROM telco
WHERE `Churn Label`='Yes'
GROUP BY `Tenure in Months`
ORDER BY `Tenure in Months`;

--  Churn by Marital Status
SELECT Married,
`Churn Label`,
COUNT(*) AS Total
FROM telco
GROUP BY Married, `Churn Label`;

--  Churn by Dependents
SELECT Dependents,
`Churn Label`,
COUNT(*) AS Total
FROM telco
GROUP BY Dependents, `Churn Label`;

--  Churn by Offer
SELECT `Offer`,
`Churn Label`,
COUNT(*) AS Total
FROM telco
GROUP BY `Offer`, `Churn Label`;

--  Churn by Internet Type
SELECT `Internet Type`,
`Churn Label`,
COUNT(*) AS Total
FROM telco
GROUP BY `Internet Type`, `Churn Label`;

--  Churn by Payment Method
SELECT `Payment Method`,
`Churn Label`,
COUNT(*) AS Total
FROM telco
GROUP BY `Payment Method`, `Churn Label`;