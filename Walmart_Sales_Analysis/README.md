# Walmart Sales Data Analysis – Project Overview

## Project Summary
This project analyzes Walmart's sales data to uncover valuable insights into product performance, customer behavior, and sales trends. The dataset includes sales transactions from multiple Walmart branches across cities such as Mandalay, Yangon, and Naypyitaw. The primary goal is to help Walmart optimize sales strategies, improve decision-making, and enhance operational efficiency by examining key factors like customer preferences, sales patterns, and product performance.

---

## Objectives
The key objectives of this project are:

- **Optimize Sales Strategies**: Identify product lines that perform well and those that need improvement.
- **Understand Customer Behavior**: Analyze customer segments and identify which groups generate the most revenue.
- **Evaluate Sales Trends**: Discover which time periods, days of the week, and locations contribute to higher sales.

---

## Data Overview
The dataset consists of various attributes, including:

- **Branch**: The Walmart branch where the sale occurred.
- **City**: The city in which the branch is located.
- **Customer Type**: Whether the customer is a Regular or Member.
- **Product Line**: The category of the products sold (e.g., Electronics, Clothing, etc.).
- **Quantity, Price, and Total Sales**: The financial information related to the transactions.
- **Ratings and VAT**: Customer feedback and tax information associated with purchases.

This data enables us to explore patterns that enhance marketing, sales, and customer engagement strategies.

---

## Approach

### 1. Database Setup and Data Ingestion
- Created a database to organize and store the sales data.
- Imported the data into the database for efficient querying and analysis.

### 2. Feature Engineering
Enhanced the dataset by adding the following useful columns:
- **Time of Day**: Categorized sales into Morning, Afternoon, or Evening based on the time of the transaction.
- **Day of the Week**: Identified which days of the week generated the most sales.
- **Month of the Year**: Analyzed seasonal trends by tracking sales by month.

### 3. Exploratory Data Analysis (EDA)

#### Business Insights:
- Analyzed the geographic distribution of sales to understand branch and city performance.
- Identified the most popular product lines and their sales performance to highlight successful categories.

#### Customer Insights:
- Segmented customers into Regular and Member categories to determine spending habits and preferences.

#### Time-Based Insights:
- Explored sales by time of day and day of the week to uncover peak sales periods and understand demand patterns.

### 4. Key Findings
- **Product Performance**: Certain product lines consistently outperformed others, indicating areas for growth focus.
- **Customer Segments**: Members spent more on average, suggesting targeted promotions could further boost sales.
- **Sales Trends**: Identified clear patterns in sales volume based on time of day and day of the week, which can help optimize staffing and promotions.

---

## Conclusion
The analysis revealed actionable insights into Walmart’s sales trends, product performance, and customer behavior using SQL. These insights can guide decision-making to develop more effective marketing strategies, optimize sales efforts, and improve operational efficiency. By understanding customer segments, identifying peak sales times, and assessing product line performance, Walmart can better allocate resources and tailor strategies to maximize sales.

This project demonstrates the power of data-driven strategies to optimize retail operations and improve overall business performance.
