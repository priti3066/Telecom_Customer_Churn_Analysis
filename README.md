# Telecom Customer Churn Analysis

## 📌 Project Overview

Customer churn is a major business challenge for telecom companies because losing existing customers can directly affect recurring revenue and customer lifetime value.

This project analyzes telecom customer data to understand **why customers churn, which customer segments are most at risk, and what retention strategies can be prioritized**.

The analysis was performed using **PostgreSQL and Power BI**, combining SQL-based data analysis with an interactive business intelligence dashboard.

---

## 🎯 Business Question

> **Why are customers churning, which customers are most at risk, and what retention strategies should the company prioritize?**

### Key Questions

* What is the overall customer churn rate?
* Which customer characteristics are associated with higher churn?
* How does tenure affect churn?
* Which contract types have the highest churn?
* How do internet services affect customer churn?
* Which payment methods are associated with higher churn?
* Which additional services are associated with customer retention?
* Which customers represent high-value and high-risk segments?
* What retention actions can the business prioritize?

---

## 📊 Dataset

The project uses the **Telco Customer Churn** dataset.

The final cleaned dataset contains:

* **7,043 customers**
* Customer demographics
* Account and contract information
* Internet and additional services
* Payment and billing information
* Customer lifetime value
* Churn information
* Churn risk indicators

The cleaned dataset is available in the `Dataset` folder.

---

## 🛠️ Tools & Technologies

* **PostgreSQL** — Data analysis and SQL queries
* **Power BI** — Interactive dashboard and visualization
* **Excel/CSV** — Dataset preparation and storage
* **GitHub** — Project documentation and version control

---

## 🔍 Analysis Performed

### 1. Overall Churn

The dataset contains **7,043 customers**.

* **1,869 customers churned**
* **5,174 customers were retained**
* **Overall churn rate: 26.54%**

---

### 2. Contract Analysis

Churn varies substantially by contract type.

| Contract Type  | Churn Rate |
| -------------- | ---------: |
| Month-to-month |     42.71% |
| One year       |     11.27% |
| Two year       |      2.83% |

Customers on month-to-month contracts show a substantially higher churn rate than customers on longer-term contracts.

---

### 3. Tenure Analysis

Customer tenure shows a clear relationship with churn.

| Tenure Group | Churn Rate |
| ------------ | ---------: |
| 0–12 months  |     47.44% |
| 13–24 months |     28.71% |
| 25–48 months |     20.39% |
| 49–60 months |     14.42% |
| 61+ months   |      6.61% |

The highest churn rate occurs among customers in their first year.

---

### 4. Internet Service Analysis

| Internet Service    | Churn Rate |
| ------------------- | ---------: |
| Fiber optic         |     41.89% |
| DSL                 |     18.96% |
| No internet service |      7.40% |

Fiber-optic customers have a higher observed churn rate than the other internet-service groups in this dataset.

---

### 5. Payment Method Analysis

| Payment Method            | Churn Rate |
| ------------------------- | ---------: |
| Electronic check          |     45.29% |
| Mailed check              |     19.11% |
| Bank transfer (automatic) |     16.71% |
| Credit card (automatic)   |     15.24% |

Electronic-check customers show the highest observed churn rate among the payment-method groups.

---

### 6. Customer Characteristics

The analysis also examines churn across:

* Gender
* Senior citizen status
* Partner status
* Dependents

Observed churn rates include:

* Senior citizens: **41.68%**
* Non-senior citizens: **23.61%**
* Customers without partners: **32.96%**
* Customers with partners: **19.66%**
* Customers without dependents: **32.55%**
* Customers with dependents: **6.52%**

Gender differences were comparatively small:

* Female: **26.92%**
* Male: **26.16%**

---

### 7. Service Analysis

Additional services were analyzed to identify differences in observed churn rates.

Examples include:

* Online Security
* Online Backup
* Device Protection
* Tech Support
* Streaming TV
* Streaming Movies

Customers without Online Security had a churn rate of **41.77%**, compared with **14.61%** among customers with Online Security.

Customers without Tech Support had a churn rate of **41.64%**, compared with **15.17%** among customers with Tech Support.

These results identify service adoption as an important area for further retention analysis.

---

## ⚠️ Customer Risk Analysis

The project also evaluates customer risk using **Churn Score** and **Customer Lifetime Value (CLTV)**.

### High-Value / High-Risk Customers

The analysis identified:

* **848** high-value, high-risk customers
* **581** of these customers had churned
* **267** remained active
* Observed churn rate: **68.51%**

This segment can help businesses identify customers where churn could have a greater potential revenue impact.

---

## 🚨 High-Risk New Customers

New customers represent an important retention segment.

Among the identified high-risk new-customer segment:

* **1,994 customers**
* **1,024 churned**
* **970 remained active**
* Observed churn rate: **51.35%**

A more targeted priority segment combining risk and customer value contained:

* **815 customers**
* **547 churned**
* **268 remained active**
* Observed churn rate: **67.12%**

Among the 268 active high-risk customers, **106 were classified as high-value**.

---

## 💡 Key Churn Reasons

The dataset's churn-reason analysis identified several commonly reported reasons, including:

| Churn Reason                     |  Share |
| -------------------------------- | -----: |
| Support person attitude          | 10.27% |
| Competitor offered higher speeds | 10.11% |
| Competitor offered more data     |  8.67% |
| Don't know                       |  8.24% |

These findings provide additional context for interpreting the customer churn patterns.

---

## 📈 Power BI Dashboard

The Power BI dashboard contains three analytical pages.

### Page 1 — Executive Churn Overview

Provides a high-level view of:

* Customer retention status
* Overall churn
* Contract churn
* Tenure trends
* Internet service
* Payment methods
* Monthly charges
* Online Security
* High-value customer risk

### Page 2 — Customer Risk & Retention Analysis

Focuses on customer characteristics, service usage, and customer risk patterns.

### Page 3 — Retention Strategy & Business Recommendations

Connects the analysis to practical retention opportunities and identifies customer segments that require greater attention.

---

## 🎯 Business Insights

The analysis highlights several important patterns:

1. **Month-to-month customers have substantially higher observed churn** than customers on one- or two-year contracts.

2. **New customers show higher churn**, making the early customer lifecycle an important retention period.

3. **Electronic-check customers have the highest observed churn rate** among payment methods.

4. **Fiber-optic customers show higher observed churn** than DSL and customers without internet service.

5. Customers without services such as **Online Security and Tech Support show higher observed churn rates** than customers who have these services.

6. **High-value, high-risk customers represent an important retention segment** because churn among these customers may have greater potential business impact.

7. The churn-reason analysis highlights **support experience and competitor offers** among the frequently reported reasons for leaving.

---

## 💼 Retention Opportunities

Based on the observed patterns, potential business actions include:

### 1. Focus on Early-Customer Retention

Develop onboarding and early-lifecycle engagement programs for new customers.

### 2. Encourage Longer-Term Contracts

Provide suitable incentives or value propositions that encourage customers to move from month-to-month contracts to longer-term plans.

### 3. Improve Customer Support

Monitor support interactions and address recurring service-quality issues identified in churn reasons.

### 4. Promote Value-Adding Services

Consider targeted offers for customers who do not currently use services such as Online Security and Tech Support.

### 5. Monitor High-Value, High-Risk Customers

Use CLTV and churn-risk indicators together to identify customers who may warrant targeted retention attention.

### 6. Review Payment Experience

Investigate whether customers using electronic checks face payment-process friction and evaluate suitable alternatives or incentives for automatic payment methods.

---

## 📁 Project Structure

```text
Telecom_Customer_Churn_Analysis
│
├── Dataset
│   └── telecom_churn.csv
│
├── SQL
│   └── churn_analysis.sql
│
├── PowerBI
│   └── Telecom_Customer_Churn_Analysis.pbix
│
└── README.md
```

---

## 🚀 Project Outcome

This project demonstrates how **SQL and Power BI can be combined to transform raw telecom customer data into actionable business insights**.

The analysis moves from:

**Raw Customer Data → SQL Analysis → Churn Patterns → Risk Segmentation → Power BI Dashboard → Retention Opportunities**

The project demonstrates practical skills in:

* Data analysis
* SQL
* PostgreSQL
* Business intelligence
* Power BI
* Customer segmentation
* Churn analysis
* Risk analysis
* Data visualization
* Business recommendations

---

## 👩‍💻 Author

**Priti Pandey**

Aspiring Data Analyst | Business Analytics | Power BI | SQL | PostgreSQL

GitHub: `github.com/priti3066`

LinkedIn: `linkedin.com/in/pritipandey09`

````

### Step 8 — Save it

Press **Ctrl + S**.

Then your project should look like:

```text
Telecom_Customer_Churn_Analysis
│
├── Dataset
│   └── telecom_churn.csv
│
├── SQL
│   └── churn_analysis.sql
│
├── PowerBI
│   └── Telecom_Customer_Churn_Analysis.pbix
│
└── README.md
````

**Don't upload to GitHub yet.**

Once you've pasted and saved the README, reply **“done”**. Then we'll do the **final folder check before uploading to GitHub**, one step at a time.

