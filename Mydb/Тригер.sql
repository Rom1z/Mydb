DELIMITER //

CREATE TRIGGER UpdateRepairOrderStatus AFTER INSERT ON Orders FOR EACH ROW
BEGIN
    DECLARE total_amount DECIMAL(10,2);

    -- Получаем общую сумму заказа
    SELECT SUM(amount) INTO total_amount FROM Orders WHERE RepairOrders_id = NEW.RepairOrders_id;

    -- Проверяем, превышает ли общая сумма заказа пороговое значение
    IF total_amount > 50000 THEN
        -- Обновляем статус заказа на "completed"
        UPDATE RepairOrders SET status = 'completed' WHERE id = NEW.RepairOrders_id;
    END IF;
END;
//

DELIMITER ;