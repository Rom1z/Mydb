DELIMITER //

CREATE TRIGGER update_repair_order_status_trigger
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    DECLARE repairOrderId INT;

    SELECT RepairOrders_id INTO repairOrderId FROM Orders WHERE id = NEW.id;

    IF NEW.status = 'paid' THEN
        UPDATE repair_orders SET status = 'completed' WHERE id = repairOrderId;
    END IF;
END//

DELIMITER ;
