# 📊 Data Science Project
### SQL + Python + R Data Pipeline Projects

This repository contains three distinct end-to-end data science projects. Each project follows a professional **ETL (Extract, Transform, Load)** pipeline:
1.  **Storage:** SQL for structured database management.
2.  **Processing:** Python (Pandas) for data cleaning and feature engineering.
3.  **Visualization:** R (ggplot2) for statistical reporting and business insights.

---

## 🚀 Project 1: Sales Data Analysis System
**Objective:** Analyze retail performance to identify high-revenue products and regional trends.
* **Data Engineering:** Processed raw transaction logs to calculate net revenue after discounts.
* **Key Insight:** Identified 'Electronics' as the primary revenue driver, contributing to a total company revenue of **$17,765.75**.
* **Tech Stack:** SQLite, Python, R (ggplot2).

## 🎓 Project 2: Student Performance Analysis
**Objective:** Evaluate the correlation between student attendance and academic success.
* **Data Engineering:** Used Python logic to categorize students into "Pass/Fail" status based on a 50-mark threshold.
* **Key Insight:** Visual analysis confirmed a strong positive correlation between attendance and marks; students with <60% attendance were statistically more likely to fail.
* **Tech Stack:** SQLite, Python, R (dplyr).

## 💼 Project 3: Employee Salary Analysis
**Objective:** Analyze departmental pay scales and salary distributions.
* **Data Engineering:** Aggregated department-wise averages and identified salary outliers using Python.
* **Key Insight:** Utilized **Boxplots with Jitter** to visualize the pay spread, revealing that the IT department maintains the highest median salary.
* **Tech Stack:** SQLite, Python, R (ggplot2).

---

## 🛠️ Installation & Setup
1.  **Environment:** Ensure you have the `.venv` active.
2.  **Database Setup:** Run the `_logic.py` or `_calc.py` scripts in VS Code to generate the SQLite databases.
3.  **Visuals:** Open the R scripts in **RStudio**. Set the working directory to the "Source File Location" and run to generate the PNG reports.

---

## 📈 Skills Demonstrated
* **Database Design:** Writing complex SQL schemas and insert scripts.
* **Python Programming:** Data manipulation with Pandas and database connectivity with `sqlite3`.
* **Statistical Graphics:** Creating bar charts, scatter plots with regression lines, and boxplots in R.
* **Workflow Automation:** Building a bridge between different programming languages to create a unified data pipeline.
