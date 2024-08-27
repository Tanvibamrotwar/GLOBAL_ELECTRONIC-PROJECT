
-- QUERIES BASED ON CLEANED DATA SET
use global_electronics ;
-- 1) Gender distribution
SELECT  gender, COUNT(*) AS Count_gender
FROM customers
GROUP BY gender;


-- 2) Distribution of customer based on  Age_group  customers
SELECT 
    CASE 
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 30 THEN '18-30'
        WHEN Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 60 THEN '61-70'
        WHEN Age BETWEEN 71 AND 80 THEN '71-80'
        ELSE '80 and Over'  
    END AS Age_Group,
    COUNT(*) AS Number_of_Customers
FROM 
    customers
GROUP BY 
    Age_Group
ORDER BY 
    Age_Group;
    

-- 3) Distribution of customer based on  Age_group and location
SELECT 
   Continent,Country,State, City ,
    CASE 
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 30 THEN '18-30'
        WHEN Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 60 THEN '61-70'
        WHEN Age BETWEEN 71 AND 80 THEN '71-80'
        ELSE '80 and Over'
    END AS Age_Group,
    COUNT(*) AS Number_of_Customers
FROM 
    customers
GROUP BY 
    Continent,Country,State,City,Age_Group
ORDER BY 
    Continent,Country,State,City,Age_Group ;


-- 4) country wise customer count
SELECT 
    continent,country,state,city, 
    COUNT(CustomerKey) AS customer_count
FROM 
    CUSTOMERS
GROUP BY 
    continent,country,state,city
ORDER BY 
    customer_count DESC ;
    
    
-- 5 ) Currencies impact on sales considering exchange rates
SELECT 
    Currency_Code,
    SUM(Quantity * exr) AS Total_Sales_Based_Currency
FROM 
    sales
    join exchange_rate
ON 
    Currency_Code = Currency
AND 
    DATE(Order_Date) = DATE(Date)
GROUP BY 
    Currency_Code;


-- 6) Sales by top product performance and least popular product 
SELECT DISTINCT
  product_name,
  SUM(quantity) AS total_quantity
FROM
   electronic_table
GROUP BY
  product_name
ORDER BY total_quantity Desc  
Limit 10;   

SELECT DISTINCT 
     product_name,
	 SUM(quantity) as total_quantity
from 
     electronic_table
GROUP BY 
        product_name
ORDER BY
        Quantity ASC
limit 10;


-- 7) Catagory and sub catagory wise total sales
SELECT
    category, subcategory,
    ROUND(SUM(quantity * unit_price_usd), 2) AS total_sales
FROM 
    electronic_table
GROUP BY 
    category, subcategory
ORDER BY 
    total_sales DESC;


-- 8) Sales by revenue performance 
SELECT
	 product_name,
	 ROUND(SUM((unit_price_usd)*quantity),2) AS total_revenue_USD
FROM
  electronic_table
GROUP BY
  product_name
order by
      total_revenue_USD desc limit 10 ;  

-- 9) Month wise total_revenue
SELECT
  MONTHNAME(order_date) AS month,
  ROUND(SUM((unit_price_usd)*quantity),2) AS total_revenue_USD
FROM
    electronic_table
GROUP BY
  MONTHNAME(order_date);
  
  
  -- 10) Sales by stores
 SELECT
  storekey,
  ROUND(SUM((unit_price_usd)*quantity),2) AS total_revenue_USD
FROM
  electronic_table
GROUP BY
  storekey
order by total_revenue_USD DESC ;


-- 11) Total revenue of the store by continent,country and state wise
SELECT
    storekey,Continent,Country,State,
    ROUND(SUM(unit_price_usd * quantity), 2) AS total_revenue_USD
FROM 
     electronic_table
GROUP BY
    storekey, Continent, Country, State
ORDER BY
        total_revenue_USD DESC;
        

-- 12) Productwise Profit
Select
	product_name,
	ROUND(Sum((unit_price_usd-unit_cost_usd)*quantity),2) as Profit
from 
      electronic_table
group by
      product_name
order by 
       Profit desc ;
    
    
    







