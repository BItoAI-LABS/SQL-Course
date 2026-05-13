# 🗃️ Course Database

This folder contains everything you need to set up the **BI to AI course database** — a realistic retail and sales dataset used across all 7 days of the SQL course.

---

## 📦 What's in This Folder

| File | Purpose |
|------|---------|
| `schema.sql` | Creates all 8 tables with proper constraints, keys, and indexes |
| `seed_data.sql` | Loads realistic sample data into every table |

---

## 🛠️ How to Load the Database

### Step 1 — Create the database in pgAdmin

1. Open **pgAdmin 4**
2. Right-click **Databases** in the left panel
3. Click **Create → Database**
4. Name it: `bittoai_course`
5. Click **Save**

### Step 2 — Open the Query Tool

1. Click on `bittoai_course` to select it
2. Click **Tools → Query Tool** in the top menu

### Step 3 — Run the schema file

Copy the contents of `schema.sql` and paste into the Query Tool. Click **▶ Run** (F5).

You should see: *"Query returned successfully"*

### Step 4 — Load the sample data

Copy the contents of `seed_data.sql` and paste into the Query Tool. Click **▶ Run** (F5).

### Step 5 — Verify

Run this query to confirm everything loaded:

```sql
SELECT
    'customers'    AS table_name, COUNT(*) AS row_count FROM customers
UNION ALL SELECT 'stores',       COUNT(*) FROM stores
UNION ALL SELECT 'employees',    COUNT(*) FROM employees
UNION ALL SELECT 'categories',   COUNT(*) FROM categories
UNION ALL SELECT 'products',     COUNT(*) FROM products
UNION ALL SELECT 'orders',       COUNT(*) FROM orders
UNION ALL SELECT 'order_items',  COUNT(*) FROM order_items
UNION ALL SELECT 'sales_targets',COUNT(*) FROM sales_targets;
```

---

## 📊 The Database Schema

```
customers ──────────────────────────────────────────┐
    │                                               │
    └──▶ orders ──▶ order_items ──▶ products ──▶ categories
              │
              └──▶ stores ──▶ employees
                                │
                           sales_targets
```

| Table | Rows | Description |
|-------|------|-------------|
| `customers` | 1,000 | Customer profiles with demographics and loyalty tier |
| `stores` | 20 | Store locations across 5 US regions |
| `employees` | 150 | Employee hierarchy with manager relationships |
| `categories` | 25 | Two-level category hierarchy (5 top + 20 sub) |
| `products` | 500 | Product catalog with pricing and stock |
| `orders` | 10,000 | Order headers — date, customer, status, payment |
| `order_items` | 35,000 | Line items — product, quantity, price |
| `sales_targets` | 480 | Monthly targets by store and category |

---

## ❓ Having Trouble?

- Watch the **Day 1 setup video**: [www.youtube.com/@BItoAI-1808](https://www.youtube.com/@BItoAI-1808)
- Open a [GitHub Issue](https://github.com/BitoAi-Abhi/issues)
- Drop a comment on the video — I read every one

---

📺 **[BI to AI YouTube Channel](https://www.youtube.com/@BItoAI-1808)**
🐙 **[GitHub](https://github.com/BitoAi-Abhi)**
