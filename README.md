# LendingClub Credit Risk Analysis

## Project Overview
Analysis of 2.1 million LendingClub peer-to-peer loans issued between 2007 and 2018, 
built to identify key drivers of loan default and assess portfolio risk exposure.

## Tools Used
- **Power BI** — Dashboard development and DAX measures
- **Power Query** — Data cleaning and transformation
- **SQL Server Management Studio** — Data validation and aggregation queries

## Dataset
- Source: LendingClub Loan Data (Kaggle)
- Period: 2007 to 2018
- Original columns: 150+
- Columns retained after cleaning: 18
- Final row count: 2,113,761

## Key Findings
- Overall bad loan rate: 13% (280K loans)
- Grade G loans default at 41% vs Grade A at 4%
- Outside credit policy loans default at 27.48% vs 13.21% for within policy
- Small business loans carry the highest default rate at 21%
- Bad loan borrowers have lower avg FICO (690 vs 700) and higher avg DTI (19.93 vs 18.58)

## Repository Contents
- `LendingClub_Analysis_Queries.sql` — Five analytical SQL queries mirroring dashboard findings
- Power BI dashboard hosted on Maven Analytics (link below)

## Dashboard
[https://app.powerbi.com/view?r=eyJrIjoiZjlkMjJkMGQtMWY1YS00MGRkLWI0YWQtNTkwYTZlYzY3OGY1IiwidCI6ImI2NTIzZTMzLWE1OWQtNGEyZS1hMmRhLWMwZDZlYzBhZDAzMSJ9](#) ← update this link after publishing

## Data Cleaning Steps
1. Reduced columns from 150+ to 18 relevant fields
2. Created credit_policy column before simplifying loan_status
3. Classified loan_status into binary Good Loan / Bad Loan categories
4. Removed 4% null records from emp_length (deliberate, no imputation)
5. Filtered blank loan_status rows
