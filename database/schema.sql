-- ============================================================
-- BI to AI YouTube Channel
-- SQL for Data & AI — Complete Free Course
-- database/schema.sql
-- All tables and relationships for the BI to AI course database
-- GitHub: https://github.com/BitoAi-Abhi
-- YouTube: https://www.youtube.com/@BItoAI-1808
-- ============================================================

-- Drop existing tables in reverse dependency order
DROP TABLE IF EXISTS sales_targets   CASCADE;
DROP TABLE IF EXISTS order_items     CASCADE;
DROP TABLE IF EXISTS orders          CASCADE;
DROP TABLE IF EXISTS products        CASCADE;
DROP TABLE IF EXISTS categories      CASCADE;
DROP TABLE IF EXISTS employees       CASCADE;
DROP TABLE IF EXISTS stores          CASCADE;
DROP TABLE IF EXISTS customers       CASCADE;

-- ──────────────────────────────────────────
-- TABLE: customers
-- ──────────────────────────────────────────
CREATE TABLE customers (
    customer_id     SERIAL          PRIMARY KEY,
    first_name      VARCHAR(50)     NOT NULL,
    last_name       VARCHAR(50)     NOT NULL,
    email           VARCHAR(100)    UNIQUE,
    phone           VARCHAR(20),
    city            VARCHAR(50),
    state           VARCHAR(2),
    zip_code        VARCHAR(10),
    signup_date     DATE            NOT NULL,
    loyalty_tier    VARCHAR(20)     CHECK (loyalty_tier IN ('Bronze','Silver','Gold','Platinum')),
    is_active       BOOLEAN         DEFAULT TRUE
);

-- ──────────────────────────────────────────
-- TABLE: stores
-- ──────────────────────────────────────────
CREATE TABLE stores (
    store_id        SERIAL          PRIMARY KEY,
    store_name      VARCHAR(100)    NOT NULL,
    city            VARCHAR(50),
    state           VARCHAR(2),
    region          VARCHAR(20)     CHECK (region IN ('North','South','East','West','Central')),
    open_date       DATE,
    store_manager   VARCHAR(100),
    is_active       BOOLEAN         DEFAULT TRUE
);

-- ──────────────────────────────────────────
-- TABLE: employees
-- ──────────────────────────────────────────
CREATE TABLE employees (
    employee_id     SERIAL          PRIMARY KEY,
    first_name      VARCHAR(50)     NOT NULL,
    last_name       VARCHAR(50)     NOT NULL,
    email           VARCHAR(100)    UNIQUE,
    job_title       VARCHAR(100),
    department      VARCHAR(50),
    hire_date       DATE,
    salary          NUMERIC(10,2),
    manager_id      INT             REFERENCES employees(employee_id),
    store_id        INT             REFERENCES stores(store_id),
    is_active       BOOLEAN         DEFAULT TRUE
);

-- ──────────────────────────────────────────
-- TABLE: categories
-- ──────────────────────────────────────────
CREATE TABLE categories (
    category_id     SERIAL          PRIMARY KEY,
    category_name   VARCHAR(100)    NOT NULL,
    parent_id       INT             REFERENCES categories(category_id),
    description     TEXT
);

-- ──────────────────────────────────────────
-- TABLE: products
-- ──────────────────────────────────────────
CREATE TABLE products (
    product_id      SERIAL          PRIMARY KEY,
    product_name    VARCHAR(200)    NOT NULL,
    category_id     INT             REFERENCES categories(category_id),
    unit_price      NUMERIC(10,2)   NOT NULL,
    cost_price      NUMERIC(10,2),
    stock_quantity  INT             DEFAULT 0,
    sku             VARCHAR(50)     UNIQUE,
    supplier        VARCHAR(100),
    is_active       BOOLEAN         DEFAULT TRUE,
    created_at      TIMESTAMP       DEFAULT CURRENT_TIMESTAMP
);

-- ──────────────────────────────────────────
-- TABLE: orders
-- ──────────────────────────────────────────
CREATE TABLE orders (
    order_id        SERIAL          PRIMARY KEY,
    customer_id     INT             NOT NULL REFERENCES customers(customer_id),
    store_id        INT             REFERENCES stores(store_id),
    employee_id     INT             REFERENCES employees(employee_id),
    order_date      DATE            NOT NULL,
    ship_date       DATE,
    status          VARCHAR(20)     CHECK (status IN ('Pending','Processing','Shipped','Delivered','Cancelled','Returned')),
    payment_method  VARCHAR(30)     CHECK (payment_method IN ('Credit Card','Debit Card','Cash','PayPal','Gift Card')),
    discount_pct    NUMERIC(5,2)    DEFAULT 0,
    notes           TEXT
);

-- ──────────────────────────────────────────
-- TABLE: order_items
-- ──────────────────────────────────────────
CREATE TABLE order_items (
    order_item_id   SERIAL          PRIMARY KEY,
    order_id        INT             NOT NULL REFERENCES orders(order_id),
    product_id      INT             NOT NULL REFERENCES products(product_id),
    quantity        INT             NOT NULL CHECK (quantity > 0),
    unit_price      NUMERIC(10,2)   NOT NULL,
    discount_pct    NUMERIC(5,2)    DEFAULT 0,
    line_total      NUMERIC(10,2)   GENERATED ALWAYS AS
                    (quantity * unit_price * (1 - discount_pct / 100)) STORED
);

-- ──────────────────────────────────────────
-- TABLE: sales_targets
-- ──────────────────────────────────────────
CREATE TABLE sales_targets (
    target_id       SERIAL          PRIMARY KEY,
    store_id        INT             NOT NULL REFERENCES stores(store_id),
    category_id     INT             NOT NULL REFERENCES categories(category_id),
    target_month    DATE            NOT NULL,
    target_amount   NUMERIC(12,2)   NOT NULL,
    UNIQUE (store_id, category_id, target_month)
);

-- ──────────────────────────────────────────
-- INDEXES for performance
-- ──────────────────────────────────────────
CREATE INDEX idx_orders_customer      ON orders(customer_id);
CREATE INDEX idx_orders_date          ON orders(order_date);
CREATE INDEX idx_orders_status        ON orders(status);
CREATE INDEX idx_order_items_order    ON order_items(order_id);
CREATE INDEX idx_order_items_product  ON order_items(product_id);
CREATE INDEX idx_products_category    ON products(category_id);
CREATE INDEX idx_employees_manager    ON employees(manager_id);

-- ============================================================
-- Schema complete. Run seed_data.sql next to load sample data.
-- ============================================================
