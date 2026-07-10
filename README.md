<div align="center">

# Global Layoffs Exploratory Data Analysis Using SQL

</div>

## About The Project

This project focuses on performing an **Exploratory Data Analysis (EDA)** on a global layoffs dataset using **MySQL**. I explored workforce reduction patterns across companies, industries, countries, locations, and company growth stages to better understand how layoffs evolved over time.

Throughout this analysis, I investigated:

* Which companies experienced the highest number of layoffs
* Which industries and countries were most affected
* How layoffs changed over time
* Which companies completely shut down
* Whether highly funded companies still failed
* Which organizations underwent multiple rounds of layoffs

---

## Project Objectives

* Perform exploratory data analysis using SQL
* Analyze layoff trends from multiple perspectives
* Identify patterns and anomalies within the dataset
* Practice writing analytical SQL queries
* Apply aggregate functions, CTEs, and window functions
* Extract insights that answer real-world business questions

---

## Built With

| Technology | Purpose                                    |
| ---------- | ------------------------------------------ |
| MySQL      | Data storage and analysis                  |
| SQL        | Querying and exploratory analysis          |
| GitHub     | Project hosting and portfolio presentation |

---

## Dataset Overview

| Information        | Description                                                          |
| ------------------ | -------------------------------------------------------------------- |
| Dataset            | Global Layoffs Dataset                                               |
| Analysis Type      | Exploratory Data Analysis (EDA)                                      |
| Tool Used          | MySQL                                                                |
| Focus Areas        | Companies, Industries, Countries, Locations, Stages, Time Trends     |
| Techniques Applied | Aggregations, CTEs, Window Functions, Rankings, Time-Series Analysis |

---

## Dataset Files

| File | Description |
|------|-------------|
| `layoffs.csv` | Original raw Global Layoffs dataset downloaded from [Kaggle](https://www.kaggle.com/datasets/swaptr/layoffs-2022). |
| `layoffs_cleaned.csv` | Cleaned and analysis-ready dataset generated from my previous project, **SQL Data Cleaning: Global Layoffs Dataset**, and used for this exploratory analysis. |

---

## What I Explored

### Dataset Exploration

* Dataset overview
* Date range analysis
* Largest layoff events
* Companies with complete shutdowns

### Company Analysis

* Companies with the highest layoffs
* Companies with multiple rounds of layoffs
* Companies that shut down despite raising significant funding

### Industry Analysis

* Industries most affected by layoffs
* Top industries by year

### Geographic Analysis

* Countries with the highest layoffs
* Locations with the highest layoffs
* Top countries by year

### Time-Series Analysis

* Yearly layoff trends
* Monthly layoff trends
* Rolling cumulative layoffs
* Top companies by year

---

## SQL Concepts Applied

| Category                 | SQL Concepts                        |
| ------------------------ | ----------------------------------- |
| Aggregation              | SUM(), AVG(), MIN(), MAX(), COUNT() |
| Filtering                | WHERE, HAVING                       |
| Grouping                 | GROUP BY                            |
| Sorting                  | ORDER BY                            |
| Date Functions           | YEAR(), SUBSTRING()                 |
| Common Table Expressions | WITH (CTEs)                         |
| Window Functions         | SUM() OVER(), DENSE_RANK()          |
| Ranking                  | DENSE_RANK()                        |
| Time-Series Analysis     | Yearly and Monthly Trends           |

---

## Some Project Screenshots

### Companies That Shut Down Despite Raising Significant Funding

<p align="center">
<img src="eda_images/funded_companies_closed.png" width="900">
</p>

### Layoffs By Industry

<p align="center">
<img src="eda_images/industry_layoff.png" width="900">
</p>

### Monthly Trend With Rolling Total

<p align="center">
<img src="eda_images/monthly_rolling.png" width="900">
</p>

### Top 10 companies with the largest layoffs each year

<p align="center">
<img src="eda_images/top10_peryear.png" width="900">
</p>

### Companies With Multiple Rounds of Layoffs

<p align="center">
<img src="eda_images/layoff_count.png" width="900">
</p>

---

## Sample Business Questions Answered

* Which companies experienced the largest layoffs?
* Which industries were most affected?
* Which countries and locations reported the highest layoffs?
* How did layoffs change over time?
* Which companies completely shut down?
* Which organizations experienced multiple rounds of layoffs?
* How did annual rankings change across companies, industries, and countries?

---

<div align="center">

### If you found this project interesting, feel free to explore the repository and review the analysis.

**Thank you for visiting my project!**

</div>
