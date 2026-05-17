# 🏠 Bangalore House Price Analysis

## 📌 Project Overview

An end-to-end data analytics project analyzing the Bangalore real estate
market using 13,000+ property listings. Covers full data analyst workflow
— data cleaning, EDA, SQL analysis, and an interactive Power BI dashboard.

---

## 🛠️ Tools & Libraries Used

| Tool                   | Purpose                  |
| ---------------------- | ------------------------ |
| Python (Pandas, NumPy) | Data Cleaning            |
| Matplotlib, Seaborn    | EDA & Visualizations     |
| SQL Server             | Data Querying & Analysis |
| Power BI               | Interactive Dashboard    |

---

## 📂 Project Structure

Banglore_house_price/
├── Banglore/ → Raw dataset
├── Banglore_clean/ → Cleaned dataset
├── figures/ → EDA charts
├── Power bi/ → Power BI dashboard (.pbix)
├── PYTHON/Banglore_house.ipynb → Python notebook
├── sql/
│ ├── 1SQLQuery1.sql → Database setup
│ ├── 2SQLQuery2_Queries.sql → Basic & location queries
│ └── 3SQLQuery_advance_sql.sql → Advanced CTE & window functions
└── README.md

---

## 🧹 Data Cleaning Steps

| Step | Column     | Action                                     |
| ---- | ---------- | ------------------------------------------ |
| 1    | size       | Dropped null rows                          |
| 2    | society    | Filled nulls with mode                     |
| 3    | location   | Filled nulls with mode                     |
| 4    | bath       | Filled nulls with median                   |
| 5    | balcony    | Filled nulls with median                   |
| 6    | total_sqft | Converted ranges (1200-1500) to average    |
| 7    | size       | Extracted BHK number → dropped size column |
| 8    | Outliers   | Removed bath > bhk + 2                     |
| 9    | New column | Created Price_per_sqft                     |

---

## 📊 EDA Findings

- 2 BHK is most common — 5,000+ listings
- Average price jumps from ₹60L (2BHK) to ₹110L (3BHK)
- Super Built-up Area = 66% of all listings
- Price distribution is right skewed

---

## 🗄️ SQL Analysis

### Basic Queries

- Top 10 properties in Whitefield by price
- Average price by BHK in Whitefield
- Top 10 societies by average price

### Advanced Queries

- Average price of 2BHK using CTE
- Locations above overall avg price (Multiple CTEs)
- BHK wise min, max, avg price by location
- Top 10 societies per location using DENSE_RANK() Window Function

---

## 📈 Power BI Dashboard — Page 1 Overview

| Visual      | Details                                          |
| ----------- | ------------------------------------------------ |
| KPI Cards   | Total Properties, Locations, Avg Price, Avg Sqft |
| Bar Chart   | BHK Distribution                                 |
| Donut Chart | Properties by Area Type                          |
| Bar Chart   | Top 10 Locations by Avg Price                    |
| Map         | Bangalore Property Locations                     |
| Slicers     | Area Type, BHK, Location                         |

---

## 🔍 Key Insights

1. 2 BHK dominates Bangalore market — best for rental investment
2. Ashok Nagar is most expensive at ₹1,486 Lakhs avg
3. Super Built-up Area accounts for 66% of listings
4. Price triples from 3BHK (₹110L) to 4BHK (₹307L)

---

## 📁 Dataset

- Source: Kaggle — Bengaluru House Price Data
- Rows: 13,320
- Columns: area_type, availability, location, society,
  total_sqft, bath, balcony, price

---

## 👨‍💻 Author

Supravat Das | 2025 B.Tech CSE Graduate | Aspiring Data Analyst
Tools: Python | SQL | Power BI
