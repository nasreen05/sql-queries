create database Dmart;


use Dmart;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY ,          
    customer_name VARCHAR(50) NOT NULL,                  
    mobile_number VARCHAR(15) UNIQUE NOT NULL,           
    email VARCHAR(50) DEFAULT 'not_provided@gmail.com',  
    age INT CHECK (age >= 18),                           
    address VARCHAR(100) NOT NULL,                       
    city_id INT
);

INSERT INTO customer VALUES (101, 'Ravi Kumar', '9876543210', 'ravi@gmail.com', 25, 'BTM Layout', 1);
INSERT INTO customer VALUES (102, 'Priya Sharma', '9123456789', 'priya@gmail.com', 30, 'Jayanagar', 1);
INSERT INTO customer VALUES (103, 'Manjunath', '9988776655', 'manju@gmail.com', 28, 'VV Mohalla', 2);
INSERT INTO customer VALUES (104, 'Anjali Rao', '9011223344', 'anjali@gmail.com', 22, 'Rajajinagar', 1);
INSERT INTO customer VALUES (105, 'Suresh Gowda', '9345678901', 'suresh@gmail.com', 35, 'Hebbal', 3);
INSERT INTO customer VALUES (106, 'Divya Shetty', '9786543210', 'divya@gmail.com', 27, 'Indiranagar', 1);

select * from customer;


SELECT * FROM customer WHERE customer_id = 101;


SELECT * FROM customer WHERE customer_id IN (101, 103);


SELECT * FROM customer WHERE customer_id NOT IN (101, 103);


SELECT * FROM customer WHERE email IS NULL;


SELECT * FROM customer WHERE email IS NOT NULL;


SELECT * FROM customer WHERE customer_name LIKE 'R%';


SELECT * FROM customer WHERE customer_name LIKE '%a';


SELECT * FROM customer WHERE customer_name LIKE '_a%';

SELECT customer_name, mobile_number FROM customer;


SELECT * FROM customer WHERE age BETWEEN 20 AND 30;


SELECT customer_name AS full_name, age AS customer_age FROM customer;


SELECT * FROM customer ORDER BY customer_id DESC;


SELECT * FROM customer ORDER BY customer_name;

CREATE TABLE product (
    product_id INT PRIMARY KEY ,         
    product_name VARCHAR(50) NOT NULL,                 
    category VARCHAR(30) DEFAULT 'General',            
    price DECIMAL(10,2) CHECK (price > 0),             
    stock_quantity INT NOT NULL,                       
    brand VARCHAR(30) UNIQUE,                          
    customer_id INT,                                   
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) 
);

INSERT INTO product VALUES (201, 'Rice 10kg', 'Grocery', 650.00, 100, 'IndiaGate', 101);
INSERT INTO product VALUES (202, 'Surf Excel', 'Detergent', 120.00, 200, 'HUL', 102);
INSERT INTO product VALUES (203, 'Samsung Mobile', 'Electronics', 12000.00, 50, 'Samsung', 103);
INSERT INTO product VALUES (204, 'Colgate Toothpaste', 'Personal Care', 60.00, 300, 'Colgate', 104);
INSERT INTO product VALUES (205, 'Parle-G Biscuits', 'Snacks', 10.00, 500, 'Parle', 105);
INSERT INTO product VALUES (206, 'Amul Milk 1L', 'Dairy', 50.00, 400, 'Amul', 106);

select * from product;




SELECT * FROM product WHERE product_id = 201;


SELECT * FROM product WHERE product_id IN (201, 203);


SELECT * FROM product WHERE product_id NOT IN (201, 203);


SELECT * FROM product WHERE brand IS NULL;


SELECT * FROM product WHERE brand IS NOT NULL;


SELECT * FROM product WHERE product_name LIKE 'S%';


SELECT * FROM product WHERE product_name LIKE '%e';


SELECT * FROM product WHERE product_name LIKE '_a%';


SELECT product_name, price FROM product;


SELECT * FROM product WHERE price BETWEEN 100 AND 1000;


SELECT product_name AS item_name, price AS item_price FROM product;


SELECT * FROM product ORDER BY product_id DESC;


SELECT * FROM product ORDER BY product_name;