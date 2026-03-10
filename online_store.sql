CREATE DATABASE online_store;
USE online_store;
CREATE TABLE customers (
customer_id INT,
name VARCHAR(50),
city VARCHAR(50)
);
CREATE TABLE products (
product_id INT,
product_name VARCHAR(50),
price int);
CREATE TABLE orders (
order_id INT,
customer_id INT,
product_id INT,
quantity INT
);
INSERT INTO customers VALUES
(1,'Disha','Chennai'),
(2,'Roja','Delhi'),
(3,'Manash','Mumbai'),
(4,'Sada','Chennai'),
(5,'Ayush','Hyderabad'),
(6,'Suvendu','Delhi');
INSERT INTO products VALUES
(1,'Laptop',50000),
(2,'Headphone',1200),
(3,'Mobile',15000),
(4,'Mouse',600),
(5,'Keyboard',800),
(6,'Earbuds',900);

INSERT INTO orders VALUES
(1,1,2,1),
(2,2,3,2),
(3,3,5,1),
(4,1,1,1),
(5,4,4,3),
(6,6,6,2);
SELECT orders.order_id, customers.name, orders.product_id, orders.quantity
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id;
SELECT orders.order_id,
products.price * orders.quantity AS total_price
FROM orders
JOIN products
ON orders.product_id = products.product_id;
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 1;
SELECT SUM(quantity) AS total_products_ordered
FROM orders;
SELECT * FROM products
ORDER BY price DESC
LIMIT 1;
SELECT * FROM customers
WHERE city = 'Chennai';