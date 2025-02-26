Walmart Sales Data Analysis

Project Overview

This project aims to analyze Walmart sales data using SQL and Python to uncover insights into revenue trends, customer behavior, product performance, and operational efficiency. The analysis is conducted using MySQL and PostgreSQL, with data manipulation in Pandas and NumPy.

Project Steps

1. Set Up the Environment

Tools Used: Visual Studio Code (VS Code), Python, SQL (MySQL & PostgreSQL)

Create a structured workspace within VS Code.

Organize project folders for smooth development and data handling.

2. Set Up Kaggle API

Steps:

Obtain your Kaggle API token from Kaggle (Profile Settings → Download kaggle.json).

Configure Kaggle by placing the kaggle.json file in your local .kaggle folder.

Use the command:

kaggle datasets download -d <dataset-path>

to pull datasets directly into your project.

3. Download Walmart Sales Data

Data Source: Kaggle API

Dataset Link: Walmart Sales Dataset (Add actual link)

Save the data in the data/ folder for easy reference and access.

4. Install Required Libraries & Load Data

Install Dependencies:

pip install pandas numpy sqlalchemy mysql-connector-python psycopg2

Load Data: Read the dataset into a Pandas DataFrame for initial analysis and transformations.

5. Explore the Data

Goal: Conduct an initial data exploration to understand structure and distribution.

Use functions like:

df.info()
df.describe()
df.head()

Identify missing values, incorrect data types, and potential outliers.

6. Data Cleaning

Remove Duplicates to prevent skewed results.

Handle Missing Values: Drop or fill missing values where necessary.

Fix Data Types: Ensure correct formats (e.g., dates as datetime, prices as float).

Currency Formatting: Convert string-based currency values to numerical format.

Validation: Perform final checks for consistency.

7. Feature Engineering

Create New Columns:

df['Total_Amount'] = df['unit_price'] * df['quantity']

Enhance Dataset: Adding computed fields to streamline SQL analysis.

8. Load Data into MySQL and PostgreSQL

Database Connection: Use SQLAlchemy to connect to MySQL and PostgreSQL.

Create Tables: Automate table creation and data insertion.

Verification: Run SQL queries to validate data integrity.

SQL Business Problem-Solving & Insights

🔹 Revenue Trends & Performance Analysis

Analyze monthly and yearly revenue trends across branches and categories.

Identify seasonal sales spikes to optimize inventory and marketing strategies.

🔹 Customer Behavior & Buying Patterns

Discover peak sales hours to improve staffing and customer service.

Analyze customer spending habits across payment methods and locations.

🔹 Product & Profitability Insights

Identify best-selling product categories and their impact on revenue.

Conduct profit margin analysis by branch and category.

🔹 Operational Efficiency & Performance Metrics

Evaluate sales performance by city, time of day, and payment method.

Monitor transaction volume to optimize store resources and promotions.

📌 Documentation & Reporting

Maintain clear documentation of SQL queries, objectives, and findings.

Present insights via Power BI & Tableau dashboards for stakeholders.

How to Use This Project

Clone the Repository

git clone <repo-link>
cd walmart-sales-analysis

Run Data Cleaning & Transformation Scripts

Load Cleaned Data into MySQL/PostgreSQL

Run SQL Queries for Insights

Visualize Findings in Power BI/Tableau

🚀 Ready to uncover valuable business insights? Let's dive into the data!
