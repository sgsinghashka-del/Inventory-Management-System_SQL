
INSERT INTO Suppliers VALUES
(1,'Global Electronics Ltd', '08012345678', 'Lagos'),
(2,'Home Appliances Co', '08098765432', 'Ibadan'),
(3,'Tech Distributors', '07011223344', 'Abuja'),
(4,'Bright Supply Ltd', '08033445566','Lagos'),
(5,'Urban Traders', '09011223344','Kano'),
(6,'Mega Wholesale','08099887766','Port Harcourt'),
(7,'Prime Imports', '07055667788','Lagos'),
(8,'Supply Hub', '08122334455', 'Enugu'),
(9,'Elite Distributors', '08066778899', 'Abuja'),
(10,'FastTrack Suppliers', '09077889900', 'Ibadan');

INSERT INTO Products VALUES
(101,'Blender', 'Kitchen', '15000'),
(102,'Air Fryer', 'Kitchen', '45000'),
(103,'Standing Fan', 'Home', '25000'),
(104,'Electric Iron', 'Laundry','12000'),
(105,'Microwave', 'Kitchen','60000'),
(106,'Refrigerator','Home','150000'),
(107,'Rice Cooker', 'Kitchen','30000'),
(108,'Vacuum Cleaner', 'Cleaning', '55000'),
(109,'Water Dispenser', 'Home', '40000'),
(110,'Gas Cooker', 'Kitchen', '80000');

INSERT INTO Warehouses VALUES
(1,'Lagos Central Warehouse', 'Lagos'),
(2,'Abuja Depot', 'Abuja'),
(3,'Ibadan Hub', 'Ibadan'),
(4,'Kano Storage', 'Kano'),
(5,'PH Warehouse', 'Port Harcourt'),
(6,'Enugu Center','Enugu'),
(7,'Lekki Facility', 'Lagos'),
(8,'Surulere Hub', 'Lagos'),
(9,'Garki Depot', 'Abuja'),
(10,'Maitama Store', 'Abuja');

INSERT INTO Inventory VALUES
(1, 101, 1, 50,'2026-04-01'),
(2, 102, 2, 20,'2026-04-04'),
(3, 103, 3, 35,'2026-04-01'),
(4, 104, 4, 80,'2026-04-02'),
(5, 105, 5, 15,'2026-04-01'),
(6, 106, 6, 10,'2026-04-02'),
(7, 107, 7, 25,'2026-04-03'),
(8, 108, 8, 58,'2026-04-02'),
(9, 109, 9, 19,'2026-04-01'),
(10, 110, 10, 30,'2026-04-05');

INSERT INTO PurchaseOrders VALUES
(5001,1,'2026-03-28', 'Delivered'),
(5002,2,'2026-03-19','Pending'),
(5003,3,'2026-04-01','Pending'),
(5004,4,'2026-03-31','Delivered'),
(5005,5,'2026-04-05','Pending'),
(5006,6,'2026-04-01', 'Delivered'),
(5007,7,'2026-03-28', 'Pending'),
(5008,8,'2026-04-07','Pending'),
(5009,9,'2026-04-03','Delivered'),
(5010,10,'2026-04-08', 'Delivered');

INSERT INTO PurchaseOrderItems VALUES
(1,5001,101,100,13000),
(2,5002,102,60,40000),
(3,5003,103,80,22000),
(4,5004,104,120,10000),
(5,5005,105,55,50000),
(6,5006,106,30,140000),
(7,5007,107,90,28000),
(8,5008,108,40,50000),
(9,5009,109,25,37000),
(10,5010,110,17,75000);

INSERT INTO SalesOrders VALUES
(9001,'2026-04-06','Amina Bello','Lagos','Completed'),
(9002,'2026-04-05','John Okafor','Abuja','Processing'),
(9003,'2026-04-01','David Mark','Ibadan','Completed'),
(9004,'2026-04-03','Chioma Obi','Enugu','Completed'),
(9005,'2026-04-06','Ibrahim Musa','Kano','Completed'),
(9006,'2026-03-31','Mary James','Ibadan','Completed'),
(9007,'2026-04-09','Ahmed Yusuf','Abuja','Processing'),
(9008,'2026-04-04','Peter John','Port Harcourt','Processing'),
(9009,'2026-04-05','Grace Eze','Port Hacourt','Completed'),
(9010,'2026-04-02','Sarah Adelaja','Lagos','Completed');

INSERT INTO SalesOrderItems VALUES
(1,9001,101,2,16000),
(2,9002,102,1,48000),
(3,9003,103,3,26000),
(4,9004,104,5,13000),
(5,9005,105,2,65000),
(6,9006,106,1,160000),
(7,9007,107,2,32000),
(8,9008,108,1,60000),
(9,9009,109,3,45000),
(10,9010,110,2,85000);

INSERT INTO Shipments VALUES
(7001,9001,1,'2026-04-08','In Transit'),
(7002,9002,2,'2026-04-03','Delivered'),
(7003,9003,3,'2026-04-03','Delivered'),
(7004,9004,4,'2026-04-01','Delivered'),
(7005,9005,5,'2026-04-13','In Transit'),
(7006,9006,6,'2026-04-10', 'Delivered'),
(7007,9007,7,'2026-04-03','Delivered'),
(7008,9008,8,'2026-04-04', 'Delivered'),
(7009,9009,9,'2026-04-10', 'In Transit'),
(7010,9010,10,'2026-04-12','In Transit');
