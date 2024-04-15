1. --Вывести компании-перевозчиков, которые доставили клиентам более 250 заказов (проекция: название_компании, ко-во заказов)

SELECT
 Shippers.ShipperName,
count(*) as total_orders
FROM Orders
join Shippers on Shippers.ShipperID = Orders.ShipperID
group by Shippers.ShipperID
having
total_orders > 250

 2. --  Вывести заказы, где ко-во товаров 3 и более (проекция: номерзаказа, ко-во товаров в заказе)

 SELECT 
Orders.OrderID,
count(*) as total_quantity
FROM OrderDetails
join Orders on Orders.OrderID = OrderDetails.OrderID
group by Orders.OrderID
having
 total_quantity >= 3

3. --Вывести минимальную стоимость товара для каждой категории, кроме категории 2 (проекция: названиекатегории, минстоимость_товара)

min(Products.Price) as min_price
FROM Products
join Categories on Categories.CategoryID = Products.CategoryID
group by Categories.CategoryID 
having 
Categories.CategoryID != 2

4. --Вывести менеджера, который находится на 4 месте по ко-ву созданных заказов (проекция: фамилия менеджера, к-во созданных_заказов)

SELECT 
Employees.LastName,
count(*) as total_orders
FROM Orders
join Employees on Employees.EmployeeID = Orders.EmployeeID
group by Employees.EmployeeID
order by total_orders desc
limit 3, 1

5.--Вывести данные о товарах от поставщиков 4 и 8 (проекция: все имеющиеся поля, цена со скидкой 1.5процента, цена с наценкой 0.5 процента)

SELECT
Products.Price * .985 as price_desc,
Products.Price * .105 as price_asc
FROM Products
where 
SupplierID in (4, 8)






​
