-- ============================================================
-- BI to AI YouTube Channel
-- SQL for Data & AI — Complete Free Course
-- database/seed_data.sql
-- Sample data — realistic retail + sales dataset
-- GitHub: https://github.com/BitoAi-Abhi
-- YouTube: https://www.youtube.com/@BItoAI-1808
-- ============================================================
-- NOTE: Run schema.sql FIRST before running this file.
-- ============================================================

-- ──────────────────────────────────────────
-- STORES (20 rows)
-- ──────────────────────────────────────────
INSERT INTO stores (store_name, city, state, region, open_date, store_manager) VALUES
('Dallas Downtown',     'Dallas',       'TX', 'South',   '2018-03-15', 'Sarah Mitchell'),
('Austin South',        'Austin',       'TX', 'South',   '2019-06-01', 'James Nguyen'),
('Houston Galleria',    'Houston',      'TX', 'South',   '2017-11-20', 'Linda Patel'),
('Chicago Loop',        'Chicago',      'IL', 'Central', '2016-04-10', 'Robert Chen'),
('Chicago North',       'Chicago',      'IL', 'Central', '2020-01-15', 'Maria Garcia'),
('New York Midtown',    'New York',     'NY', 'East',    '2015-09-01', 'David Kim'),
('New York Brooklyn',   'Brooklyn',     'NY', 'East',    '2018-07-22', 'Angela Thompson'),
('Los Angeles West',    'Los Angeles',  'CA', 'West',    '2017-02-28', 'Kevin Brown'),
('San Francisco',       'San Francisco','CA', 'West',    '2019-03-10', 'Rachel Lee'),
('Seattle Center',      'Seattle',      'WA', 'West',    '2018-08-05', 'Thomas Wilson'),
('Miami Beach',         'Miami',        'FL', 'South',   '2020-05-15', 'Sofia Rodriguez'),
('Atlanta Midtown',     'Atlanta',      'GA', 'South',   '2019-11-01', 'Marcus Johnson'),
('Boston Downtown',     'Boston',       'MA', 'East',    '2017-06-20', 'Emily Davis'),
('Denver Central',      'Denver',       'CO', 'West',    '2020-02-14', 'Nathan Clark'),
('Phoenix East',        'Phoenix',      'AZ', 'West',    '2018-10-30', 'Olivia Martinez'),
('Minneapolis',         'Minneapolis',  'MN', 'Central', '2019-04-18', 'Daniel White'),
('Portland OR',         'Portland',     'OR', 'West',    '2021-01-10', 'Hannah Scott'),
('Nashville',           'Nashville',    'TN', 'South',   '2020-08-22', 'Christopher Hall'),
('Philadelphia',        'Philadelphia', 'PA', 'East',    '2018-05-12', 'Amanda Young'),
('Las Vegas',           'Las Vegas',    'NV', 'West',    '2019-09-28', 'Brandon Turner');

-- ──────────────────────────────────────────
-- CATEGORIES (25 rows — hierarchical)
-- ──────────────────────────────────────────
INSERT INTO categories (category_name, parent_id, description) VALUES
-- Top-level categories (parent_id = NULL)
('Electronics',     NULL, 'Electronic devices and accessories'),
('Clothing',        NULL, 'Apparel for men, women, and children'),
('Home & Kitchen',  NULL, 'Home goods, furniture, and kitchen items'),
('Sports',          NULL, 'Sports equipment and outdoor gear'),
('Books',           NULL, 'Physical and digital books'),
-- Electronics subcategories
('Laptops',         1, 'Portable computers'),
('Smartphones',     1, 'Mobile phones and accessories'),
('Tablets',         1, 'Tablet computers'),
('Audio',           1, 'Headphones, speakers, earbuds'),
('Cameras',         1, 'Digital cameras and accessories'),
-- Clothing subcategories
('Mens Clothing',   2, 'Clothing for men'),
('Womens Clothing', 2, 'Clothing for women'),
('Kids Clothing',   2, 'Clothing for children'),
('Footwear',        2, 'Shoes and boots for all'),
-- Home & Kitchen subcategories
('Furniture',       3, 'Chairs, tables, and storage'),
('Kitchen Tools',   3, 'Cooking tools and appliances'),
('Bedding',         3, 'Sheets, pillows, comforters'),
-- Sports subcategories
('Fitness',         4, 'Gym and home workout equipment'),
('Outdoor',         4, 'Camping, hiking, and outdoor gear'),
('Team Sports',     4, 'Equipment for team sports'),
-- Books subcategories
('Technology',      5, 'Programming, data, AI/ML books'),
('Business',        5, 'Business, leadership, finance books'),
('Self Help',       5, 'Personal development books'),
('Fiction',         5, 'Novels and fiction'),
('Non-Fiction',     5, 'Non-fiction and reference');

-- ──────────────────────────────────────────
-- PLACEHOLDER NOTICE
-- ──────────────────────────────────────────
-- The full seed data (1,000 customers, 500 products,
-- 150 employees, 10,000 orders, 35,000 order_items,
-- 480 sales_targets) is generated in the Day 1 video
-- and available as a downloadable .sql file linked
-- in the video description.
--
-- Placeholder inserts below show the data shape.
-- Replace with the full dataset from the video.
-- ──────────────────────────────────────────

-- SAMPLE customers (10 of 1,000)
INSERT INTO customers (first_name, last_name, email, phone, city, state, zip_code, signup_date, loyalty_tier) VALUES
('James',     'Anderson',  'james.anderson@email.com',   '214-555-0101', 'Dallas',      'TX', '75201', '2020-01-15', 'Gold'),
('Maria',     'Garcia',    'maria.garcia@email.com',     '512-555-0102', 'Austin',      'TX', '78701', '2019-06-20', 'Silver'),
('Robert',    'Johnson',   'robert.j@email.com',         '713-555-0103', 'Houston',     'TX', '77001', '2021-03-10', 'Bronze'),
('Linda',     'Chen',      'linda.chen@email.com',       '312-555-0104', 'Chicago',     'IL', '60601', '2018-11-05', 'Platinum'),
('David',     'Williams',  'david.w@email.com',          '212-555-0105', 'New York',    'NY', '10001', '2020-07-22', 'Gold'),
('Sarah',     'Brown',     'sarah.brown@email.com',      '310-555-0106', 'Los Angeles', 'CA', '90001', '2019-02-14', 'Silver'),
('Michael',   'Davis',     'michael.d@email.com',        '415-555-0107', 'San Francisco','CA','94101', '2021-08-30', 'Bronze'),
('Jennifer',  'Wilson',    'jen.wilson@email.com',       '206-555-0108', 'Seattle',     'WA', '98101', '2020-04-18', 'Gold'),
('Thomas',    'Martinez',  'thomas.m@email.com',         '305-555-0109', 'Miami',       'FL', '33101', '2018-09-25', 'Platinum'),
('Ashley',    'Lee',       'ashley.lee@email.com',       '404-555-0110', 'Atlanta',     'GA', '30301', '2022-01-08', 'Bronze');

-- SAMPLE products (10 of 500)
INSERT INTO products (product_name, category_id, unit_price, cost_price, stock_quantity, sku, supplier) VALUES
('Dell XPS 15 Laptop',          6,  1299.99, 950.00,  45,  'ELEC-LAP-001', 'Dell Inc'),
('iPhone 15 Pro',               7,   999.99, 720.00,  120, 'ELEC-PHN-001', 'Apple Inc'),
('Samsung Galaxy Tab S9',       8,   649.99, 450.00,  80,  'ELEC-TAB-001', 'Samsung'),
('Sony WH-1000XM5 Headphones',  9,   349.99, 220.00,  200, 'ELEC-AUD-001', 'Sony Corp'),
('Canon EOS R6 Camera',         10,  2499.99,1850.00, 25,  'ELEC-CAM-001', 'Canon USA'),
('Mens Classic Oxford Shirt',   11,   59.99,  28.00,  350, 'CLTH-MEN-001', 'Global Apparel'),
('Womens Running Jacket',       12,   89.99,  42.00,  280, 'CLTH-WMN-001', 'Sport Fashion Co'),
('Kids Denim Jeans',            13,   29.99,  14.00,  420, 'CLTH-KID-001', 'Little Styles'),
('Nike Air Max Sneakers',       14,   129.99, 72.00,  390, 'CLTH-FTW-001', 'Nike Inc'),
('Ergonomic Office Chair',      15,   299.99, 175.00, 60,  'HOME-FRN-001', 'ComfortPro');

-- SAMPLE orders (5 of 10,000)
INSERT INTO orders (customer_id, store_id, order_date, ship_date, status, payment_method, discount_pct) VALUES
(1,  1,  '2024-01-15', '2024-01-18', 'Delivered',  'Credit Card', 0),
(2,  2,  '2024-01-16', '2024-01-20', 'Delivered',  'PayPal',      5),
(3,  3,  '2024-01-17', NULL,         'Processing', 'Debit Card',  0),
(4,  4,  '2024-01-18', '2024-01-22', 'Shipped',    'Credit Card', 10),
(5,  5,  '2024-01-19', NULL,         'Pending',    'Cash',        0);

-- SAMPLE order_items (10 of 35,000)
INSERT INTO order_items (order_id, product_id, quantity, unit_price, discount_pct) VALUES
(1, 1,  1, 1299.99, 0),
(1, 4,  1,  349.99, 0),
(2, 2,  1,  999.99, 5),
(3, 9,  2,  129.99, 0),
(3, 7,  1,   89.99, 0),
(4, 5,  1, 2499.99, 10),
(4, 3,  1,  649.99, 10),
(5, 6,  3,   59.99, 0),
(5, 8,  2,   29.99, 0),
(5, 10, 1,  299.99, 0);

-- ============================================================
-- Full dataset available in the Day 1 video description.
-- Subscribe: https://www.youtube.com/@BItoAI-1808
-- ============================================================
