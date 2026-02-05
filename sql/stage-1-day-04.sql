────────────────────────────────────────
Решения заданий
────────────────────────────────────────

1) Задание 1 — отчёт по категориям заказов (completed, > 5 заказов)

SELECT category, COUNT(*)
FROM orders
WHERE order_status = 'completed'
GROUP BY category
HAVING COUNT(*) > 5
ORDER BY COUNT(*) DESC;

────────────────────────────────────────

2) Задача — отчёт по категориям (кроме Books, оборот > 10000)

SELECT category, SUM(total_amount)
FROM orders
WHERE category <> 'Books'
GROUP BY category
HAVING SUM(total_amount) > 10000
ORDER BY SUM(total_amount) DESC;

────────────────────────────────────────

3) Задача — отчёт по странам (за последние 30 дней, не меньше 3 заказов)

SELECT country, COUNT(*)
FROM orders
WHERE order_date >= CURRENT_DATE - 30
GROUP BY country
HAVING COUNT(*) >= 3
ORDER BY COUNT(*) DESC;

────────────────────────────────────────

4) Задача — отчёт по странам (completed, оборот > 5000)

SELECT country, SUM(total_amount)
FROM orders
WHERE order_status = 'completed'
GROUP BY country
HAVING SUM(total_amount) > 5000
ORDER BY SUM(total_amount) DESC;

────────────────────────────────────────

5) Задача — отчёт по категориям (completed, за последние 30 дней, средний чек > 200)

SELECT category, AVG(total_amount)
FROM orders
WHERE order_status = 'completed'
  AND order_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY category
HAVING AVG(total_amount) > 200
ORDER BY AVG(total_amount) DESC;

────────────────────────────────────────

6) Задача — максимальная сумма заказа (completed, за последние 30 дней)

SELECT MAX(total_amount)
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '30 days'
  AND order_status = 'completed';
