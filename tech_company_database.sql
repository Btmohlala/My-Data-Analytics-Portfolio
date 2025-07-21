CREATE DATABASE TechCompanyDB
USE TechCompanyDB


CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50),
Surname VARCHAR(50),
Email VARCHAR(100),
PhoneNumber VARCHAR(20),
City VARCHAR(50),
SignupDate DATE,
SubscriptionPlan VARCHAR(50),
LastPurchaseAmount DECIMAL(10,2)
);

SELECT *FROM Customers


  

INSERT INTO Customers (CustomerID, FirstName, Surname, Email, PhoneNumber, City, SignupDate, SubscriptionPlan, LastPurchaseAmount)VALUES
(1, 'Sipho', 'Dlamini', 'sipho.dlamini@techsa.co.za', '+27-82-555-1234', 'Johannesburg', '2021-02-10', 'Premium', 1999.99),
(2, 'Thandi', 'Nkosi', 'thandi.nkosi@techsa.co.za', '+27-72-555-2345', 'Durban', '2020-07-15', 'Basic', 399.99),
(3, 'Kabelo', 'Mokoena', 'kabelo.mokoena@techsa.co.za', '+27-76-555-4567', 'Pretoria', '2022-06-12', 'Standard', 850.00),
(4, 'Nomsa', 'Zulu', 'nomsa.zulu@techsa.co.za', '+27-83-555-6789', 'Cape Town', '2019-11-05', 'Premium', 2500.00),
(5, 'Lebo', 'Mabena', 'lebo.mabena@techsa.co.za', '+27-74-555-1122', 'Polokwane', '2021-09-22', 'Standard', 1200.00),
(6, 'Ayanda', 'Mkhize', 'ayanda.mkhize@techsa.co.za', '+27-60-555-3344', 'Durban', '2020-05-30', 'Basic', 350.00),
(7, 'Sibusiso', 'Ndlovu', 'sibusiso.ndlovu@techsa.co.za', '+27-73-555-4455', 'Johannesburg', '2022-01-19', 'Premium', 3000.00),
(8, 'Zanele', 'Khumalo', 'zanele.khumalo@techsa.co.za', '+27-71-555-5566', 'Port Elizabeth', '2021-04-10', 'Standard', 799.00),
(9, 'Themba', 'Ngubane', 'themba.ngubane@techsa.co.za', '+27-78-555-6677', 'Bloemfontein', '2020-09-08', 'Basic', 450.00),
(10, 'Nokuthula', 'Buthelezi', 'nokuthula.buthelezi@techsa.co.za', '+27-79-555-7788', 'Cape Town', '2019-12-01', 'Premium', 3500.00),
(11, 'Lungile', 'Maseko', 'lungile.maseko@techsa.co.za', '+27-81-555-8899', 'Johannesburg', '2021-10-14', 'Standard', 950.00),
(12, 'Thabo', 'Radebe', 'thabo.radebe@techsa.co.za', '+27-84-555-9900', 'Durban', '2022-07-02', 'Basic', 300.00),
(13, 'Nomvula', 'Cele', 'nomvula.cele@techsa.co.za', '+27-65-555-1010', 'Pretoria', '2020-03-25', 'Premium', 2800.00),
(14, 'Andile', 'Mdletshe', 'andile.mdletshe@techsa.co.za', '+27-82-555-2020', 'East London', '2021-08-08', 'Standard', 1000.00),
(15, 'Khanyi', 'Mahlangu', 'khanyi.mahlangu@techsa.co.za', '+27-73-555-3030', 'Johannesburg', '2022-01-05', 'Premium', 4000.00),
(16, 'Sanele', 'Shabalala', 'sanele.shabalala@techsa.co.za', '+27-62-555-4040', 'Cape Town', '2019-09-10', 'Basic', 200.00),
(17, 'Gugu', 'Mbatha', 'gugu.mbatha@techsa.co.za', '+27-71-555-5050', 'Durban', '2021-06-15', 'Standard', 900.00),
(18, 'Bongani', 'Hlongwane', 'bongani.hlongwane@techsa.co.za', '+27-60-555-6060', 'Pretoria', '2020-11-12', 'Premium', 3100.00),
(19, 'Lerato', 'Motsoaledi', 'lerato.motsoaledi@techsa.co.za', '+27-67-555-7070', 'Johannesburg', '2022-03-29', 'Standard', 1100.00),
(20, 'Tshepo', 'Phiri', 'tshepo.phiri@techsa.co.za', '+27-68-555-8080', 'Cape Town', '2021-09-10', 'Basic', 550.00);



SELECT * FROM Customers;


CREATE TABLE Products(
ProductID INT PRIMARY KEY,
ProductName VARCHAR (50),
Category VARCHAR (50),
Price DECIMAL(10,2),
Stock INT
);
SELECT *FROM Products;


INSERT INTO Products(ProductID,ProductName,Category,Price,Stock)VALUES
(1, 'Cloud Storage Pro', 'Software', 599.99, 150),
(2, 'AI Analytics Suite', 'Software', 2499.99, 80),
(3, 'Cybersecurity Toolkit', 'Software', 1299.99, 100),
(4, 'Laptop X200', 'Hardware', 14999.99, 25),
(5, 'Smartphone Z10', 'Hardware', 10999.99, 40),
(6, 'Wireless Router ', 'Hardware', 1999.99, 75),
(7, 'Business Support Plan', 'Service', 4999.99, 200),
(8, 'Website Builder Pro', 'Software', 899.99, 120),
(9, 'Tech Training Bundle', 'Service', 2999.99, 60),
(10, 'Data Backup Premium', 'Service', 1599.99, 90);

SELECT * FROM Products;


CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
OrderDate DATE,
Quantity INT ,
TotalAmount DECIMAL(10,2)
);

SELECT *FROM Orders

INSERT INTO Orders(OrderID,CustomerID,ProductID,OrderDate,Quantity,TotalAmount)VALUES
(1, 1, 2, '2022-11-01', 1, 2499.99),
(2, 2, 8, '2022-12-12', 1, 899.99),
(3, 3, 6, '2023-01-15', 2, 3999.98),
(4, 4, 5, '2022-07-05', 1, 10999.99),
(5, 5, 3, '2023-03-01', 1, 1299.99),
(6, 7, 4, '2023-05-22', 1, 14999.99),
(7, 8, 10, '2023-06-10', 1, 1599.99),
(8, 9, 1, '2022-09-30', 1, 599.99),
(9, 10, 7, '2023-04-14', 2, 9999.98),
(10, 1, 9, '2023-07-01', 1, 2999.99);

SELECT *FROM Orders;

SELECT C.FirstName ,C.Surname ,P.ProductName,O.Quantity ,O.TotalAmount 
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Products P ON O.ProductID = O.ProductID

--- only return 4 rows
SELECT TOP 4 C.FirstName,C.Surname,SUM(O.TotalAmount) AS TotalSpent
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.Surname
ORDER BY TotalSpent DESC;

---LEFT JOIN,For customers without orders Coalesce
SELECT C.FirstName,C.Surname,COALESCE(SUM(O.TotalAmount), 0) AS TotalSpent
FROM Customers C
LEFT JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.Surname
ORDER BY TotalSpent DESC;


---Filtering based on aggregate values
SELECT C.FirstName,C.Surname,SUM(O.TotalAmount) AS TotalSpent
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
WHERE O.OrderDate >= '2023-01-01'
GROUP BY C.CustomerID, C.FirstName, C.Surname
HAVING SUM(O.TotalAmount) > 5000
ORDER BY TotalSpent DESC;

