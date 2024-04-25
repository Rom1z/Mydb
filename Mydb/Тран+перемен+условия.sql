START TRANSACTION;
-- Присваиваем значения переменным
SET @brand_id := 4;
SET @model_id := 4;
SET @vin_code := 'MNO46801357924680';
-- Обновляем бренд
UPDATE Brands SET name = 'Шевроле' WHERE id = @brand_id;
-- Обновляем модель
UPDATE Models SET name = 'Camaro', Brands_id = @brand_id, year = 2016, car_mileage =
18000 WHERE id = @model_id;
-- Вставляем новый автомобиль или обновляем существующий
INSERT INTO Cars (VIN, Models_id) VALUES (@vin_code, @model_id)
ON DUPLICATE KEY UPDATE Models_id = @model_id;
COMMIT;