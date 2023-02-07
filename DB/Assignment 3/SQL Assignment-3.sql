
CREATE DATABASE WorkDB
USE WorkDB

CREATE TABLE Department
(
	Dept_id INT PRIMARY KEY NOT NULL,
	Dept_name NVARCHAR(50)
)

CREATE TABLE Employee
(	
	Emp_id INT PRIMARY KEY NOT NULL,
	Dept_id INT NOT NULL,
	Mngr_id INT,
	Emp_name NVARCHAR(50) NOT NULL,
	Salary Money,
	FOREIGN KEY(Dept_id) REFERENCES Department(Dept_id)
)

INSERT INTO Department values (1001, 'Finance')
INSERT INTO Department values (2001, 'Audit')
INSERT INTO Department values (3001, 'Marketing')
INSERT INTO Department values (4001, 'Production')

INSERT INTO Employee values (501,1001,NULL,'Kavan',60000)
INSERT INTO Employee values (502,3001,501,'Naman',27500)
INSERT INTO Employee values (503,1001,501,'Sparsh',25500)
INSERT INTO Employee values (504,2001,501,'John',29570)
INSERT INTO Employee values (505,2001,504,'Arsh',31000)
INSERT INTO Employee values (506,2001,504,'Vedant',31000)
INSERT INTO Employee values (507,2001,506,'Hetvi',9000)
INSERT INTO Employee values (508,3001,502,'Aarchi',17000)
INSERT INTO Employee values (509,3001,502,'Williams',13500)
INSERT INTO Employee values (510,3001,502,'Maya',13500)
INSERT INTO Employee values (511,3001,502,'Tirth',16000)
INSERT INTO Employee values (512,2001,505,'Adity',12000)
INSERT INTO Employee values (513,3001,502,'Jay',10500)
INSERT INTO Employee values (514,4001,515,'Mrugesh',14000)
INSERT INTO Employee values (515,4001,NULL,'Steve',25000)


SELECT * FROM Department
SELECT * FROM Employee


-- Query 1

SELECT DISTINCT E.Emp_id, E.Emp_name, D.Dept_id, D.Dept_name, E.Salary
FROM Employee E
Inner Join Department D
ON D.Dept_id = E.Dept_id, 
(SELECT K.Dept_id,MAX(Salary) AS 'MAXSAL' 
FROM Employee K
Group By Dept_id) Y
WHERE E.Dept_id=Y.Dept_id AND E.Salary = Y.MAXSAL

-- Query 2

SELECT D.Dept_id, D.Dept_Name, Y.Total 'Total Employees' FROM
(SELECT E.Dept_id, 
COUNT(E.Emp_id) AS Total
FROM Employee E Group By E.Dept_id Having COUNT(E.Emp_id) < 3) Y
inner Join Department D
ON D.Dept_id = Y.Dept_id


-- Query 3

SELECT D.Dept_id, D.Dept_Name, Y.Total 'Total Employees' FROM
(SELECT E.Dept_id, 
COUNT(E.Emp_id) AS Total
FROM Employee E group by E.Dept_id) Y
inner Join Department D
ON D.Dept_id = Y.Dept_id


-- Query 4

SELECT D.Dept_id, D.Dept_Name, Y.Salary 'Total Salary' FROM
(SELECT E.Dept_id, 
SUM(Salary) AS 'Salary'
FROM Employee E group by E.Dept_id) Y
inner Join Department D
ON D.Dept_id = Y.Dept_id