DELIMITER //

CREATE PROCEDURE InsertClient(
    IN client_name VARCHAR(255),
    IN contact_info TEXT,
    IN cars_id INT,
    IN driver_license VARCHAR(50),
    IN phone_number CHAR(20),
    IN comments TEXT
)
BEGIN
    DECLARE existing_count INT;

    -- Проверяем, существует ли запись с таким идентификатором в таблице Cars
    SELECT COUNT(*) INTO existing_count FROM Cars WHERE id = cars_id;

    -- Если запись не существует, вызываем исключение
    IF existing_count = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ошибка: Автомобиль с указанным ID не найден.';
    ELSE
        -- Если запись существует, вставляем нового клиента
        INSERT INTO Clients (name, contact_info, Cars_id, driver_license, phone_number, `comments`) 
        VALUES (client_name, contact_info, cars_id, driver_license, phone_number, comments);
    END IF;
END;
//

DELIMITER ;