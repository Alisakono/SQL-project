--1.Вывести ко-во поставщиков не из UK и не из China

SELECT 
count(*) as total
FROM Suppliers
where
not Country in ('UK','China')

--2.Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

SELECT 
count(*) as total,
avg(Price) as avg_price,
max(Price) as max_price,
min(Price) as min_price
FROM Products
where CategoryID in (3, 5)

--3.Вывести общую сумму проданных товаров

SELECT 
sum(Price) as total_cost
FROM OrderDetails
join Products on Products.ProductID = OrderDetails.ProductID

--4.Вывести данные о заказах (номер заказа, имя клиента, страна клиента, фамилия менеджера, название компании перевозчика)

SELECT 
Orders.OrderID,
CustomerName,
Customers.Country,
Employees.LastName,
Shippers.ShipperName
FROM Orders
join Customers on Orders.CustomerID = Customers.CustomerID
join Employees on Orders.EmployeeID = Employees.EmployeeID
join Shippers on Orders.ShipperID = Shippers.ShipperID

--5.Вывести сумму, на которую было отправлено товаров клиентам в Germany






