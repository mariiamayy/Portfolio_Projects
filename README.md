# Portfolio Projects

This portfolio highlights a selection of data projects that reflect both my technical expertise and analytical thinking. It includes documents, workbooks, presentation slides, and dashboards developed using SQL, Tableau, Excel, Power BI, Python, and PowerPoint. Each project demonstrates my ability to structure, analyze, and present data in a clear, insightful, and visually engaging manner—making complex information accessible for informed decision-making.
I always welcome feedback and suggestions to help me grow and improve.

### Contents 

[Excel](#excel-projects) 

[Power BI](#power-bi-projects)

[SQL](#sql-projects)

[Python](#python-projects)

[Tableau](#tableau)

 

## Excel Projects 

### 👩‍💼 Employee Data Analysis – Excel Assessment Project

This project involved analyzing employee data in Excel to uncover insights related to workforce performance, training, satisfaction, and diversity. The goal was to assess various HR metrics through pivot tables, formulas, charts, and dashboard creation, catering to different skill levels from beginner to advanced.

Key Highlights:

* Created pivot tables to summarize headcount by department, engagement by department, and satisfaction by gender.
* Applied conditional formatting to highlight underperformers and top/bottom 10% based on performance ratings.
* Used **VLOOKUP**, **INDEX + MATCH** to retrieve employee-specific information like supervisor email and training program name.
* Built visualizations: bar charts for training costs, histograms for exit dates, and scatter plots to analyze training duration vs. cost.
* Filtered terminated employees to identify the most common termination reasons.
* Designed a multi-level pivot table for performance score analysis across business units and job functions.
* Created dynamic and interactive charts to track individual employee performance over time.
* Built an automated macro to refresh all pivot tables.
* Developed a comprehensive HR dashboard displaying KPIs like headcount, training expenses, and average engagement.

Skills Used:
Excel · Pivot Tables · Conditional Formatting · VLOOKUP · INDEX + MATCH · Data Visualization · Charts · Macros · SUMPRODUCT · Dashboard Design · HR Metrics Analysis

### 📊 Employee Survey Data Analysis – Excel Assessment Project

This project focused on analyzing employee survey responses using a wide range of Excel tools. The objective was to clean and validate data, derive insights from response patterns, and build dynamic reports and dashboards for HR decision-making. Designed for interns across all skill levels, the assessment emphasizes both foundational and advanced Excel capabilities.

Key Highlights:

* Imported and cleaned survey data, addressing missing and inconsistent values.
* Applied **data validation** to restrict response inputs to a 0–4 range.
* Used **conditional formatting** to visually highlight negative feedback like “Strongly Disagree.”
* Categorized responses using **IF** and **nested IF** logic into Positive, Neutral, or Negative groups.
* Employed **VLOOKUP** and **HLOOKUP** to create a summary sheet for department- and question-specific insights.
* Built **pivot tables** with slicers to analyze average responses by department and added **calculated fields** for deeper question-level analysis.
* Created **pivot charts** to visualize average response trends.
* Applied **INDEX-MATCH** to return response text based on numerical values.
* Converted the dataset into an Excel **Table** for structured analysis and scalability.
* Ran **Scenario Manager** to simulate optimistic, pessimistic, and realistic feedback scenarios.
* Used **Solver Add-In** to optimize response distribution under specific constraints.
* Designed a **Waterfall Chart** to visualize the net effect of positive and negative responses in a department.
* Created **dynamic named ranges** to auto-extend analysis as new data is added.
* Built relationships in the **Excel Data Model** and wrote **DAX measures** to compute overall averages.
* Utilized **Goal Seek** for targeted response adjustments.
* Developed an **interactive dashboard** with dropdowns and buttons to explore KPIs and survey metrics dynamically.

Skills Used:
Excel · Data Cleaning · Data Validation · Conditional Formatting · Pivot Tables · VLOOKUP · INDEX-MATCH · IF Logic · Solver · Scenario Manager · Dynamic Ranges · Data Modeling · DAX · Dashboard Design · What-If Analysis · Charting

### 📚 Best Seller Books Analysis 

### ☕ Coffee Orders Dashboard

## Power BI Projects 

### 📈 Excelerate User Engagement Project - Excelerate Internship Project
This project delivers a comprehensive Power BI dashboard analyzing user behavior and opportunity sign-up trends on the Excelerate platform. The goal was to uncover patterns in engagement, rewards, and skill development to guide strategic growth and outreach.

Dashboard Focus Areas:
- User Demographics: Analyzed over 27K users by gender, country, and city, identifying geographic and segment-specific trends.
- Opportunity Sign-Ups: Assessed sign-up patterns by opportunity type, category, and learner background.
- Popular Skills & Rewards: Identified the most earned skills (e.g., Critical Thinking) and reward distribution by opportunity.
- Academic & Gender Trends: Explored how academic levels and gender influence engagement and opportunity preferences.

Key Highlights:
- Over 11K users signed up for opportunities, with Data Visualization being the most popular across all segments.
- Males had higher engagement across most categories, while specific opportunities resonated differently by academic level.
- Internships delivered the highest rewards and skill points, while engagement-focused opportunities showed lower returns.
- Skills data was normalized and cleaned to enable effective analysis and meaningful visualizations.

Challenges Addressed:
- Introduced a USER ID as a primary key to ensure dataset integrity.
- Normalized multi-valued “Skills Earned” fields into a separate relational table.
- Cleaned and categorized missing or invalid geographic and demographic data for accurate analysis.

Skills Used:
Power BI · Data Cleaning · Data Modeling · Data Visualization · User Behavior Analysis · Dashboard Design · Relational Data Management

### 📊 Business Performance Project
This project presents a comprehensive Power BI dashboard that analyzes key business performance indicators across financial health, revenue distribution, risk impact, workforce efficiency, and sustainability. The dashboard empowers business leaders to make strategic, data-driven decisions.

Dashboard Focus Areas:
- Financial Analysis: Tracked EBITDA, ROI, profit margin, and market share to assess profitability and investment performance.
- Revenue Insights: Explored revenue by location and industry, identifying growth trends and forecasting accuracy.
- Risk Management: Evaluated compliance and operational risks, insurance costs, and cost impact levels to mitigate financial threats.
- Workforce Optimization: Assessed training investments, departmental performance, and revenue per employee.
- Sustainability Metrics: Measured financial benefits of green initiatives and social responsibility efforts.

Key Highlights:
- Identified areas of strong financial health and those needing investment optimization.
- Highlighted high-risk categories requiring immediate action.
- Proposed strategies to reduce churn and enhance regional revenue.
- Recommended aligning training budgets with departmental performance.
- Stressed the importance of consistent ESG investment for long-term success.

Skills Used:
Power BI · Data Visualization · KPI Tracking · Business Intelligence · Strategic Analysis · Dashboard Design · Data-Driven Decision Making

### ✈️ Customer Loyalty & Flight Activity Analysis 
This project focused on analyzing customer demographics, loyalty trends, flight activity, and revenue performance for a fictional airline loyalty program. The objective was to generate actionable insights through advanced Power BI dashboards by integrating multiple data sources, modeling relationships, and applying business logic to customer behavior and financial outcomes.

Key Highlights:

- Data Preparation and Modeling:

Imported and cleaned data from four sources: Customer, Flight Activity, Loyalty History, and Calendar using Power BI and Excel.

Validated data types, checked for null values, and built relationships to support seamless cross-table analysis.

- Customer Segmentation & Loyalty Insights:

Segmented customers into high-, medium-, and low-value tiers based on Customer Lifetime Value (CLV).

Visualized CLV distribution across loyalty card tiers (Star, Nova, Aurora) and analyzed average CLV per tier.

Tracked churn rate by identifying customers who canceled memberships and its impact on overall CLV.

- Flight Activity and Revenue Analysis:

Developed bar and line charts to analyze:

Total flights booked per year

Enrollment and cancellation trends over time

Monthly and quarterly revenue based on flights and dollar-point redemptions

Active customers per month and seasonal booking behavior

Conducted What-If Analysis using parameter inputs to simulate enrollment promotions and their effects on CLV.

- Geographic and Demographic Exploration:

Mapped customer locations across countries and provinces using Power BI’s map visual.

Built drill-through capabilities for granular analysis by location (country → province → city).

Analyzed customer profiles based on gender, education level, marital status, and enrollment type.

- Correlations and Patterns:

Used scatter plots to study the relationship between flight distance and loyalty points earned.

Calculated and visualized average CLV across customer types and enrollment categories.

- Dashboard & Presentation:

Assembled all visuals into a fully interactive dashboard with slicers for time, geography, loyalty level, and more.

Documented key findings, insights, and strategic takeaways for business decisions.

Skills Used:
Power BI · Data Modeling · DAX · Data Visualization · Customer Segmentation · Loyalty Analytics · Revenue Analysis · What-If Scenarios · Drill-Through Reports · CLV Analysis · Dashboard Design · Excel

### 🏥 Healthcare Appointment & Patient Experience Analysis 
This project aimed to uncover operational and experiential insights within a healthcare facility by analyzing appointment patterns, wait times, patient satisfaction, and demographic trends. Using Power BI, the goal was to create a dynamic dashboard that informs healthcare administrators about system efficiency, equity, and opportunities for improving the patient journey.

Key Highlights:

- Wait Time Analysis:

Calculated the average patient wait time before appointments to identify service delays.

Analyzed patterns over time to assess system bottlenecks and propose scheduling optimizations.

- Patient Satisfaction Insight:

Evaluated average satisfaction scores to uncover drivers of patient experience.

Correlated satisfaction levels with wait times, appointment types, and visit methods (walk-in vs. referral).

- Patient Volume Trends:

Visualized monthly trends in total patient visits to understand seasonal patterns and resource allocation needs.

Tracked peaks and troughs in demand to aid in staffing and scheduling decisions.

- Appointment Type Comparison:

Distinguished between administrative vs. non-administrative appointments.

Compared these types in terms of average wait time and satisfaction outcomes.

- Demographic Breakdown:

Analyzed patient visits by age group and race to highlight demographic representation and healthcare access trends.

Supported diversity analysis and equitable care planning initiatives.

- Dashboard Development:

Designed a user-friendly interactive dashboard with slicers for demographic filters, time periods, and appointment types.

Delivered key performance indicators (KPIs) on wait time, satisfaction, and visit distribution.

Skills Used:
Data Visualization · Patient Experience Metrics · Demographic Analysis · Time Series Analysis · Dashboard Design · KPI Reporting

🛍️ Onyx Sales Data Breakdown Project
This interactive Power BI dashboard analyzes Onyx's retail sales data to uncover insights into customer behavior, sales trends, return patterns, and promotional effectiveness. The aim is to support data-driven business decisions and improve overall performance.

Dashboard Focus Areas:
- Sales Performance Overview: Tracked key metrics like total quantity sold (30K), total price (1.65M), and average unit price (54.96).
- Customer Satisfaction & Discounts: Monitored average customer satisfaction (2.98) and total discounts given (69.55K).
- Customer Demographics: Analyzed gender distribution across customers—balanced engagement among male, female, and other users.
- Returns Analysis: Compared return rates between online and in-store orders to understand product satisfaction and return behavior.
- Shipping Efficiency: Assessed average delivery time by method (Express, Standard, Overnight) to identify operational strengths.
- Promotions Impact: Visualized quantity sold with and without promotions to evaluate marketing effectiveness.
- Temporal Trends: Displayed total price over time to track performance fluctuations from 2018 to 2024.

Key Highlights:
- Customer gender distribution was nearly even across all segments.
- Return rates were slightly higher for online purchases.
- Promotional sales had a marginally higher quantity than non-promotional, suggesting campaign success.
- Delivery times were consistent across shipping methods, with Express being slightly faster.
- Sales dipped in early 2020 and 2023 but rebounded strongly after.

Skills Used:
Data Visualization · DAX · Interactive Filtering · KPI Analysis · Consumer Behavior Analytics · Time Series Analysis

### 📊 Data Professionals Survey Analysis

### 🏨 Hotel Booking Analysis

## SQL Projects 

### 🩺 Patient Health Records SQL Project

This project explores patient data using SQL to perform analysis and manage healthcare records. The goal was to extract insights and maintain data integrity through various queries and operations.

Query 

Key Highlights:
- Retrieved and filtered patients by age, gender, and medical conditions.
- Calculated metrics like average BMI and age, and ranked patients by blood glucose levels.
- Used subqueries to compare values against averages.
- Updated, inserted, and deleted patient records as needed.
- Created views and applied constraints to improve data structure.
- Suggested schema improvements and basic query optimization techniques.

Skills Used:
SQL · Joins · Aggregation · Subqueries · Data Manipulation · Views · Constraints · Query Optimization

### 🍽️ Restaurant Menu & Orders SQL Project

This project focuses on building and analyzing a restaurant’s menu and order system using SQL. It includes foundational to advanced SQL tasks for database design, data retrieval, and manipulation.

Query 

Key Highlights:
- Convert raw datasets into SQL tables (menu_items, order_details)
- Perform queries involving filtering, sorting, joins, subqueries, and aggregations
- Apply date/time functions, conditional logic, and data modifications (UPDATE, INSERT, DELETE)
- Use Window Functions (RANK, LAG, LEAD), CTEs, and dynamic SQL
- Implement stored procedures, triggers, recursive CTEs, and temporal tables
- Practice database transactions, security roles, and indexing for performance

Skills Used:
SQL · Joins · Aggregations · Subqueries · CTEs · Window Functions · Stored Procedures · Triggers · Indexing · Database Security

### 🖼️ Famous Paintings & Artists SQL Project

This project explores a rich dataset of paintings, artists, museums, and artwork details using SQL. It answers analytical questions ranging from basic lookups to advanced CTEs and window functions.

Query 

Key Highlights:
- Identify paintings not in museums and museums without artwork
- Analyze pricing data (e.g., discounts, overpriced items)
- Investigate museum details: hours, open days, locations
- Rank most/least popular painting subjects, canvas sizes, and styles
- Discover top artists and museums by painting count
- Track artwork across countries and link artists to global reach
- Use CTEs, subqueries, and window functions to derive deeper insights

Skills Used:
SQL · Joins · Subqueries · Window Functions · Aggregate Functions · Common Table Expressions (CTEs)

### 📊 Northwind Sales & Customer Behavior SQL Project - Part of my Data Analysis Program with Carerha 

This project explores the Northwind database using SQL to uncover insights related to sales performance, customer segmentation, product trends, order behavior, and employee efficiency. The objective was to support data-driven decision-making by writing targeted SQL queries and compiling a report that presents key findings, actionable insights, and their business implications.

Query

Report

Key Highlights:
- Segmented customers using RFM and Average Order Value analysis.
- Identified top-performing customers, high-value buyers, and at-risk clients.
- Ranked products by revenue and order volume; flagged low-performing items.
- Analyzed seasonal and weekly order patterns, and distribution of order sizes.
- Evaluated employee performance by total sales, order count, and average order value.
- Recommended marketing, inventory, and HR strategies based on insights.
- Summarized results visually and suggested business improvements.

Skills Used:
SQL · Joins · CTEs · Aggregation · Subqueries · Window Functions · Views · Data Analysis · Performance Evaluation

## Python Projects 

### 🧹 Customer & Products Data Cleaning Project
This project involved cleaning preprocessing and merging customer and product datasets using Python to prepare them for downstream analysis and visualization.

Notebook 

Key Highlights:
- Removed duplicates, handled null values, and corrected inconsistent data entries
- Standardized column names and formats across datasets
- Generated clean, analysis-ready combined dataset for further use

Skills Used:
Pandas · Data Cleaning · Data Merging · Data Preprocessing

### 🎬 Movie Data Cleaning Project

### 🚔 Police Data Cleaning Project

### 🌐 Web Scraping Project
This project demonstrated web scraping techniques to collect data from online sources for custom analysis and reporting.

Notebook 

Key Highlights:
- Scraped structured and semi-structured data using requests and BeautifulSoup
 Cleaned and structured scraped data into tabular format
- Exported results to CSV for future use in visualization or analysis

Skills Used:
Web Scraping · BeautifulSoup · Requests · Data Extraction 

### 📊 Matplotlib Visualization Tasks
A collection of visualization tasks completed using Matplotlib and Numpy to explore and communicate insights 

Skills Used:
Numpy · Matplotlib · Data Visualization · Plot Customization · Exploratory Data Analysis (EDA)

### 🏋️‍♀️ Calories & Workouts Python Analysis Project
This project explores and analyzes a workout dataset using Python. The main objective was to clean, transform, and visualize fitness data to uncover insights into workout duration, pulse, and calories burned.

Notebook 

Key Highlights:
- Data Cleaning:

Replaced missing values in the Calories column with the mean

Corrected inconsistent or erroneous entries (e.g., extreme duration values, invalid dates)

Standardized date formats using pandas.to_datetime and ensured proper data types

- Feature Engineering:

Created a new categorical column Intensity based on Pulse to segment workouts by effort level

- Data Visualization:

Line Plot: Tracked calories burned over time to observe workout trends

Bar Plot: Visualized average calories burned by different workout durations

Scatter Plot: Analyzed the relationship between Pulse and Calories, colored by duration

Categorical Plot: Counted workouts by intensity level (Low, Moderate, High)

Skills Used:
Python · Pandas · Seaborn · Matplotlib · Data Cleaning · Feature Engineering · Data Visualization · Exploratory Data Analysis (EDA)


## Tableau

View my vizzes here >> [Tableau](https://public.tableau.com/app/profile/mariam.ahmed7642/vizzes). 

