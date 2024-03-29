-- 1 Запрос на получение списка всех клиентов и их контактной информации:
SELECT name, contact_info
FROM Clients;

-- 2 Запрос на получение списка всех заказов на ремонт с их статусами и датами:
SELECT id, status, date_time
FROM RepairOrders;

-- 3 Запрос на получение списка всех доступных запчастей для ремонта:
SELECT id, name, quantity
FROM Parts;

-- 4 Запрос на получение списка всех сотрудников и их ролей:
SELECT s.name AS employee_name, r.name AS role_name
FROM Staff s
JOIN Staff_Roles sr ON s.id = sr.Staff_id
JOIN Roles r ON sr.Role_id = r.id;

-- 5 Запрос на получение списка всех марок автомобилей и связанных с ними моделей:
SELECT b.name AS brand, m.name AS model
FROM Brands b
JOIN Models m ON b.id = m.Brands_id;