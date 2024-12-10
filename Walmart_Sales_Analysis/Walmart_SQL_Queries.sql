-- Create the database and use it
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'walmart')
    CREATE DATABASE walmart;
GO
USE walmart;
GO

-- Create the sales table
CREATE TABLE sales (
    invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    tax_5pct DECIMAL(12, 4) NOT NULL,
    total DECIMAL(12, 4) NOT NULL,
    [date] DATE NOT NULL,
    [time] TIME NOT NULL,
    payment VARCHAR(15) NOT NULL,
    cogs DECIMAL(10, 2) NOT NULL,
    gross_margin_percentage FLOAT,
    gross_income DECIMAL(12, 4),
    rating FLOAT
);
GO

-- Enable bulk inserts
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
EXEC sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;

-- Load data into the table (adjust the path as per your system)
BULK INSERT sales
FROM '/Users/admin/Downloads/Walmart_Sales_Data.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- Feature Engineering
-- 1. Time_of_day
ALTER TABLE sales ADD time_of_day VARCHAR(20);
GO

UPDATE sales
SET time_of_day = CASE
    WHEN [time] BETWEEN '00:00:00' AND '11:59:59' THEN 'Morning'
    WHEN [time] BETWEEN '12:00:00' AND '15:59:59' THEN 'Afternoon'
    ELSE 'Evening'
END;
GO

-- 2. Day_name
ALTER TABLE sales ADD day_name VARCHAR(10);
GO

UPDATE sales
SET day_name = DATENAME(WEEKDAY, [date]);
GO

-- 3. Month_name
ALTER TABLE sales ADD month_name VARCHAR(10);
GO

UPDATE sales
SET month_name = DATENAME(MONTH, [date]);
GO

-- Exploratory Data Analysis (EDA)
-- Generic Questions
-- 1. How many distinct cities are present in the dataset?
SELECT DISTINCT city FROM sales;
GO

-- 2. In which city is each branch situated?
SELECT DISTINCT branch, city FROM sales;
GO

-- Product Analysis
-- 1. How many distinct product lines are there in the dataset?
SELECT COUNT(DISTINCT product_line) AS total_product_lines FROM sales;
GO

-- 2. What is the most common payment method?
SELECT TOP 1 payment, COUNT(payment) AS common_payment_method 
FROM sales 
GROUP BY payment 
ORDER BY common_payment_method DESC;
GO

-- 3. What is the most selling product line?
SELECT TOP 1 product_line, COUNT(product_line) AS most_selling_product
FROM sales
GROUP BY product_line
ORDER BY most_selling_product DESC;
GO

-- 4. What is the total revenue by month?
SELECT month_name, SUM(total) AS total_revenue
FROM sales
GROUP BY month_name
ORDER BY total_revenue DESC;
GO

-- 5. Which month recorded the highest Cost of Goods Sold (COGS)?
SELECT TOP 1 month_name, SUM(cogs) AS total_cogs
FROM sales
GROUP BY month_name
ORDER BY total_cogs DESC;
GO

-- 6. Which product line generated the highest revenue?
SELECT TOP 1 product_line, SUM(total) AS total_revenue
FROM sales
GROUP BY product_line
ORDER BY total_revenue DESC;
GO

-- 7. Which city has the highest revenue?
SELECT TOP 1 city, SUM(total) AS total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue DESC;
GO

-- 8. Which product line incurred the highest VAT?
SELECT TOP 1 product_line, SUM(tax_5pct) AS VAT 
FROM sales
GROUP BY product_line
ORDER BY VAT DESC;
GO

-- 9. Retrieve each product line and add a column product_category, indicating 'Good' or 'Bad,' based on whether its sales are above the average.
ALTER TABLE sales ADD product_category VARCHAR(20);
GO

UPDATE sales
SET product_category = CASE
    WHEN total >= (SELECT AVG(total) FROM sales) THEN 'Good'
    ELSE 'Bad'
END;
GO

-- 10. Which branch sold more products than average product sold?
SELECT branch, SUM(quantity) AS quantity
FROM sales
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales)
ORDER BY quantity DESC;
GO

-- 11. What is the most common product line by gender?
SELECT gender, product_line, COUNT(gender) AS total_count
FROM sales
GROUP BY gender, product_line
ORDER BY total_count DESC;
GO

-- 12. What is the average rating of each product line?
SELECT product_line, ROUND(AVG(rating), 2) AS average_rating
FROM sales
GROUP BY product_line
ORDER BY average_rating DESC;
GO

-- 13. Which branch has the highest gross income?
SELECT TOP 1 branch, SUM(gross_income) AS total_gross_income
FROM sales
GROUP BY branch
ORDER BY total_gross_income DESC;
GO

-- 14. What is the total quantity sold by each product line?
SELECT product_line, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product_line
ORDER BY total_quantity DESC;
GO
