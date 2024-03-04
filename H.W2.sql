--Вывести данные о товарах (название, цена со скидкой в 0.5%).

SELECT ProductName,
Price as Price_full,
Price * .95 as Price_down
FROM Products

--Вывести самый дорогой товар в диапазоне от 1 до 100 EUR.

SELECT*
FROM Products
WHERE Price between 1 and 100
Order by Price DESC
limit 1

--Вывести два самых дешевых товара из категории 4.

SELECT *
FROM Products
where
CategoryID = 4
order by Price asc
limit 2

--Вывести один товар, который находится на пятом месте среди самых дорогих.

SELECT *
FROM Products
order by Price desc
limit 1 offset 4

--Вывести товары, названия которых заканчиваются на букву a

SELECT *
FROM Products
where
ProductName like '%a'


