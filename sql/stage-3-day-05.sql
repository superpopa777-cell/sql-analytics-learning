────────────────────────────────────────
Решения заданий (JOIN)
────────────────────────────────────────

────────────────────────────────────────
1) Задача
────────────────────────────────────────

SELECT o.order_id,
       u.name,
       u.country,
       o.total_amount
FROM orders o
JOIN public.users u
  ON o.user_id = u.id;

────────────────────────────────────────
2) Задача
────────────────────────────────────────

SELECT o.order_id,
       u.name,
       u.country,
       o.total_amount,
       o.order_date
FROM orders o
JOIN public.users u
  ON o.user_id = u.id
WHERE o.order_status = 'completed';

────────────────────────────────────────
3) Задача
────────────────────────────────────────

SELECT u.country,
       COUNT(*)
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id
WHERE o.order_status = 'completed'
GROUP BY u.country
ORDER BY COUNT(*) DESC;

────────────────────────────────────────
4) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       COUNT(*)
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id
WHERE o.order_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY u.id, u.name
HAVING COUNT(*) >= 2
ORDER BY COUNT(*) DESC;

────────────────────────────────────────
5) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       SUM(o.total_amount)
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id
WHERE o.order_status = 'completed'
GROUP BY u.id, u.name
HAVING SUM(o.total_amount) >= 1000
ORDER BY SUM(o.total_amount) DESC;

────────────────────────────────────────
6) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       o.order_id,
       o.total_amount
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id;

────────────────────────────────────────
7) Задача
────────────────────────────────────────

SELECT u.id,
       u.name
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
WHERE o.order_id IS NULL;

────────────────────────────────────────
8) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       COUNT(o.order_id)
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
GROUP BY u.id, u.name;

────────────────────────────────────────
9) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       COUNT(o.order_id)
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
 AND o.order_status = 'completed'
GROUP BY u.id, u.name;

────────────────────────────────────────
10) Задача
────────────────────────────────────────

SELECT u.country,
       SUM(o.total_amount)
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id
WHERE o.order_status = 'completed'
GROUP BY u.country
ORDER BY SUM(o.total_amount) DESC;

────────────────────────────────────────
11) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       COALESCE(SUM(o.total_amount), 0)
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
 AND o.order_status = 'completed'
GROUP BY u.id, u.name;

────────────────────────────────────────
12) Задача
────────────────────────────────────────

SELECT DISTINCT u.id,
                u.name
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id;

────────────────────────────────────────
13) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       COUNT(o.order_id)
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id
WHERE o.order_status = 'completed'
GROUP BY u.id, u.name
HAVING COUNT(o.order_id) > 3
ORDER BY COUNT(o.order_id) DESC;

────────────────────────────────────────
14) Задача
────────────────────────────────────────

SELECT u.country,
       COUNT(o.order_id)
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
GROUP BY u.country;

────────────────────────────────────────
15) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       COUNT(o.order_status)
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
 AND o.order_status = 'completed'
GROUP BY u.id, u.name;

────────────────────────────────────────
16) Задача
────────────────────────────────────────

SELECT DISTINCT u.country
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id;

────────────────────────────────────────
17) Задача
────────────────────────────────────────

SELECT u.id,
       u.name,
       COUNT(o.order_id)
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
 AND o.order_date >= CURRENT_DATE - INTERVAL '30 days'
 AND o.order_status = 'completed'
GROUP BY u.id, u.name
HAVING COUNT(o.order_id) >= 2
ORDER BY COUNT(o.order_id) DESC;

────────────────────────────────────────
18) Задача
────────────────────────────────────────

SELECT u.country,
       COUNT(o.order_id),
       SUM(o.total_amount)
FROM users u
INNER JOIN orders o
  ON u.id = o.user_id
WHERE o.order_status = 'completed'
GROUP BY u.country
HAVING COUNT(o.order_id) > 5
   AND SUM(o.total_amount) > 10000
ORDER BY SUM(o.total_amount) DESC;

────────────────────────────────────────
19) Задача
────────────────────────────────────────

SELECT
       u.country,
       COUNT(DISTINCT u.id)      AS users_cnt,
       COUNT(DISTINCT o.user_id) AS users_with_orders_cnt
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
GROUP BY u.country
ORDER BY users_cnt DESC;

────────────────────────────────────────
20) Задача
────────────────────────────────────────

SELECT u.country,
       COUNT(DISTINCT u.id),
       COUNT(DISTINCT o.user_id)
FROM users u
LEFT JOIN orders o
  ON u.id = o.user_id
 AND o.order_status = 'completed'
GROUP BY u.country
ORDER BY COUNT(DISTINCT u.id) DESC;
