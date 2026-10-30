# Supply Chain Analysis – Shipping & Delivery Performance

## 1. Project Overview

This project focuses on analyzing shipping and delivery performance using the DataCo SMART Supply Chain dataset.

The analysis aims to evaluate shipping operations, identify late-delivery patterns, compare shipping-mode performance, examine actual versus scheduled shipping durations, and understand geographical differences in shipping performance.

The project uses Microsoft Excel for data cleaning, MySQL for data analysis, and Power BI for interactive dashboard development.

## 2. Problem Statement

The company manages a large volume of customer orders across multiple geographical regions using different shipping methods. Efficient shipping and timely order fulfillment are essential for maintaining operational performance and customer satisfaction.

However, differences in shipping methods, geographical locations, and fulfillment timelines can affect delivery performance. The company needs to evaluate its shipping operations to understand the extent of late deliveries, identify shipping methods associated with higher delivery delays, and examine regional differences in shipping performance.

The objective of this project is to analyze historical order and shipping data to measure late shipment rates, compare actual and scheduled shipping durations, evaluate shipping-mode performance, and identify geographical patterns in delivery delays.

## 3. Project Objectives

- Analyze overall shipping and delivery performance.
- Calculate late shipment rates.
- Compare shipping performance across different shipping modes.
- Evaluate actual versus scheduled shipping durations.
- Identify geographical patterns in shipping delays.
- Provide data-driven recommendations to improve logistics performance.

## 4. Business Requirements

| ID | Business Requirement |
|---|---|
| BR01 | Analyze overall shipping performance. |
| BR02 | Evaluate shipping-mode performance. |
| BR03 | Compare actual and scheduled shipping durations. |
| BR04 | Analyze regional shipping performance. |

## 5. Business Questions

### Overall Shipping Performance
- What is the total number of shipments?
- How many shipments are late?
- What is the overall late shipment rate?
- What percentage of shipments are on time?
- How are shipments distributed across delivery statuses?

### Shipping Mode Analysis
- Which shipping mode handles the highest number of shipments?
- Which shipping mode has the highest late shipment rate?
- Which shipping mode has the lowest late shipment rate?
- How does actual shipping duration vary across shipping modes?

### Shipping Duration Analysis
- What is the average actual shipping duration?
- What is the average scheduled shipping duration?
- How many days of delay occur on average?
- Which orders exceed their scheduled shipping duration?

### Regional Shipping Analysis
- Which regions have the highest late shipment rates?
- Which countries experience more late shipments?
- Which markets have better shipping performance?
- How does shipping duration vary across geographical regions?

## 6. Key Performance Indicators (KPIs)

| KPI | Description |
|---|---|
| Total Shipments | Total distinct order-item shipment records |
| Late Shipments | Number of records marked as late delivery |
| Late Shipment Rate | Percentage of eligible shipments marked late |
| On-time Shipment Rate | Percentage of eligible shipments marked on time |
| Average Actual Shipping Days | Average actual shipping duration |
| Average Scheduled Shipping Days | Average scheduled shipping duration |
| Average Shipping Variance | Difference between actual and scheduled shipping days |

## 7. Dataset Information

**Dataset:** DataCo SMART Supply Chain Dataset

**Source:** [Kaggle – DataCo SMART Supply Chain](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis)

**Original Dataset:** [Mendeley Data](https://data.mendeley.com/datasets/8gx2fvg2k6/5)

**Dataset Description:**
- 180,519 records
- 53 columns
- Contains order, customer, product, sales, shipping, delivery and geographical information.

The dataset also includes a separate description file containing column definitions.

## 8. Tools & Technologies

- **Microsoft Excel:** Data inspection, cleaning and preprocessing using Power Query.
- **MySQL:** SQL-based business analysis.
- **Power BI:** Interactive dashboards and data visualization.

## 9. Project Workflow

1. Business Understanding
2. Data Collection and Inspection
3. Data Cleaning and Preprocessing using Excel
4. Business Analysis using MySQL
5. Dashboard Development using Power BI
6. Business Insights and Recommendations
7. Documentation and Reporting

## 10. Excel – Data Cleaning

Microsoft Excel Power Query is used to inspect, clean and prepare the dataset before SQL analysis.

### Data Cleaning Steps

- Imported the CSV dataset into Power Query.
- Created a separate working query to preserve the original data.
- Inspected columns and data types.
- Checked missing values and duplicate records.
- Identified irrelevant and redundant columns.
- Reviewed numerical columns for unusual values.
- Corrected date and numerical data types.
- Prepared the cleaned dataset for further analysis.

### Data Cleaning Summary

| Column / Field | Issue Identified | Action |
|---|---|---|
| Customer Lname | 8 missing values | Retained as null |
| Customer Zipcode | 3 missing values | Retained as null |
| Order Zipcode | 155,679 missing values | Retained as null |
| Product Description | Entire column contains missing values | Removed |
| Customer Email | Constant placeholder value | Removed |
| Customer Password | Constant placeholder value | Removed |
| Product Status | No variation in values | Removed |
| Redundant columns | Identical values across selected column pairs | Retained one column from each pair |

### Data Cleaning Validation

- Verified missing values.
- Checked duplicate records.
- Reviewed numerical and date formats.
- Preserved valid negative financial values.
- Retained original records unless removal was justified.

## 11. Project Status

**Current Phase:** Excel Data Cleaning

| Phase | Status |
|---|---|
| Business Understanding | Completed |
| Dataset Inspection | Completed |
| Excel Data Cleaning | In Progress |
| SQL Analysis | Planned |
| Power BI Dashboard | Planned |
| Business Insights & Recommendations | Planned |

## 12. Project Structure

```text
Supply-Chain-Shipping-Analysis/
│
├── Dataset/
├── Excel/
├── SQL/
├── PowerBI/
├── Images/
└── README.md
```

---

*This project is being developed as an end-to-end Data Analytics portfolio project using Excel, MySQL, and Power BI.*
