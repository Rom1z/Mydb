INSERT INTO Brands (name) VALUES
('Toyota'),
('Honda'),
('Ford'),
('Chevrolet'),
('BMW'),
('Mercedes-Benz'),
('Audi'),
('Volkswagen'),
('Nissan'),
('Hyundai'),
('Kia'),
('Mazda'),
('Subaru'),
('Jeep'),
('Tesla');
INSERT INTO Models (id, name, Brands_id, year, car_mileage) VALUES
(1, 'Camry', 1, 2020, 15000),
(2, 'Accord', 2, 2019, 18000),
(3, 'Fusion', 3, 2018, 20000),
(4, 'Cruze', 4, 2017, 22000),
(5, '3 Series', 5, 2021, 12000),
(6, 'C-Class', 6, 2019, 16000),
(7, 'A4', 7, 2020, 14000),
(8, 'Jetta', 8, 2018, 19000),
(9, 'Altima', 9, 2019, 17000),
(10, 'Sonata', 10, 2017, 21000),
(11, 'Optima', 11, 2018, 20000),
(12, 'Mazda3', 12, 2020, 13000),
(13, 'Impreza', 13, 2019, 17000),
(14, 'Wrangler', 14, 2018, 18000),
(15, 'Model 3', 15, 2021, 10000);
-- Исправит ошибку 
INSERT INTO Cars (VIN, Models_id) VALUES
('ABC12345678901234', 1),
('DEF98765432109876', 2),
('GHI24680135792468', 3),
('JKL13579246801357', 4),
('MNO46801357924680', 5),
('PQR92468013579246', 6),
('STU35792468013579', 7),
('VWX68013579246801', 8),
('YZA79246801357924', 9),
('BCD01357924680135', 10),
('EFG24680135792468', 11),
('HIJ57924680135792', 12),
('KLM80135792468013', 13),
('NOP13579246801357', 14),
('QRS46801357924680', 15);
INSERT INTO Clients (name, contact_info, Cars_id, driver_license, phone_number, ` comments`) VALUES
('John Doe', '123 Main St, Anytown, USA', 1, 'DL123456', '123-456-7890', 'Regular client'),
('Jane Smith', '456 Elm St, Anytown, USA', 2, 'DL654321', '987-654-3210', 'New client'),
('David Brown', '789 Oak St, Anytown, USA', 3, 'DL789012', '456-789-0123', 'VIP client'),
('Emily Johnson', '101 Pine St, Anytown, USA', 4, 'DL345678', '789-012-3456', 'Frequent client'),
('Michael Wilson', '246 Cedar St, Anytown, USA', 5, 'DL901234', '012-345-6789', 'Regular client'),
('Jessica Lee', '369 Maple St, Anytown, USA', 6, 'DL567890', '234-567-8901', 'New client'),
('Christopher Martin', '481 Elm St, Anytown, USA', 7, 'DL012345', '345-678-9012', 'Regular client'),
('Sarah Thompson', '602 Oak St, Anytown, USA', 8, 'DL678901', '456-789-0123', 'Regular client'),
('Andrew Garcia', '703 Pine St, Anytown, USA', 9, 'DL234567', '567-890-1234', 'New client'),
('Michelle Rodriguez', '854 Cedar St, Anytown, USA', 10, 'DL890123', '678-901-2345', 'VIP client'),
('James Martinez', '961 Maple St, Anytown, USA', 11, 'DL456789', '789-012-3456', 'Regular client'),
('Amanda Hernandez', '123 Oak St, Anytown, USA', 12, 'DL901234', '890-123-4567', 'Frequent client'),
('Ryan Young', '258 Pine St, Anytown, USA', 13, 'DL567890', '901-234-5678', 'Regular client'),
('Nicole King', '369 Cedar St, Anytown, USA', 14, 'DL234567', '012-345-6789', 'Regular client'),
('Daniel White', '478 Elm St, Anytown, USA', 15, 'DL890123', '123-456-7890', 'New client');
INSERT INTO Schedule (date_time, Clients_id) VALUES
('2024-03-30 09:00:00', 1),
('2024-03-31 10:30:00', 2),
('2024-04-01 11:00:00', 3),
('2024-04-02 13:30:00', 4),
('2024-04-03 15:00:00', 5),
('2024-04-04 09:30:00', 6),
('2024-04-05 10:00:00', 7),
('2024-04-06 12:00:00', 8),
('2024-04-07 14:30:00', 9),
('2024-04-08 16:00:00', 10),
('2024-04-09 09:45:00', 11),
('2024-04-10 11:15:00', 12),
('2024-04-11 13:00:00', 13),
('2024-04-12 15:45:00', 14),
('2024-04-13 09:20:00', 15);
INSERT INTO RepairOrders (status, Cars_id, date_time, Schedule_id) VALUES
('new', 1, '2024-03-30 09:00:00', 1),
('new', 2, '2024-03-31 10:30:00', 2),
('new', 3, '2024-04-01 11:00:00', 3),
('new', 4, '2024-04-02 13:30:00', 4),
('new', 5, '2024-04-03 15:00:00', 5),
('new', 6, '2024-04-04 09:30:00', 6),
('new', 7, '2024-04-05 10:00:00', 7),
('new', 8, '2024-04-06 12:00:00', 8),
('new', 9, '2024-04-07 14:30:00', 9),
('new', 10, '2024-04-08 16:00:00', 10),
('new', 11, '2024-04-09 09:45:00', 11),
('new', 12, '2024-04-10 11:15:00', 12),
('new', 13, '2024-04-11 13:00:00', 13),
('new', 14, '2024-04-12 15:45:00', 14),
('new', 15, '2024-04-13 09:20:00', 15);
INSERT INTO Parts (RepairOrders_id, name, quantity) VALUES
(1, 'Engine Oil', 5),
(2, 'Brake Pads', 4),
(3, 'Air Filter', 2),
(4, 'Spark Plugs', 8),
(5, 'Battery', 1),
(6, 'Tire', 4),
(7, 'Alternator', 1),
(8, 'Radiator', 1),
(9, 'Water Pump', 1),
(10, 'Fuel Pump', 1),
(11, 'Oxygen Sensor', 2),
(12, 'Ignition Coil', 4),
(13, 'Starter Motor', 1),
(14, 'Thermostat', 1),
(15, 'Control Arm', 2);
INSERT INTO Staff (name, position) VALUES
('John Smith', 'Mechanic'),
('Emily Johnson', 'Service Manager'),
('Michael Brown', 'Technician'),
('Sarah Davis', 'Receptionist'),
('Robert Wilson', 'Parts Manager');
INSERT INTO RepairOrders_has_Staff (RepairOrders_id, Staff_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5);
INSERT INTO Orders (amount, status, RepairOrders_id) VALUES
(100.00, 'paid', 1),
(150.00, 'paid', 2),
(200.00, 'unpaid', 3),
(250.00, 'paid', 4),
(300.00, 'unpaid', 5),
(350.00, 'paid', 6),
(400.00, 'unpaid', 7),
(450.00, 'paid', 8),
(500.00, 'unpaid', 9),
(550.00, 'paid', 10),
(600.00, 'unpaid', 11),
(650.00, 'paid', 12),
(700.00, 'unpaid', 13),
(750.00, 'paid', 14),
(800.00, 'unpaid', 15);