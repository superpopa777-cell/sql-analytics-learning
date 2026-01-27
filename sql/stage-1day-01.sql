-- Stage 1 — Day 01
-- Topic: SQL Basics — SELECT
-- Related report: ../reports/stage-1_day-01.md

/*
Task 1
Get all data from users table
*/
SELECT *
FROM users;

/*
Task 2
Select only required columns (analytical approach)
*/
SELECT user_id, name
FROM users;

/*
Task 3
Change column order
*/
SELECT name, signup_date
FROM users;

/*
Task 4
Use aliases for better readability
*/
SELECT
    name AS user_name,
    signup_date AS reg_date
FROM users;
