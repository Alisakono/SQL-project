Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие по CRUD.
1.Kлик на кнопку 'Alle',                Create  
2.Kлик на кнопку 'Gaming',              Create
3.Kлик на кнопку 'Live',                Create
4.Kлик на кнопку 'Musik',               Create
5.Kлик на кнопку 'Nachrichten',         Create
6.Kлик на кнопку 'Mixe',                Create
7.Kлик на кнопку 'Action-Adventures',   Create
8.Kлик на кнопку 'Kürzlich hochgeladen',Create
9.Kлик на кнопку 'Angesehen',           Create
10.Kлик на кнопку 'Neu für dich'.        Create

Вывести название и стоимость товаров от 20 до 150 EUR.

SELECT ProductName,
Price
FROM Products
WHERE
Price >=20 
AND
Price <= 150

Вывести телефоны поставщиков из Japan и Spain.

SELECT 
Phone
FROM Suppliers
WHERE
Country = 'Japan'
OR 
Country = 'Spain'

Вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.

SELECT ProductName,
Price
FROM Products
WHERE
NOT SupplierID = 1

Вывести контактные имена клиентов, кроме тех, что из Germany и Brazil.

SELECT ContactName,
Country
FROM Customers
WHERE
NOT Country = 'Germany'
AND
NOT Country = 'Brazil'


'







