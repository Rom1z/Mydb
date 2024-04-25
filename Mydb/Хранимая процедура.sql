DELIMITER //
CREATE PROCEDURE UpdateCarInfo(
IN brandName VARCHAR(45),
IN modelName VARCHAR(45),
IN vinCode CHAR(17)
)
BEGIN
-- Проверяем, существует ли бренд в базе данных
DECLARE brand_id INT;
DECLARE model_id INT;
SELECT id INTO brand_id FROM Brands WHERE name = brandName;
IF brand_id IS NULL THEN
-- Если бренда нет, вставляем новый
INSERT INTO Brands (name) VALUES (brandName);
SET brand_id := LAST_INSERT_ID();
END IF;

-- Проверяем, существует ли модель в базе данных
SELECT id INTO model_id FROM Models WHERE name = modelName AND Brands_id =
brand_id;
IF model_id IS NULL THEN
-- Если модели нет, вставляем новую
INSERT INTO Models (name, Brands_id, year, car_mileage) VALUES (modelName,
brand_id, 0, 0);
SET model_id := LAST_INSERT_ID();
END IF;
-- Вставляем новый автомобиль или обновляем существующий
INSERT INTO Cars (VIN, Models_id) VALUES (vinCode, model_id)
ON DUPLICATE KEY UPDATE Models_id = model_id;
END //
DELIMITER ;