# End-to-End Sales Analytics Project

An end-to-end data analysis project combining **Excel, SQL, Python and Power BI** to transform raw restaurant sales data into **actionable business insights**.

---

## Business Problem

Restaurant managers need to understand customer spending patterns, peak hours, and revenue drivers in order to make better operational decisions.

This project analyzes transactional restaurant data to answer key business questions about **revenue distribution, customer behavior, and tipping patterns.**

---

## Dataset

The dataset contains **245 restaurant transactions** with the following attributes:

- total_bill
- tip
- sex
- smoker
- day
- time
- size (party size)

The data represents individual dining transactions and allows analysis of **customer spending behavior and operational patterns.**

---

## Project Pipeline

This project demonstrates a **complete data analysis workflow.**

### 1. Excel – Initial Exploration

Excel was used for quick exploratory checks and pivot-table summaries.

Key tasks:

- revenue breakdown by day
- average bill by group size
- quick dataset validation

---

### 2. SQL – Analytical Queries

SQL queries were used to answer core business questions.

Examples:

- Which day generates the highest revenue?
- What is the average bill per party size?
- How does tipping behavior vary across customer groups?

The SQL layer demonstrates how analysts extract insights directly from structured data.

---

### 3. Python – Exploratory Data Analysis

Python was used for deeper analysis and visualization.

Libraries used:

- Pandas
- Matplotlib
- Seaborn

EDA helped identify patterns in:

- bill distribution
- tipping behavior
- customer group size
- peak dining periods

---

### 4. Power BI – Business Dashboard

Power BI was used to build an **interactive business dashboard** allowing managers to monitor:

- revenue trends
- customer spending patterns
- tipping behavior
- peak demand periods

---

## Key Insights

Examples of insights derived from the analysis:

- Weekend dining generates the highest total revenue.
- Larger groups tend to produce higher total bills.
- Evening dining periods show stronger tipping patterns.

---

## Business Recommendations

Based on the analysis:

1. Increase staffing during peak weekend hours.
2. Encourage larger group reservations.
3. Adjust operational focus during high-demand dining periods.

---

## Tools Used

- Excel
- SQL
- Python (Pandas, Matplotlib, Seaborn)
- Power BI

---

## Project Structure

```end-to-end-sales-analytics
│
├── data
│ └── sales_data.csv
│
├── excel
│
├── sql
│ ├── schema.sql
│ └── analysis.sql
│
├── python
│ └── eda_sales_analysis.ipynb
│
├── powerbi
│
├── images
│
├── .gitignore
└── README.md
```

---

## Author

Zaur İsrafilov  
Data Analyst focused on **SQL, Python and Business Intelligence**
