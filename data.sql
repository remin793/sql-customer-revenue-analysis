INSERT INTO Customers VALUES
(1,'Alex','New York','2023-01-10'),
(2,'Maria','Chicago','2023-02-15'),
(3,'John','Seattle','2023-03-12'),
(4,'David','Boston','2023-04-20'),
(5,'Emma','Chicago','2023-05-11');

INSERT INTO Orders VALUES
(101,1,'2023-06-01',500,'Electronics'),
(102,1,'2023-06-10',200,'Books'),
(103,2,'2023-06-11',800,'Electronics'),
(104,3,'2023-06-15',150,'Clothing'),
(105,4,'2023-06-18',700,'Electronics'),
(106,5,'2023-06-19',300,'Books');

INSERT INTO Payments VALUES
(201,101,'Credit Card','Completed'),
(202,102,'UPI','Completed'),
(203,103,'Credit Card','Completed'),
(204,104,'Debit Card','Failed'),
(205,105,'UPI','Completed'),
(206,106,'Credit Card','Completed');