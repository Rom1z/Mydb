CREATE VIEW RepairOrdersView AS
SELECT
RO.id AS repair_order_id,
RO.status AS repair_status,
RO.date_time AS repair_date,
C.name AS client_name,
C.contact_info AS client_contact_info,
C.driver_license AS client_driver_license,
C.phone_number AS client_phone_number,
CA.VIN AS car_VIN,
M.name AS car_model,
B.name AS car_brand,
O.amount AS order_amount,
O.status AS order_status,
P.name AS part_name,
P.quantity AS part_quantity
FROM
RepairOrders RO
JOIN Clients C ON RO.Cars_id = C.Cars_id
JOIN Cars CA ON RO.Cars_id = CA.id
JOIN Models M ON CA.Models_id = M.id
JOIN Brands B ON M.Brands_id = B.id
JOIN Orders O ON RO.id = O.RepairOrders_id
JOIN Parts P ON RO.id = P.RepairOrders_id;