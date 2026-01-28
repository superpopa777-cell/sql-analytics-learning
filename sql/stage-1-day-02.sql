
---

# 📄 `sql/stage-1_day-02.sql`

```sql
-- Stage 1 — Day 02
-- Topic: WHERE — filtering data
-- Related report: ../reports/stage-1_day-02.md

-- Task 1: Filter by name
SELECT name, signup_date
FROM users
WHERE name = 'Alice';

-- Task 2: Filter by date
SELECT *
FROM users
WHERE signup_date > '2024-01-05';

-- Task 3: Filter by date range (AND)
SELECT *
FROM users
WHERE signup_date >= '2024-01-01'
  AND signup_date <= '2024-01-07';

-- Task 4: OR condition
SELECT *
FROM users
WHERE name = 'Alice'
   OR name = 'Bob';

-- Task 5: Same logic using IN
SELECT *
FROM users
WHERE name IN ('Alice', 'Bob');

-- Task 6: OR with different columns
SELECT *
FROM users
WHERE name = 'Alice'
   OR signup_date > '2024-01-05';

-- Task 7: AND + IN
SELECT *
FROM users
WHERE name IN ('Alice', 'Bob')
  AND signup_date > '2024-01-01';

-- Task 8: Priority with parentheses
SELECT *
FROM users
WHERE name = 'Alice'
   OR (name = 'Bob' AND signup_date > '2024-01-05');

-- Task 9: Simple equality filter
SELECT *
FROM users
WHERE name = 'Bob';

-- Task 10: Date filter
SELECT *
FROM users
WHERE signup_date > '2024-01-01';
