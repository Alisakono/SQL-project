--Вывести данные о товарах не из категорий 2 и 4 и не от поставщиков 2 и 3 с ценой от 20 до 90 EUR (проекция: название, ценаснаценкой_6%)

SELECT ProductName,
Price as Price_full,
Price * 1.6 as Price_down
FROM Products
WHERE
NOT CategoryID in (2, 4)
and
NOT SupplierID in (2, 3)

--Вывести клиентов не из Germany, имена которых не заканчиваются на букву t

SELECT *
FROM Customers
WHERE
NOT Country = 'Germany'
AND 
NOT CustomerName  like '%t'

--Вывести два самых дешевых товара с ценой от 10 EUR и более (проекция: название, ценасоскидкой_20%)

SELECT ProductName,
Price as Price_full,
Price * .8 as Price_down
FROM Products
WHERE 
Price >= 10
ORDER BY
Price ASC
LIMIT 2



