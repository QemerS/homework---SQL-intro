--Market adli Database yaradin
CREATE DATABASE Market

-- Icinde Products Table-i yaradin.Product table-inda Id,Name,Price columnlari olsun

USE Market
CREATE TABLE Products
(
Id INT PRIMARY KEY,
Name NVARCHAR(10),
Price INT
)

-- Brands table yaradirsiniz (Id,Name)

USE Market
CREATE TABLE Brands
(
Id INT primary key,
Name NVARCHAR(10)
)

--Products table BrandId column elave edirsiz (foreign key)

ALTER TABLE Products
ADD BrandId INT
FOREIGN KEY (BrandId)
REFERENCES Brands(Id)

--Products table-a value-lar insert edin (10-15 dene product datasi kifayetdir)

INSERT INTO Products
VALUES
(1,'Laptop',1000,NULL),
(2,'PC',2000,NULL),
(3,'Headphone',50,NULL),
(4,'Mouse',40,NULL),
(5,'Modem',100,NULL)

SELECT * FROM Products

--Qiymeti 10-dan yuxari olan Product datalarinin siyahisini getiren query yazin

SELECT * FROM Products WHERE Price>10

--Qiymeti Productlarin price-larinin average-den kicik olan Products datalarinin siyahisini getiren query yazin

SELECT * FROM Products WHERE Price< (Select AVG(Price) FROM Products)

--Brand uzunlugu 5-den boyuk olan Brandlerin siyahisini getiren query.

SELECT * FROM Brands WHERE LEN(Name)>5