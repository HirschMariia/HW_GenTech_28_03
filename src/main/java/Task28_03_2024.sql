-- 1.Вывести стоимость заказа 10258

SELECT
COUNT(*) AS total
FROM OrderDetails
WHERE OrderID = 10258


-- 2.Вывести количество /распределение заказов по клиентам
-- (проекция: имяклиента, ко-возаказов)

SELECT
CustomerName,
Quantity
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID


-- 3.Вывести кол/распределение заказов по менеджерам
-- (проекция: фамилияменеджера, ко-возаказов)

SELECT
Quantity,
Employees.LastName
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID


-- 4.Вывести минимальную стоимость товаров для
-- каждой категории (проекция: названиекатегории, минстоимость_товаров)

SELECT
	MIN(Price) AS min_price,
    CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID


-- 5.Вывести данные о заказах (проекция: номерзаказа, стоимостьзаказа)

SELECT
OrderID,
Price
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID


-- 6.Вывести доход каждого менеджера за весь период, исходя из
-- ставки в 5% от суммы его заказов (проекция: фамилия_менеджера, доход)

-- Не нахожу что с чем связать для получения дохода
-- Выдает на все ошибку,  простите


-- 7.Завершите описание приложенной схемы БД "аудио-хостинг"
 -- функционалом плейлистов и групповых чатов
-- https://dbdiagram.io/d/homework_211123-659c4eeaac844320ae7b9797

 -- https://dbdiagram.io/d/66143f2603593b6b617f61ba
