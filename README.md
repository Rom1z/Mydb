# Mydb
# База данных автосервиса

Эта база данных разработана для управления операциями автосервиса. Она хранит информацию о клиентах, автомобилях, заказах на ремонт, инвентаре запчастей, персонале и расписаниях.

## Назначение

Цель этой базы данных - оптимизировать рабочий процесс автосервиса путем организации и управления различными аспектами процесса ремонта, включая информацию о клиентах, деталях автомобилей, заказах на ремонт, инвентаре запчастей, управлении персоналом и планировании.

## типовые запросы
**1. Добавление нового заказа на ремонт:**
```sql
INSERT INTO RepairOrders (status, Cars_id, date_time, Schedule_id)
SELECT 'new', Cars_id, NOW(), Schedule.id
FROM Clients
JOIN Cars ON Clients.Cars_id = Cars.id
JOIN Schedule ON Clients.id = Schedule.Clients_id
WHERE Cars.id = 12;
```
**2.Обновление статуса заказа на ремонт:**
```sql
UPDATE RepairOrders
SET status = 'process'
WHERE id = 6;
```
**3. Получение списка активных заказов на ремонт для конкретного клиента:**
```sql
SELECT ro.id, ro.date_time, ro.status
FROM RepairOrders ro
JOIN Cars c ON ro.Cars_id = c.id
JOIN Clients cl ON c.id = cl.Cars_id
WHERE cl.id = 1 AND ro.status IN ('new', 'process');
```
**4. Получение информации о заказе на ремонт и его деталях:**
```sql
SELECT ro.id, ro.date_time, ro.status, c.VIN, m.name AS model_name, b.name AS brand_name
FROM RepairOrders ro
JOIN Cars c ON ro.Cars_id = c.id
JOIN Models m ON c.Models_id = m.id
JOIN Brands b ON m.Brands_id = b.id
WHERE ro.id = 1;
```
**5. Получение списка всех заказов на ремонт с количеством заказов для каждого клиента:**
```sql
SELECT cl.name AS client_name, COUNT(ro.id) AS order_count
FROM Clients cl
LEFT JOIN Cars c ON cl.Cars_id = c.id
LEFT JOIN RepairOrders ro ON c.id = ro.Cars_id
GROUP BY cl.id;
```

## Технические требования

Для запуска этой базы данных вам понадобится следующее:

- Установленный и запущенный сервер MySQL.
- MySQL Workbench или любой другой клиент MySQL для выполнения SQL-скриптов.
- Импортировать предоставленный SQL-скрипт для создания схемы базы данных и заполнения ее тестовыми данными.

## Установка и настройка

**1. Клонируйте этот репозиторий на ваш компьютер.**

**2. Установите сервер MySQL, если еще не установлен.**

**3. Откройте MySQL Workbench и подключитесь к вашему серверу MySQL.**

**4. Откройте предоставленный SQL-скрипт в MySQL Workbench.**

**5. Выполните скрипт для создания схемы базы данных и заполнения ее тестовыми данными.**

**6. Теперь вы можете выполнять запросы к базе данных для работы с ней.**
