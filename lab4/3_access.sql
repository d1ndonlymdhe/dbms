SELECT * FROM customer_views;
SELECT name FROM customer_views WHERE age > 25;
DROP VIEW customer_views;

SELECT COUNT(*) FROM customers WHERE age = 25;
SELECT COUNT(*) FROM customers;
SELECT MIN(age) FROM customers;
SELECT MAX(age) FROM customers;
SELECT AVG(salary) FROM customers;
SELECT SUM(salary) FROM customers;
