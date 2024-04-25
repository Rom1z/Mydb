-- Создание ролей

CREATE ROLE IF NOT EXISTS 'master';
CREATE ROLE IF NOT EXISTS 'cashier';

-- Добавление привилегий для мастера, который принимает машины

GRANT SELECT, INSERT, UPDATE, DELETE ON mydb.Cars TO 'master';

-- Добавление привилегий для кассира

GRANT SELECT, INSERT, UPDATE, DELETE ON mydb.Orders TO 'cashier';

-- Создание пользователей и присвоение ролей

CREATE USER 'master_user'@'%' IDENTIFIED BY 'master_password';
CREATE USER 'cashier_user'@'%' IDENTIFIED BY 'cashier_password';

-- Присвоение ролей пользователям

GRANT 'master' TO 'master_user'@'%';
GRANT 'cashier' TO 'cashier_user'@'%';