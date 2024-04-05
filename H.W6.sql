--1 Вывести стоимость заказа 10258

SELECT 
OrderDetails.OrderID,
sum(OrderDetails.Quantity * Products.Price) as TotalOrderCost
FROM OrderDetails
join Products on OrderDetails.ProductID = Products.ProductID
where 
OrderDetails.OrderID = 10258 

--2 Вывести кол/распределение заказов по клиентам (проекция: имя клиента, ко-во заказов)

SELECT
Customers.CustomerName,
count(*) as total_orders
FROM Orders
join Customers on Customers.CustomerID = Orders.CustomerID
group by Customers.CustomerName

--3 Вывести кол/распределение заказов по менеджерам (проекция: фамилия менеджера, ко-возаказов)

SELECT
Employees.LastName,
count(*) as total_orders
FROM Orders
join Employees on Employees.EmployeeID = Orders.EmployeeID
group by Employees.LastName

--4 Вывести минимальную стоимость товаров для каждой категории (проекция: название категории, минстоимость_товаров)

SELECT 
Categories.CategoryName,
min(Products.Price) as min_price
FROM Products
join Categories on Categories.CategoryID = Products.CategoryID
group by Categories.CategoryName

--5 Вывести данные о заказах (проекция: номер заказа, стоимость заказа)

SELECT 
OrderDetails.OrderID,
sum(OrderDetails.Quantity * Products.Price) as TotalOrderCost
FROM OrderDetails
join Products on OrderDetails.ProductID = Products.ProductID
group by 
OrderDetails.OrderID 

--6 Вывести доход каждого менеджера за весь период, исходя из ставки в 5% от суммы его заказов (проекция: фамилия_менеджера, доход)

SELECT 
Employees.LastName,
SUM(OrderDetails.Quantity * Products.Price * .05) AS sum_total
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.LastName













