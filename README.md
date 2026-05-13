# SQL-Course
Free SQL course for BI &amp; analytics professionals — from foundations  to AI/ML feature engineering. Part of the BI to AI YouTube channel.

# 📊 SQL for Data & AI — Complete Free Course

> **The SQL course built for BI professionals, data analysts, and anyone transitioning into AI/ML engineering.**
> Not a beginner tutorial. Not a PhD-level deep dive. The structured path in between — built specifically for people who already understand data.

<br/>

[![YouTube](https://img.shields.io/badge/YouTube-BI%20to%20AI-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/@BItoAI-1808)
[![GitHub Stars](https://img.shields.io/github/stars/bitoai-Abhi?style=for-the-badge)](https://github.com/bitoai-Abhi)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](./LICENSE)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue?style=for-the-badge&logo=postgresql)](https://www.postgresql.org/)

---

## 🎯 What This Course Is

This is **Phase 1** of the BI to AI learning roadmap — a complete, free, project-based SQL course taught on the [BI to AI YouTube channel](https://www.youtube.com/@BItoAI-1808).

By the end of this course you will:

- ✅ Write production-grade SQL with confidence
- ✅ Understand joins, window functions, and CTEs the way senior analysts do
- ✅ Clean and transform real-world messy data using only SQL
- ✅ Design and optimize schemas for analytics workloads
- ✅ Build ML-ready feature sets directly in SQL — no Python needed yet
- ✅ Walk into any SQL technical interview prepared

**Everything here is free. Every query is on GitHub. No paywalls. No upsells. Ever.**

---

## 👤 Who This Is For

| You are... | This course is for you if... |
|---|---|
| 📊 Power BI Developer | You write DAX daily but want SQL to go deeper |
| 📈 Data Analyst | You know basic SELECT but want senior-level skills |
| 🗄️ BI Professional | You're building toward AI/ML and need the SQL foundation |
| 🔁 Career Transitioner | You're moving from Excel / reporting into data engineering |
| 🤖 AI/ML Learner | You want to understand how training data actually gets built |

---

## 🗺️ Course Roadmap — 7 Days

| Day | Topic | Video | Folder |
|-----|-------|-------|--------|
| **Day 1** | Foundations & Your First Queries | ▶️ [Watch](https://www.youtube.com/@BItoAI-1808) | [`day-01-foundations/`](./day-01-foundations) |
| **Day 2** | Filtering, Aggregations & GROUP BY | ▶️ [Watch](https://www.youtube.com/@BItoAI-1808) | [`day-02-aggregations/`](./day-02-aggregations) |
| **Day 3** | Joins, Subqueries & Combining Data | ▶️ [Watch](https://www.youtube.com/@BItoAI-1808) | [`day-03-joins/`](./day-03-joins) |
| **Day 4** | Functions, CASE & Real-World Data | ▶️ [Watch](https://www.youtube.com/@BItoAI-1808) | [`day-04-functions/`](./day-04-functions) |
| **Day 5** | Window Functions & CTEs | ▶️ [Watch](https://www.youtube.com/@BItoAI-1808) | [`day-05-window-functions/`](./day-05-window-functions) |
| **Day 6** | Database Design & Performance | ▶️ [Watch](https://www.youtube.com/@BItoAI-1808) | [`day-06-design-performance/`](./day-06-design-performance) |
| **Day 7** | SQL for AI & Machine Learning | ▶️ [Watch](https://www.youtube.com/@BItoAI-1808) | [`day-07-sql-for-ai-ml/`](./day-07-sql-for-ai-ml) |

---

## 🛠️ Before You Begin — Setup

### What You Need
- **PostgreSQL 16** — free, open source, industry standard → [Download](https://www.postgresql.org/download/)
- **pgAdmin 4** — free GUI for PostgreSQL → [Download](https://www.pgadmin.org/download/)
- **The BI to AI course database** — see setup instructions below

### Install in 3 Steps

**Step 1 — Download PostgreSQL + pgAdmin**
```
https://www.postgresql.org/download/
```
> pgAdmin is bundled in the PostgreSQL installer. Install both.

**Step 2 — Download the course database**
```bash
# Clone this repository
git clone https://github.com/bitoai-Abhi/bi-to-ai.git

# Navigate to the SQL course folder
cd bi-to-ai/01-sql-course/database
```

**Step 3 — Load the database into PostgreSQL**
```sql
-- Open pgAdmin → right-click Databases → Create → Database
-- Name it: bittoai_course

-- Then open the Query Tool and run:
\i setup/load_database.sql
```

> 📺 Full walkthrough in **Day 1 video** — every click shown on screen.
> Having trouble? Drop a comment on the video or open a GitHub issue.

---

## 📂 Repository Structure

```
01-sql-course/
│
├── 📁 database/
│   ├── schema.sql              # Database schema — all tables and relationships
│   ├── seed_data.sql           # Sample data — realistic retail + sales dataset
│   └── README.md               # How to load the database
│
├── 📁 setup/
│   ├── install_windows.md      # Step-by-step PostgreSQL setup for Windows
│   ├── install_mac.md          # Step-by-step PostgreSQL setup for Mac
│   └── load_database.sql       # One-click database loader
│
├── 📁 day-01-foundations/
│   ├── queries.sql             # All queries written in the Day 1 video
│   ├── exercises.sql           # Practice problems — try before looking at solutions
│   ├── solutions.sql           # Solutions with explanations
│   └── README.md               # Day 1 notes and video link
│
├── 📁 day-02-aggregations/
│   ├── queries.sql
│   ├── exercises.sql
│   ├── solutions.sql
│   └── README.md
│
├── 📁 day-03-joins/
│   ├── queries.sql
│   ├── exercises.sql
│   ├── solutions.sql
│   └── README.md
│
├── 📁 day-04-functions/
│   ├── queries.sql
│   ├── exercises.sql
│   ├── solutions.sql
│   └── README.md
│
├── 📁 day-05-window-functions/
│   ├── queries.sql
│   ├── exercises.sql
│   ├── solutions.sql
│   └── README.md
│
├── 📁 day-06-design-performance/
│   ├── queries.sql
│   ├── schema_design.sql       # DDL examples from the video
│   ├── exercises.sql
│   ├── solutions.sql
│   └── README.md
│
├── 📁 day-07-sql-for-ai-ml/
│   ├── queries.sql
│   ├── feature_engineering.sql # Complete ML feature set built in SQL
│   ├── churn_dataset.sql       # Customer churn training dataset
│   ├── exercises.sql
│   ├── solutions.sql
│   └── README.md
│
└── README.md                   # You are here
```

---

## 🗃️ The Course Database

We use a realistic **retail and sales dataset** throughout the entire course.

The database includes **8 tables**:

| Table | Description | Rows |
|-------|-------------|------|
| `customers` | Customer profiles with demographics | 1,000 |
| `products` | Product catalog with categories and pricing | 500 |
| `categories` | Product category hierarchy | 25 |
| `orders` | Order header — date, customer, status | 10,000 |
| `order_items` | Order line items — product, quantity, price | 35,000 |
| `employees` | Employee hierarchy — managers and reports | 150 |
| `stores` | Store locations and region mapping | 20 |
| `sales_targets` | Monthly targets by store and category | 480 |

> This is not a toy dataset. It has real-world messiness — NULLs, duplicates, inconsistent formatting — because that is what real data looks like.

---

## 📝 How Each Day Is Structured

Every day folder contains the same four files:

### `queries.sql`
Every query written during the video, in order, with comments explaining each one. If you missed something in the video — it is here.

```sql
-- ─────────────────────────────────────
-- DAY 1: Your First SELECT Statement
-- BI to AI YouTube Channel
-- ─────────────────────────────────────

-- Basic SELECT
SELECT *
FROM customers;

-- Select specific columns
SELECT
    customer_id,
    first_name,
    last_name,
    email
FROM customers;
```

### `exercises.sql`
Practice problems at three difficulty levels. Try them before looking at solutions.

```sql
-- ══════════════════════════════════════
-- DAY 1 EXERCISES
-- ══════════════════════════════════════

-- BEGINNER ──────────────────────────
-- Exercise 1: Write a query that returns
-- all columns from the products table.
-- Your answer:


-- INTERMEDIATE ──────────────────────
-- Exercise 2: Return only the product_name
-- and unit_price for products where
-- unit_price is greater than 50.
-- Your answer:


-- ADVANCED ───────────────────────────
-- Exercise 3: Return customer first name,
-- last name, and email for all customers
-- from Texas, ordered by last name A to Z.
-- Your answer:
```

### `solutions.sql`
Complete solutions with explanations and common mistakes called out.

### `README.md`
Day-specific notes, the video link, and the AI/ML bridge connecting that day's SQL skill to machine learning.

---

## 🤖 The AI/ML Bridge — Why SQL Matters for AI

Every day in this course ends with a section connecting SQL to its application in AI and ML. Here is the full picture:

| SQL Skill | AI/ML Application |
|-----------|------------------|
| SELECT + WHERE | Filtering training data before model ingestion |
| Aggregations | Computing statistical features (mean, std dev, counts) |
| Joins | Assembling multi-table training datasets |
| CASE WHEN | Creating categorical label columns for classification |
| NULL handling | Data cleaning before ML preprocessing |
| Window functions | Time-series features (lag, rolling averages, rank) |
| CTEs | Modular, readable ML feature pipelines |
| Performance | Fast feature generation on billion-row datasets |
| Feature engineering | Building complete ML-ready training sets in SQL |

> **The insight:** 80% of machine learning is data preparation. SQL is the fastest, most scalable tool for that preparation — faster than Python Pandas on large data, cleaner than manual Excel work, and readable by the entire data team.

---

## 🏆 Projects You Will Build

### Project 1 — Retail Sales Analysis
A complete end-to-end analytical report built in pure SQL.

- Total revenue by category, store, and month
- Top 10 customers by lifetime value
- Month-over-month growth rates
- Store performance vs target

**Skills used:** Days 1–4

### Project 2 — Customer Churn Feature Dataset
Build a complete ML-ready training dataset using only SQL.

- 30+ engineered features per customer
- Recency, frequency, and monetary (RFM) metrics
- Purchase trend features using window functions
- Binary churn label based on business rules

**Skills used:** Days 1–7 | **Used in:** Phase 4 — 90-Day BI to AI Series

### Project 3 — Database Design Challenge
Design and build a schema from business requirements.

- Requirements document to entity-relationship diagram
- Schema creation with all constraints
- Analytical queries against the new schema

**Skills used:** Day 6

---

## 💡 Tips for Getting the Most Out of This Course

**1. Write every query yourself.**
Do not copy-paste from `queries.sql`. Type it. Your hands need to know this as well as your brain.

**2. Break things on purpose.**
After writing a query, change something and see what breaks. That is how SQL actually sticks.

**3. Do the exercises before looking at solutions.**
Even if you get it wrong — the attempt matters more than the answer.

**4. Use the BI bridge.**
If you come from Power BI or Tableau, compare every SQL concept to its BI equivalent. GROUP BY is a matrix visual. A CTE is a calculated table. These connections accelerate learning.

**5. Ask in the comments.**
Drop your question on the relevant YouTube video. I read and reply to comments, especially in the early days of the channel.

---

## 🔗 Connect & Continue

| Platform | Link |
|----------|------|
| 📺 YouTube | [www.youtube.com/@BItoAI-1808](https://www.youtube.com/@BItoAI-1808) |
| 📸 Instagram | [@bitoai](https://instagram.com/bitoai_abhi) |
| 💼 LinkedIn | [linkedin.com/in/abhilashreddy1808](https://linkedin.com/in/abhilashreddy1808) |
| ⭐ GitHub | [github.com/bitoai-Abhi](https://github.com/bitoai-Abhi) |

---

## 🗺️ What Comes After This Course

This SQL course is **Phase 1** of 5. Here is the full roadmap:

```
Phase 1 ──▶ SQL for Data & AI          (you are here)
Phase 2 ──▶ Microsoft Fabric           (complete data platform)
Phase 3 ──▶ Python for Data Pros       (Python via SQL mental models)
Phase 4 ──▶ 90 Days: BI to AI Engineer (ML → Deep Learning → LLMs → RAG)
Phase 5 ──▶ Standalone Deep-Dives      (ADF · DAX · Power BI · AI tools)
```

Everything is free. Everything is on GitHub. Subscribe to be notified when each phase launches.

---

## 📜 License

This project is licensed under the **MIT License** — see the [LICENSE](../LICENSE) file for details.

You are free to use, copy, modify, and distribute any code in this repository. Attribution appreciated but not required.

---

## ⭐ Support This Channel

If this course helps you — **star this repository**.

It costs nothing. It helps others find this resource. And it tells me the work is worth continuing.

> *The only thing standing between where you are today and where you want to be is a structured path and the decision to walk it.*
>
> **Welcome to BI to AI. Let's build.**

---

<div align="center">

**Made with ❤️ by [Abhi](https://linkedin.com/in/abhilashreddy1808) · BI to AI**

*From Business Intelligence to Artificial Intelligence*

</div>
