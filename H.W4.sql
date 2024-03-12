--Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)

SELECT ProductName,
Price,
CategoryName,
SupplierName
FROM Products
join Categories on Categories.CategoryID = Products.CategoryID
join Suppliers on Suppliers.SupplierID = Products.SupplierID

--Вывести заказы клиентов не из France  (номерзаказа, имяклиента, страна_клиента)

SELECT 
OrderID,
CustomerName,
Country
FROM Orders
join  Customers on Customers.CustomerID = Orders.CustomerID
where
not Country = 'France'

--Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT 
ProductName,
Price as Price_full,
Price * 1.08 as Price_USD
FROM Products
order by Price desc
limit 1

--Вывести список стран, которые поставляют морепродукты

SELECT 
Suppliers.Country,
Categories.CategoryName
FROM Products
join Suppliers on Suppliers.SupplierID = Products.SupplierID
join Categories on Categories.CategoryID = Products.CategoryID
where
CategoryName = 'Seafood'
 
--Вывести два самых дорогих товара из категории Beverages из USA

SELECT Categories.CategoryName,
Suppliers.Country
FROM Products
join Categories on Categories.CategoryID = Products.CategoryID
join Suppliers on Suppliers.SupplierID = Products.SupplierID
where
Suppliers.Country = 'USA'
and
Categories.CategoryName = 'Beverages'













