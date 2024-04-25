DELIMITER //

CREATE FUNCTION Calculate(order_id INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_amount DECIMAL(10,2);

    -- Получаем общую сумму заказа
    SELECT SUM(amount) INTO total_amount FROM Orders WHERE RepairOrders_id = order_id;

    RETURN total_amount;
END;
//

DELIMITER ;