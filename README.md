# Patients-waiting-time-vs-nhs-absence-time-due-to-mental-health-per-region
Patients waiting time vs nhs absence time due to mental health per region

## Overview
This project explores the relationship between NHS staff mental health–related sickness absences and regional patient waiting times across England.

Why this matters: NHS waiting times are a central policy concern, and staff wellbeing is a key factor in healthcare delivery. Understanding whether higher mental-health-related absences are associated with longer waiting times can inform workforce and service planning.

Key finding (March 2025): Pearson’s correlation coefficient between absence rates and waiting times was –0.18, suggesting an extremely weak negative relationship, almost more or less no correlation.

## Key Findings

| Region                 | Avg Waiting Time (Weeks) | Absence Rate Due to mental health (%) |
|-------------------------|--------------------------|------------------|
| East of England         | 14.360                  | 1.135            |
| London                  | 13.038                  | 1.09             |
| Midlands                | 13.370                  | 1.3025           |
| North East & Yorkshire  | 10.629                  | 1.3425            |
| North West              | 13.353                  | 1.4225            |
| South East              | 12.894                  | 1.085            |
| South West              | 11.115                  | 1.165            |
| England (Overall)       | 12.921                  | 1.22            |

* Longest wait time: East of England (14.36 weeks)
* Shortest wait time: North East & Yorkshire (10.63 weeks)
* Highest absence rate: North West (1.42%)
* Lowest absence rate: London (1.09%)

## Methodology
1. Data Collection
- NHS sickness absence data: NHS Digital
- NHS patient waiting times: publicly available statistics
2. Data Cleaning and Processing
- SQL queries aggregated waiting times and scaled mental health absence rates (25% of total absences).
- Data merged by region for analysis.
3. Analysis
- Calculated Pearson correlation in R.
- Visualized scatterplots with regression lines to highlight trends.

## Insights
While there is a weak negative correlation shown in the month of March 2025, the results suggest that longer patient waiting times do not strongly predict higher mental health absences. Regional variations indicate that other factors such as staffing levels, local work culture, and policies likely influence mental health outcomes. Visualizations highlight regions of concern, providing a practical starting point for healthcare administrators to explore targeted interventions.
