# Sales & Revenue Analysis

A Power BI business intelligence project that analyses sales performance, revenue trends, and product profitability across multiple market segments and countries.

---

## Project Files

| File | Description |
|------|-------------|
| `Financial_Sample.xlsx` | Source dataset containing 700 rows of transactional sales records |
| `Sales_and__Reveue_Analysis.pbix` | Power BI report with interactive dashboards and visualisations |

---

## Dataset Overview

**Source file:** `Financial_Sample.xlsx`  
**Sheet:** Sheet1  
**Records:** ~700 rows

### Columns

| Column | Description |
|--------|-------------|
| `Segment` | Customer segment (Government, Midmarket, Small Business, Enterprise, Channel Partners) |
| `Country` | Country of sale (Canada, France, Germany, Mexico, United States of America) |
| `Product` | Product name (Carretera, Montana, Paseo, Velo, VTT, Amarilla) |
| `Discount Band` | Discount tier applied (None, Low, Medium, High) |
| `Units Sold` | Number of units sold per transaction |
| `Manufacturing Price` | Cost to manufacture one unit |
| `Sale Price` | Listed selling price per unit |
| `Gross Sales` | Total revenue before discounts (Units Sold × Sale Price) |
| `Discounts` | Total discount value applied |
| `Sales` | Net revenue after discounts |
| `COGS` | Cost of Goods Sold |
| `Profit` | Net profit (Sales − COGS) |
| `Date` | Transaction date |
| `Month Number` | Numeric month (1–12) |
| `Month Name` | Full month name |
| `Year` | Transaction year (2013–2014) |

---

## Power BI Report

**File:** `Sales_and__Reveue_Analysis.pbix`

### Dashboard — Page 1

The report contains a single interactive dashboard page with the following visuals:

- **Total Sales (Card)** — KPI card showing overall net sales figure at a glance
- **Revenue Trend (KPI Visual)** — Tracks revenue performance over time against a target or prior period
- **Top 3 Performing Products (Bar Chart)** — Highlights the three best-selling products by revenue
- **Slicer** — Interactive filter allowing users to slice data by dimensions such as country, segment, or time period
- **Text Box** — Supporting label or title element for the dashboard

---

## Key Business Dimensions

**Segments analysed:**
Government · Midmarket · Small Business · Enterprise · Channel Partners

**Markets covered:**
Canada · France · Germany · Mexico · United States of America

**Products tracked:**
Carretera · Montana · Paseo · Velo · VTT · Amarilla

**Time period:**
January 2013 – December 2014

---

## How to Use

### Viewing the Report
1. Open `Sales_and__Reveue_Analysis.pbix` in **Microsoft Power BI Desktop** (free download at [powerbi.microsoft.com](https://powerbi.microsoft.com)).
2. The report connects to the data embedded within the `.pbix` file.
3. Use the slicer on the dashboard to filter by segment, country, product, or time period.

### Refreshing Data from the Excel Source
1. Place `Financial_Sample.xlsx` in a known local directory.
2. In Power BI Desktop, go to **Home → Transform Data → Data Source Settings**.
3. Update the file path to point to your local copy of `Financial_Sample.xlsx`.
4. Click **Home → Refresh** to reload the latest data.

---

## Requirements

- **Microsoft Power BI Desktop** — to open and interact with the `.pbix` report
- **Microsoft Excel** (or compatible tool) — to view or edit the source data
- No coding or scripting environment required

---

## Notes

- The dataset covers a two-year period (2013–2014) and is intended for demonstration and analytical practice.
- Profit figures are derived as `Sales − COGS`; gross margin analysis can be extended using the `Manufacturing Price` and `Sale Price` columns.
- The `Discount Band` column enables discount impact analysis across segments and products.
