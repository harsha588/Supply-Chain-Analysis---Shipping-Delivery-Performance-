# 🚚 Supply Chain Analysis – Shipping & Delivery Performance

##  📋 Project Overview

This project focuses on analyzing shipping and delivery performance using the DataCo SMART Supply Chain dataset.

The analysis aims to evaluate shipping operations, identify late-delivery patterns, compare shipping-mode performance, examine actual versus scheduled shipping durations, and understand geographical differences in shipping performance.

The project uses Microsoft Excel for data cleaning, MySQL for data analysis, and Power BI for interactive dashboard development.

## 📌 Problem Statement

The company manages a large volume of customer orders across multiple geographical regions using different shipping methods. Efficient shipping and timely order fulfillment are essential for maintaining operational performance and customer satisfaction.

However, differences in shipping methods, geographical locations, and fulfillment timelines can affect delivery performance. The company needs to evaluate its shipping operations to understand the extent of late deliveries, identify shipping methods associated with higher delivery delays, and examine regional differences in shipping performance.

The objective of this project is to analyze historical order and shipping data to measure late shipment rates, compare actual and scheduled shipping durations, evaluate shipping-mode performance, and identify geographical patterns in delivery delays.

## 🎯 Project Objectives

- Analyze overall shipping and delivery performance.
- Calculate late shipment rates.
- Compare shipping performance across different shipping modes.
- Evaluate actual versus scheduled shipping durations.
- Identify geographical patterns in shipping delays.
- Provide data-driven recommendations to improve logistics performance.

## 📝 Business Requirements

| ID | Business Requirement |
|---|---|
| BR01 | Analyze overall shipping performance. |
| BR02 | Evaluate shipping-mode performance. |
| BR03 | Compare actual and scheduled shipping durations. |
| BR04 | Analyze regional shipping performance. |

## ❓ Business Questions

### Overall Shipping Performance
- What is the total number of shipments?
- How many shipments are late?
- What is the overall late shipment rate?
- What percentage of shipments are on time?
- How are shipments distributed across delivery status?

### Shipping Mode Analysis
- Which shipping mode handles the highest number of shipments?
- Which shipping mode has the highest late shipment rate?
- Which shipping mode has the lowest late shipment rate?
- How does actual shipping duration vary across shipping modes?

### Shipping Duration Analysis
- What is the average actual shipping duration?
- What is the average scheduled shipping duration?
- What is the average difference between actual and scheduled shipping duration
- Which orders exceed their scheduled shipping duration?

### Regional Shipping Analysis
- Which regions have the highest late shipment rates?
- Which countries experience more late shipments?
- Which markets have better shipping performance?
- How does shipping duration vary across geographical regions?

## 📊 Key Performance Indicators (KPIs)

| KPI | Description |
|---|---|
| Total Shipments | Total distinct order-item shipment records |
| Late Shipments | Number of records marked as late delivery |
| Late Shipment Rate | Percentage of eligible shipments marked late |
| On-time Shipment Rate | Percentage of eligible shipments marked on time |
| Average Actual Shipping Days | Average actual shipping duration |
| Average Scheduled Shipping Days | Average scheduled shipping duration |
| Average Shipping Variance | Difference between actual and scheduled shipping days |

## 💾 Dataset Information

**Dataset:** DataCo SMART Supply Chain Dataset

**Source:** [Kaggle – DataCo SMART Supply Chain](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis)

**Original Dataset:** [Mendeley Data](https://data.mendeley.com/datasets/8gx2fvg2k6/5)

**Dataset Description:**
- 180,519 records
- 53 columns
- Contains order, customer, product, sales, shipping, delivery and geographical information.

The dataset also includes a separate description file containing column definitions.

## 🛠️ Tools & Technologies

- **Microsoft Excel:** Data inspection, cleaning and preprocessing using Power Query.
- **MySQL:** SQL-based business analysis.
- **Power BI:** Interactive dashboards and data visualization.

## 🔄 Project Workflow

1. Business Understanding
2. Data Collection and Inspection
3. Data Cleaning and Preprocessing using Excel
4. Business Analysis using MySQL
5. Dashboard Development using Power BI
6. Business Insights and Recommendations
7. Documentation and Reporting

## 🟢 Excel – Data Cleaning

Microsoft Excel Power Query is used to inspect, clean and prepare the dataset before SQL analysis.

### Data Cleaning Steps

- Imported the CSV dataset into Power Query.
- Created a separate working query to preserve the original data.
- Checked missing values and duplicate records.
- Removed irrelevant and redundant columns.
- Standardized text values and column names.
- Corrected date and numerical data types.
- Reviewed numerical values and retained valid negative values.
- Standardized country and geographical names where required.
- Validated the cleaned dataset.

### Data Cleaning Summary

| Column / Field | Action Taken |
|---|---|
| Customer Lname | Retained 8 missing values |
| Customer Zipcode | Retained 3 missing values |
| Order Zipcode | Removed due to 155,679 missing values |
| Product Description | Removed because all values were missing |
| Customer Email & Password | Removed placeholder columns |
| Product Status | Removed because values had no variation |
| Redundant Columns | Removed duplicate fields and retained one column from each pair |

### ✅ Data Cleaning Validation

- Checked missing values and duplicate records.
- Verified column data types and formats.
- Reviewed standardized text and geographical values.
- Preserved valid financial values.
- Prepared the cleaned dataset for SQL analysis.

# 🔵 SQL – Shipping & Delivery Analysis

MySQL was used to calculate key performance indicators (KPIs) and analyze shipping performance.

## SQL Files

| File | Description |
|---|---|
| 01_Data_Import_and_Table_Creation.sql | Creates the database and table and imports the cleaned dataset. |
| 02_KPI_Analysis.sql | Calculates shipping KPIs and delivery status distribution. |

## KPIs Analyzed

- Total Shipments
- Late Shipments
- Late Shipment Rate
- On-time Shipment Rate
- Average Actual Shipping Days
- Average Scheduled Shipping Days
- Average Shipping Variance

## SQL Concepts Used

- Aggregate Functions
- CASE WHEN
- GROUP BY
- Subqueries
- DISTINCT

## 📁 Project Structure

```text
Supply-Chain-Shipping-Analysis/
│
├── Dataset
│   └──README.md
├── Excel
    └──README.md
├── SQL
├── PowerBI
├── Images
└── README.md
```

---

*This project is being developed as an end-to-end Data Analytics portfolio project using Excel, MySQL, and Power BI.*
