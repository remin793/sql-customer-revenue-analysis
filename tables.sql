CREATE TABLE Customers (
customer_id INT,
customer_name VARCHAR(50),
city VARCHAR(50),
signup_date DATE
);

CREATE TABLE Orders (
order_id INT,
customer_id INT,
order_date DATE,
amount INT,
product_category VARCHAR(50)
);

CREATE TABLE Payments (
payment_id INT,
order_id INT,
payment_method VARCHAR(30),
payment_status VARCHAR(20)
);