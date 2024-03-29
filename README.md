# Mydb
# База данных автосервиса

Эта база данных разработана для управления операциями автосервиса. Она хранит информацию о клиентах, автомобилях, заказах на ремонт, инвентаре запчастей, персонале и расписаниях.

## Назначение

Цель этой базы данных - оптимизировать рабочий процесс автосервиса путем организации и управления различными аспектами процесса ремонта, включая информацию о клиентах, деталях автомобилей, заказах на ремонт, инвентаре запчастей, управлении персоналом и планировании.

## Типичные запросы

1. Получить список заказов на ремонт для конкретного клиента.
> SELECT RepairOrders.id, RepairOrders.status, RepairOrders.date_time
> FROM RepairOrders
> INNER JOIN Schedule ON RepairOrders.Schedule_id = Schedule.id
> INNER JOIN Clients ON Schedule.Clients_id = Clients.id
> WHERE Clients.id = <id_клиента>;
2. Получить список доступных сотрудников на определенную дату и время.
> SELECT Staff.id, Staff.name, Staff.position
> FROM Staff
> WHERE Staff.id NOT IN (
   >  SELECT DISTINCT RepairOrders_has_Staff.Staff_id
   >  FROM RepairOrders_has_Staff
   >  INNER JOIN RepairOrders ON RepairOrders_has_Staff.RepairOrders_id = RepairOrders.id
   >  WHERE RepairOrders.date_time = 'YYYY-MM-DD HH:MM:SS'  -- Замените 'YYYY-MM-DD HH:MM:SS' на нужную дату и время
> );
3. Проверить состояние инвентаря определенной детали.
> SELECT name, quantity
> FROM Parts
> WHERE name = 'название_детали';
4. Просмотреть расписание на определенный день.
>  SELECT Schedule.id, Schedule.date_time, Clients.name AS client_name, Clients.contact_info
>  FROM Schedule
>  INNER JOIN Clients ON Schedule.Clients_id = Clients.id
>  WHERE DATE(Schedule.date_time) = 'YYYY-MM-DD'; -- Замените 'YYYY-MM-DD' на нужную дату
5. Рассчитать общую сумму, заработанную с заказов на ремонт за определенный период времени.
> SELECT SUM(amount) AS total_earnings
> FROM Orders
> INNER JOIN RepairOrders ON Orders.RepairOrders_id = RepairOrders.id
> WHERE RepairOrders.date_time >= 'начальная_дата' AND RepairOrders.date_time <= 'конечная_дата';
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
