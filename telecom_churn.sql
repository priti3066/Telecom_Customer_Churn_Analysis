CREATE TABLE telecom_churn (
    customerid VARCHAR(20),
    count INT,
    country VARCHAR(100),
    state VARCHAR(100),
    city VARCHAR(100),
    zip_code INT,
    lat_long VARCHAR(50),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    gender VARCHAR(20),
    senior_citizen VARCHAR(10),
    partner VARCHAR(10),
    dependents VARCHAR(10),
    tenure_months INT,
    phone_service VARCHAR(30),
    multiple_lines VARCHAR(30),
    internet_service VARCHAR(30),
    online_security VARCHAR(30),
    online_backup VARCHAR(30),
    device_protection VARCHAR(30),
    tech_support VARCHAR(30),
    streaming_tv VARCHAR(30),
    streaming_movies VARCHAR(30),
    contract VARCHAR(30),
    paperless_billing VARCHAR(10),
    payment_method VARCHAR(50),
    monthly_charges DECIMAL(10,2),
    total_charges DECIMAL(12,2),
    churn_label VARCHAR(10),
    churn_value INT,
    churn_score INT,
    cltv INT,
    churn_reason VARCHAR(100)
);

SELECT * FROM telecom_churn

-- ============================================================
-- TELECOM CUSTOMER CHURN ANALYSIS
-- PostgreSQL Analysis Queries
-- ============================================================


-- 1. Total Customers
SELECT COUNT(*) AS total_customers
FROM telecom_churn;


-- 2. Churned Customers
SELECT COUNT(*) AS churned_customers
FROM telecom_churn
WHERE "churn_label" = 'Yes';


-- 3. Retained Customers
SELECT COUNT(*) AS retained_customers
FROM telecom_churn
WHERE "churn_label" = 'No';


-- 4. Overall Churn Rate
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn;


-- 5. Churn by Contract Type
SELECT
    "contract",
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY "contract"
ORDER BY churn_rate DESC;


-- 6. Churn by Internet Service
SELECT
    "internet_service",
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY "internet_service"
ORDER BY churn_rate DESC;


-- 7. Churn by Payment Method
SELECT
    "payment_method",
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY "payment_method"
ORDER BY churn_rate DESC;


-- 8. Churn by Tenure
SELECT
    CASE
        WHEN tenure_months <= 12 THEN '0-12 months'
        WHEN tenure_months <= 24 THEN '13-24 months'
        WHEN tenure_months <= 48 THEN '25-48 months'
        WHEN tenure_months <= 60 THEN '49-60 months'
        ELSE '61+ months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY tenure_group
ORDER BY
    MIN(tenure_months);


-- 9. Churn by Online Security
SELECT
    "online_security",
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY "online_security"
ORDER BY churn_rate DESC;


-- 10. Churn by Senior Citizen Status
SELECT
    "senior_citizen",
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY "senior_citizen"
ORDER BY churn_rate DESC;


-- 11. Churn by Partner Status
SELECT
    "partner",
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY "partner"
ORDER BY churn_rate DESC;


-- 12. Churn by Dependents
SELECT
    "dependents",
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY "dependents"
ORDER BY churn_rate DESC;


-- 13. Churn by Monthly Charge Group
SELECT
    CASE
        WHEN "monthly_charges" < 30 THEN 'Under 30'
        WHEN "monthly_charges" < 60 THEN '30-59'
        WHEN "monthly_charges" < 90 THEN '60-89'
        ELSE '90-119'
    END AS monthly_charge_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN "churn_label" = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS churn_rate
FROM telecom_churn
GROUP BY monthly_charge_group
ORDER BY MIN("monthly_charges");









