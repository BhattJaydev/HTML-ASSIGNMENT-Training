DROP TABLE IF EXISTS products;
 
CREATE TABLE products (
  ProductID int NOT NULL identity(1,1),
  ProductName nvarchar(75) NOT NULL,
  SupplierID int NOT NULL,
  CategoryID int NOT NULL,
  QuantityPerUnit varchar(20) NOT NULL DEFAULT '0',
  UnitPrice int NOT NULL DEFAULT '0',
  UnitsInStock int NOT NULL DEFAULT '0',
  UnitsOnOrder int NOT NULL DEFAULT '0',
  ReorderLevel int NOT NULL DEFAULT '0',
  Discontinued nvarchar(5) NOT NULL DEFAULT 'No',
  PRIMARY KEY (ProductID)
)

SELECT * FROM products

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Chai',1,1,'10 boxes x 20 bags',18,39,0,10,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Chang',1,1,'24 - 12 oz bottles',19,17,40,25,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Aniseed Syrup',1,2,'12 - 550 ml bottles',10,13,70,25,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Chef Anton''s Cajun Seasoning',2,2,'48 - 6 oz jars',22,53,0,0,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Chef Anton''s Gumbo Mix',2,2,'36 boxes',21.35,0,0,0,'Yes')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Grandma''s Boysenberry Spread',3,2,'12 - 8 oz jars',25,120,0,25,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Uncle Bob''s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30,15,0,10,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40,6,0,0,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97,29,0,0,'Yes')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Ikura',4,8,'12 - 200 ml jars',31,31,0,0,'No')

INSERT "products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued")
VALUES('Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53,20,0,10,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Filo Mix',24,5,'16 - 2 kg boxes',7,38,0,25,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Perth Pasties',24,6,'48 pieces',33,0,0,0,'Yes')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Tourtière',25,6,'16 pies',8,21,0,10,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Pâté chinois',25,6,'24 boxes x 2 pies',24,115,0,20,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38,21,10,30,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Ravioli Angelo',26,5,'24 - 250 g pkgs.',20,36,0,20,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Escargots de Bourgogne',27,8,'24 pieces',13,62,0,20,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Raclette Courdavault',28,4,'5 kg pkg.',56,0,0,0,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Camembert Pierrot',28,4,'15 - 300 g rounds',34,19,0,0,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Sir Rodney''s Scones',8,3,'24 pkgs. x 4 pieces',10,3,40,5,'Yes')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Gustaf''s Knäckebröd',9,5,'24 - 500 g pkgs.',21,104,0,25,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Tunnbröd',9,5,'12 - 250 g pkgs.',9,61,0,25,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Guaraná Fantástica',10,1,'12 - 355 ml cans',4.5,20,0,0,'Yes')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14,76,0,30,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.23,15,0,0,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9,49,0,30,'Yes')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Rössle Sauerkraut',12,7,'25 - 825 g cans',45.6,26,0,0,'Yes')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79,0,0,0,'No')

INSERT "Products"("ProductName","SupplierID","CategoryID","QuantityPerUnit","UnitPrice","UnitsInStock","UnitsOnOrder","ReorderLevel","Discontinued") 
VALUES('Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89,10,0,15,'Yes')

SELECT * FROM products


SELECT productId, ProductName, UnitPrice FROM products WHERE Discontinued='No' AND UnitPrice < 20

SELECT productId, ProductName, UnitPrice FROM products WHERE UnitPrice BETWEEN 15 AND 25

SELECT ProductName, UnitPrice FROM products WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM products)

SELECT DISTINCT ProductName as Most_Ten_Expensive_Products, UnitPrice
FROM Products AS a
WHERE 10 >= (SELECT COUNT(DISTINCT UnitPrice)
FROM Products AS b
WHERE b.UnitPrice >= a.UnitPrice)
ORDER BY UnitPrice desc;

SELECT (Count(ProductName)) AS CURRENT_PRODUCTS
FROM Products
GROUP BY Discontinued

SELECT ProductName,  UnitsOnOrder , UnitsInStock
FROM Products
WHERE (UnitsInStock < UnitsOnOrder) AND (Discontinued='No')