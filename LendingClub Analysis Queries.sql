SELECT 
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM loan_data
GROUP BY loan_status

SELECT 
    grade,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 'Bad Loan' THEN 1 ELSE 0 END) AS bad_loans,
    ROUND(SUM(CASE WHEN loan_status = 'Bad Loan' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY grade
ORDER BY default_rate DESC


SELECT 
    credit_policy,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 'Bad Loan' THEN 1 ELSE 0 END) AS bad_loans,
    ROUND(SUM(CASE WHEN loan_status = 'Bad Loan' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY credit_policy
ORDER BY default_rate DESC


SELECT 
    loan_status,
    ROUND(AVG(dti), 2) AS avg_dti,
    ROUND(AVG(fico_range_low + fico_range_high) / 2, 2) AS avg_fico,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(annual_inc), 2) AS avg_annual_income
FROM loan_data
GROUP BY loan_status


SELECT 
    purpose,
    COUNT(*) AS total_loans,
    SUM(CASE WHEN loan_status = 'Bad Loan' THEN 1 ELSE 0 END) AS bad_loans,
    ROUND(SUM(CASE WHEN loan_status = 'Bad Loan' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS default_rate
FROM loan_data
GROUP BY purpose
ORDER BY default_rate DESC