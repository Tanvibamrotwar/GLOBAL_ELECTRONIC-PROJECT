# DataSpark: Illuminating Insights for Global Electronics

## Project Overview:
DataSpark: Illuminating Insights for Global Electronics is a retail analytics project focused on the electronics industry. Here we have several datasets containing information about their customers. The project aim seeks to leverage this data to better understand the business and provide actionable recommendations to enhance customer satisfaction, optimize operations, and drive business growth

## Problem statement: 
As part of Global Electronics' data analytics team, the goal is to analyze data from customers, products, sales, stores, and currency exchange rates to identify key insights that will enhance marketing strategies, optimize inventory management, improve sales forecasting, and drive overall business growth.
_____________________________________________________________________________________________________________________________________________________________________________________________________________________________
## Technical Tags:
Before you begin, ensure you have the following installed:
  * Python: For data cleaning, preparation, and statistical analysis (using libraries like Pandas, NumPy, Matplotlib, Seaborn,pymysql).
  * SQL: For data management and querying.
  * Power BI/Tableau: For creating interactive dashboards and visualizations
______________________________________________________________________________________________________________________________________________________________________________________________________________________________
## Approach:
1.	**Data Cleaning and Preparation:**
   * Open CSV files in Python, load all important libraries that we need for analyzing data, Check for missing values and Handling Missing values and filled null values using appropriate methods.
   * Convert data types where necessary (e.g., dates, numerical values).
   * Merge datasets: Merged all cleaned data into a single DataFrame using the Pandas merge function with the inner join method.
2. **Load Data:**
   * Use Pymysql to	Insert the preprocessed data into a MYSQL database- by creating  a global_electronic database and table for each respective dataset and using SQL INSERT statements to load the data into the respective 
     table.
3. **Develop SQL Queries:**
* Created 12 MYSQL queries to extract key insights from customer, sales, product, and store data.
4. **Power BI Visualization:**
* Connected MYSQL to Power BI, imported the data, and created interactive dashboards.
______________________________________________________________________________________________________________________________________________________________________________________________________________________________
 ## Analysis Steps:
1.	**Customer Analysis:**
   * Demographic Distribution: Analyzed the distribution of customers based on gender, age (calculated from birthday), and location (city, state, country, continent).
   * Purchase Patterns: Identified purchasing patterns such as average order value, frequency of purchases, and preferred products.
   * Segmentation: Segmented customers based on demographics and purchasing behavior to identify key customer groups.

2.	**Sales Analysis:**
   * Overall Sales Performance: Analyze total sales over time, identifying trends and seasonality.
   * Sales by Product: Evaluate which products are the top performers in terms of quantity sold and revenue generated.
   * Sales by Store: Assess the performance of different stores based on sales data.Sales by Currency: Examine how different currencies impact sales figures, considering exchange rates.

3. **Product Analysis :**
* Product Popularity: Identified the most and least popular products based on sales data.
* Profitability Analysis: Calculated profit margins for products by comparing unit cost and unit price.
* Category Analysis: Analyzed sales performance across different product categories and subcategories.

5.	**Store Analysis:**
* Store Performance: Evaluated store performance based on sales, size (square meters), and operational data (open date).
* Geographical Analysis: Analyzed sales by store location to identify high-performing regions.
______________________________________________________________________________________________________________________________________________________________________________________________________________________________
  ## Main Recommendations :
  * Tailor marketing campaigns to specific customer segments.
  * Optimize inventory based on sales trends.
  * Improve international pricing strategies to maximize profits.  
______________________________________________________________________________________________________________________________________________________________________________________________________________________________
  ## References :
  * Python Documentation :(https://docs.python.org/3/)
  * SQL Documentation : (https://dev.mysql.com/doc/)
  * PowerBi Documentation :(https://learn.microsoft.com/en-us/power-bi/)
  * EDA Documentation :(https://python-data-science.readthedocs.io/en/latest/exploratory.html)

   
