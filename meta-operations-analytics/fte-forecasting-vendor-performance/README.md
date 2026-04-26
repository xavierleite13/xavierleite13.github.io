FTE Forecasting & Vendor Performance Analytics
Tableau + SQL | Workforce Planning | Meta Operations

This project analyzes global staffing capacity, production FTE, and vendor performance across multiple languages, cities, and staffing groups. It combines short‑term staffing guidance (STF) and long‑term forecasting (LTF) to provide a unified view of operational capacity and workforce allocation.

The dashboards were designed to support Ops Managers, Vendor Managers, and Workforce Planners in making data‑driven decisions around staffing, hiring, and vendor distribution.

🔍 Business Problem
Meta’s global operations rely on accurate staffing to meet production demand across dozens of languages, vendors, and cities.
However, teams face challenges:

Under‑ or over‑staffing in specific languages

Vendor performance inconsistencies

Misalignment between required vs committed hours

Lack of visibility into daily and weekly capacity

Fragmented STF/LTF data sources

This project solves these issues by creating a centralized forecasting and performance analytics suite.

🧠 Analytical Approach
1. Combine STF + LTF datasets
The SQL extracts:

Latest STF guidance

Latest LTF forecasts

FTE averages

Production hours

Training hours

Staffing group segmentation

Vendor + city breakdowns
2. Normalize and filter data
Using:

Code
where ds = '<LATEST_DS:dim_ap_ce_xso_stf_guidance>'
and

Code
where ds = '<LATEST_DS:dim_ap_ce_xso_ltf>'
ensures the dashboards always reflect the most recent operational data.

3. Segment by operational dimensions
Language

Vendor

Work city

Staffing group

Planning group

Business unit

Resiliency

Week / Month

4. Build multi‑layer dashboards
Executive Summary → Leadership

Vendor & City Performance → Ops Managers

Daily View → Team Leads

FTE Forecasting → Workforce Planning

📊 Dashboard Overview

### Executive Summary
![Executive Summary](transferir%20(1).jpeg)

### Vendor & City Performance
![Vendor Performance](transferir%20(2).jpeg)

### Daily View
![Daily View](transferir%20(3).jpeg)

1. Executive Summary Dashboard
Shows:

Production FTE averages (M01–M12)

Language‑level capacity distribution

Staffing group breakdown

Monthly trends

Use case:  
Leadership can quickly identify capacity gaps and forecasted workload distribution.

2. Vendor & City Performance Dashboard
Shows:

Required vs committed hours

PHC / DLC / ILC performance

Vendor‑level contribution

City‑level distribution

Use case:  
Vendor Managers can identify under‑performing vendors or cities and reallocate workload.

3. Daily View Dashboard
Shows:

Daily staffing guidance (PINC / LHC)

Weekly trends

Language‑level daily variance

City‑specific operational patterns

Use case:  
Team Leads can adjust staffing day‑by‑day to meet production demand.

🧩 Key Insights
Several languages show significant under‑commitment, especially Thai, Vietnamese, and Japanese.

Committed hours trend downward across Q4, indicating future staffing risk.

Vendor performance varies widely across cities (KL, Gurgaon, Berlin, Manila, Dublin, Porto, Austin).

Daily guidance reveals weekday vs weekend performance gaps, useful for scheduling.

Combining STF + LTF provides a single source of truth for capacity planning.

🎯 Impact
This analytics suite enables:

More accurate staffing allocation

Reduced under‑staffing risk

Better vendor distribution

Improved forecasting accuracy

Faster decision‑making for leadership

Clear visibility into operational performance

🛠️ Tools Used
Tableau — Dashboard design

SQL — Data extraction & transformation

Snowflake / BigQuery / Hive (depending on environment)

## 🧾 SQL Files

- *STF Guidance Query*  
  [stf_guidance.sql](./sql/stf_guidance.sql)

- *LTF Forecast Query*  
  [ltf_forecast.sql](./sql/ltf_guidance.sql)
