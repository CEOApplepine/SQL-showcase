
# Customer Sales & Revenue Analysis

## Overview
This project demonstrates SQL skills by analyzing a retail sales dataset.  
It includes queries for revenue analysis, customer segmentation, top-selling products, monthly trends, customer lifetime value, and churn risk.  

The project is designed to showcase real-world **business analytics** skills using SQL.

---

## Business Problem
A retail company wants to understand:

- Which customer segments generate the most revenue  
- Which products sell the best  
- How revenue trends over time  
- Which customers are at risk of churn  

This analysis helps the company make **data-driven decisions** on marketing, inventory, and customer retention.

---

## Dataset
The dataset contains the following columns:

| Column Name     | Description                        |
|-----------------|------------------------------------|
| order_id        | Unique order identifier            |
| customer_id     | Unique customer identifier         |
| customer_name   | Customer's name                    |
| segment         | Customer segment (Regular/Premium)|
| product         | Product name                       |
| order_date      | Date of the order                  |
| quantity        | Quantity purchased                 |
| price           | Price per unit                     |

**File:** `sample_data.csv`

---

## SQL Queries
The project includes the following SQL queries (see `queries.sql`):

1. **Total Revenue** – Calculate total revenue from all orders  
2. **Revenue by Customer Segment** – Compare revenue by Regular vs Premium customers  
3. **Top Selling Products** – Identify highest revenue-generating products  
4. **Monthly Revenue Trend** – Show revenue trends over time using a CTE  
5. **Customer Lifetime Value** – Rank customers by total spending using window functions  
6. **Churn Risk Detection** – Identify customers who haven’t purchased in the last 60 days  

---

## Key Insights
- **Premium customers generate more revenue** than Regular customers  
- **Hiking Boots** are the top revenue-generating product  
- Revenue increased steadily from January to May  
- A few customers are at risk of churn (no purchase in over 60 days)  
- Customer lifetime value analysis identifies the most valuable customers for targeted marketing  

---

## Skills Demonstrated
- SQL: Aggregations, Joins, CTEs, Window Functions  
- Data Analysis: Revenue, Customer Segmentation, Churn Analysis  
- Data Storytelling & Business Insights  
- GitHub Repository Organization  

---

## How to Use
1. Clone the repository:  
```bash
git clone https://github.com/YOUR_USERNAME/sql-portfolio.git
