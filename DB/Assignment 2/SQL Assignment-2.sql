create database SalesDB
USE SalesDB

create table Salesman 
(
	Salesman_id int primary key, 
	[Name] nvarchar(50) NOT NULL, 
	City nvarchar(30),
	Commision float
)

create table Customer 
(
	Customer_id int primary key,
	Cust_name nvarchar(50), 
	City nvarchar(30), 
	Grade int, 
	Salesman_id INT,
	FOREIGN KEY(Salesman_id) references Salesman(Salesman_id)
)

create table Orders
(
	Order_no INT primary key, 
	Purch_amt MONEY NOT NULL, 
	Order_date date NOT NULL, 
	Customer_id INT NOT NULL,
	Salesman_id INT NOT NULL,
	FOREIGN KEY(Customer_id) references Customer(Customer_id), 
	FOREIGN KEY(Salesman_id) references Salesman(Salesman_id)
)

Insert into Salesman values(8001, 'Naman', 'New York', 15)
Insert into Salesman values(8002, 'Neel', 'Paris', 13)
Insert into Salesman values(8003, 'Pratham', 'London', 11)
Insert into Salesman values(8004, 'Juhi', 'Paris', 14)
Insert into Salesman values(8005, 'Sparsh', 'Rome', 13)
Insert into Salesman values(8006, 'Vedant', 'San Jose', 12)

Insert into Customer values(3001, 'Nisarg', 'New York', 100, 8001)
Insert into Customer values(3002, 'Dhairya', 'New York', 200, 8001)
Insert into Customer values(3003, 'Yash', 'California', 200, 8002)
Insert into Customer values(3004, 'Julian', 'London', 300, 8002)
Insert into Customer values(3005, 'Aditya', 'Paris', 300, 8004)
Insert into Customer values(3006, 'Cameron', 'Berlin', 100, 8006)
Insert into Customer values(3007, 'Hetvi', 'Moscow', 200, 8005)
Insert into Customer values(3008, 'Vishwa', 'London', NULL, 8003)

Insert into Orders values(6001, 150.5, '2012-10-05', 3003, 8002)
Insert into Orders values(6002, 270.65, '2012-09-10', 3008, 8003)
Insert into Orders values(6003, 65.26, '2012-10-05', 3001, 8001)
Insert into Orders values(6004, 110.5, '2012-08-17', 3006, 8006)
Insert into Orders values(6005, 948.5, '2012-09-10', 3003, 8002)
Insert into Orders values(6006, 2400.6, '2012-07-27', 3002, 8001)
Insert into Orders values(6007, 5760, '2012-09-10', 3001, 8001)
Insert into Orders values(6008, 1983.43, '2012-10-10', 3005, 8004)
Insert into Orders values(6009, 2480.4, '2012-10-10', 3006, 8006)
Insert into Orders values(6010, 250.45, '2012-06-27', 3004, 8002)
Insert into Orders values(6011, 75.29, '2012-08-17', 3007, 8005)
Insert into Orders values(6012, 3045.6, '2012-04-25', 3001, 8001)

select * from Customer
select * from Orders
select * from Salesman

-- Query 1
SELECT Salesman.[Name] AS Salseman, Customer.Cust_name, Customer.City
FROM Salesman,Customer
where  Customer.City = Salesman.City

-- Query 1
SELECT S.[Name] AS Salseman, C.Cust_name AS Customer_Name, C.City AS City
FROM Customer C
Inner Join Salesman S
ON S.City = C.City

-- Query 2
SELECT O.Order_no, O.Purch_amt, C.Cust_name, C.city
FROM Orders O
Inner Join Customer C
ON C.Customer_id = O.Customer_id
WHERE O.Purch_amt BETWEEN 500 AND 2000

-- Query 3
SELECT C.Cust_name, C.City,S.[name] AS Salseman,S.Commision 
FROM Customer C
Inner Join Salesman S
ON S.Salesman_id = C.Salesman_id

-- Query 4
SELECT C.Cust_name, C.City,S.[name] AS Salseman ,S.Commision 
FROM Customer C
Inner Join Salesman S
ON S.Salesman_id = C.Salesman_id
WHERE Commision > 12

-- Query 5
SELECT  C.Cust_name, C.City As Customer_City ,S.[name] AS Salseman, 
S.City As Salseman_City, S.Commision 
FROM Customer C
Inner Join Salesman S
ON S.Salesman_id = C.Salesman_id
WHERE S.city <> C.city AND Commision > 12

-- Query 6
SELECT O.Order_no, O.Order_date, O.Purch_amt, 
C.Cust_name, C.Grade, S.[name], S.Commision
FROM ((Orders O
Inner Join Customer C ON C.Customer_id = O.Customer_id ) 
Inner Join Salesman S ON S.Salesman_id = O.Salesman_id)

-- Query 7
SELECT S.Salesman_id, S.[Name] AS Salseman, S.City, S.Commision, 
C.Customer_id, C.Cust_name, C.Grade, 
O.Order_no, O.Purch_amt, O.Order_date 
FROM Orders O
Join Customer C ON C.Customer_id = O.Customer_id
Join Salesman S ON S.City = C.city
Order By S.Salesman_id ASC

-- Query 8
SELECT C.Cust_name, C.City, C.Grade, 
S.[Name], S.City
FROM Customer C
Inner Join Salesman S
ON S.Salesman_id = C.Salesman_id
Order By C.Customer_id ASC

-- Query 9
SELECT C.Cust_name, C.City, C.Grade, 
S.[Name], S.City
FROM Customer C
Inner Join Salesman S
ON S.Salesman_id = C.Salesman_id
where C.Grade < 300
Order By C.Customer_id ASC

-- Query 10
SELECT C.Cust_name AS Customer_Name, C.City AS Customer_City, 
O.Order_No, O.Order_Date, O.Purch_amt AS Purchase_Amount
FROM Orders O
Left Outer Join Customer C
ON C.Customer_id = O.Customer_id
Order By O.Order_date

-- Query 11
SELECT C.Cust_name AS Customer_Name, C.City AS Customer_City, 
O.Order_No, O.Order_Date, O.Purch_amt AS Purchase_Amount, 
S.[Name] AS Salseperson_Name,S.Commision
FROM Customer C 
LEFT OUTER JOIN Orders O 
ON O.Customer_id = C.Customer_id 
LEFT OUTER JOIN Salesman S
ON S.Salesman_id=O.Salesman_id

-- Query 12
SELECT C.Cust_name AS Customer_Name,C.City AS Customer_City, C.Grade, 
S.[Name] AS "Salesman", S.City AS Salseman_City
FROM Customer C
RIGHT OUTER JOIN Salesman S 
ON S.Salesman_id = C.Salesman_id 
ORDER BY S.Name;

-- Query 13
SELECT S.[Name] As Salseman_Name, 
C.Cust_name AS Customer_Name, C.City AS Customer_City, 
C.Grade, O.Order_No, O.Order_Date, O.Purch_amt AS Purchase_Amount
FROM ((Salesman S
lEFT OUTER JOIN Customer C ON C.Salesman_id = S.Salesman_id ) 
LEFT OUTER JOIN Orders O ON S.Salesman_id = O.Salesman_id)

-- Query 14
SELECT S.* , 
C.cust_name as "Customer Name", C.city as "Customer City", C.grade, 
O.Order_no, O.Order_date, O.purch_amt
FROM ((salesman S LEFT OUTER JOIN customer C ON S.salesman_id = C.salesman_id )
LEFT OUTER JOIN orders O ON S.salesman_id = O.salesman_id )
WHERE O.purch_amt > 2000 AND C.grade IS NOT NULL


-- Query 15
SELECT S.* ,  
C.cust_name as "Customer Name", C.city as "Customer City", C.grade, 
O.Order_no, O.Order_date, O.purch_amt
FROM ((salesman S LEFT OUTER JOIN customer C ON S.salesman_id = C.salesman_id )
LEFT OUTER JOIN orders O ON S.salesman_id = O.salesman_id )
WHERE O.purch_amt > 2000 AND C.grade IS NOT NULL

-- Query 16
SELECT C.cust_name AS "customer name", C.city, 
O.Order_no, O.Order_date, O.purch_amt
FROM customer C FULL OUTER JOIN orders O ON C.customer_id = O.customer_id 
WHERE C.grade IS NOT NULL 

-- Query 17
SELECT S.Salesman_id, S.[Name] AS Salseman_name, S.City, S.Commision, 
C.Customer_id, C.Cust_name AS Customer_Name,C.City AS Customer_City, C.Grade
FROM Salesman s
CROSS JOIN Customer C

-- Query 18
SELECT S.Salesman_id, S.[Name] AS Salseman_name, S.City, S.Commision, 
C.Customer_id, C.Cust_name AS Customer_Name,C.City AS Customer_City, C.Grade
FROM Salesman s
CROSS JOIN Customer C
WHERE C.City = S.City

-- Query 19
SELECT S.Salesman_id, S.[Name] AS Salseman_name, S.City, S.Commision, 
C.Customer_id, C.Cust_name AS Customer_Name,C.City AS Customer_City, C.Grade
FROM Salesman s
CROSS JOIN Customer C
WHERE C.City IS NOT NULL 
AND C.Grade IS NOT NULL;

-- Query 20
SELECT S.Salesman_id, S.[Name] AS Salseman_name, S.City, S.Commision, 
C.Customer_id, C.Cust_name AS Customer_Name,C.City AS Customer_City, C.Grade
FROM Salesman s
CROSS JOIN Customer C
WHERE C.City <> S.City
AND C.Grade IS NOT NULL;









