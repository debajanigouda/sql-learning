CREATE DATABASE grocery_db;
USE grocery_db;
CREATE TABLE grocery_store (
sl_no INT,
item_name VARCHAR(50),
quantity INT,
price DECIMAL(6,2)
);
INSERT INTO grocery_store VALUES
(1,'Rice',50,60),
(2,'Wheat Flour',40,45),
(3,'Sugar',30,42),
(4,'Salt',25,20),
(5,'Oil',20,150),
(6,'Milk',35,28),
(7,'Eggs',60,6),
(8,'Tea Powder',15,120),
(9,'Biscuits',50,10),
(10,'Soap',40,35);
SELECT * FROM grocery_store;