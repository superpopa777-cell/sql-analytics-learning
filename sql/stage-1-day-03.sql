-- Stage 1 — Day 03
-- Тема: ORDER BY и LIMIT


-- Задание 1
-- Выбрать 10 самых дорогих заказов

SELECT *
FROM orders
ORDER BY total_amount DESC
LIMIT 10;


-- Задание 2
-- Выбрать 5 самых дорогих заказов только со статусом completed

SELECT *
FROM orders
WHERE order_status = 'completed'
ORDER BY total_amount DESC
LIMIT 5;


-- Задание 3
-- Выбрать 10 последних заказов
-- Сортировка по дате (от новых к старым),
-- при одинаковых датах — по сумме (от большего к меньшему)

SELECT *
FROM orders
ORDER BY order_date DESC, total_amount DESC
LIMIT 10;


-- Задание 4
-- Выбрать 5 самых дорогих заказов в категории Electronics
-- только за последние 30 дней

SELECT *
FROM orders
WHERE category = 'Electronics'
  AND order_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY total_amount DESC
LIMIT 5;
