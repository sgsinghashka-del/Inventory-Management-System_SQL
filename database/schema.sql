CREATE DATABASE SupplyChain_InventoryManagement;

Drop table if exists Suppliers;
Create Table Suppliers (supplier_id INT PRIMARY KEY NOT NULL,
supplier_name VARCHAR(100) NOT NULL, phone VARCHAR(20) NOT NULL,
city VARCHAR(50) NOT NULL);

Drop table if exists Products;
Create Table Products (product_id INT PRIMARY KEY NOT NULL,
product_name VARCHAR(100) NOT NULL, category VARCHAR(50) NOT NULL,
unit_price DECIMAL(10,2) NOT NULL);

Drop table if exists Warehouses;
Create Table Warehouses (warehouse_id INT PRIMARY KEY NOT NULL,
warehouse_name VARCHAR(100) NOT NULL, location VARCHAR(100) NOT NULL);

Drop table if exists Inventory;
Create Table Inventory (inventory_id INT PRIMARY KEY,product_id INT NOT NULL,
warehouse_id INT NOT NULL, quantity INT NOT NULL,last_updated DATE NOT NULL,
FOREIGN KEY (product_id) REFERENCES Products(product_id),FOREIGN KEY (warehouse_id) REFERENCES Warehouse(warehouse_id));

Drop table if exists PurchaseOrders;
Create Table PurchaseOrders (po_id INT PRIMARY KEY NOT NULL,supplier_id INT NOT NULL,
order_date DATE NOT NULL,status VARCHAR(20) NOT NULL,
FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id));

Drop table if exists PurchaseOrderItems;
Create Table PurchaseOrderItems (po_item_id INT PRIMARY KEY,po_id INT NOT NULL,
product_id INT NOT NULL, quantity INT NOT NULL,cost_price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (po_id) REFERENCES PurchaseOrders(po_id),FOREIGN KEY (product_id) REFERENCES Products(product_id));

Drop table if exists SalesOrders;
Create Table SalesOrders (order_id INT PRIMARY KEY NOT NULL,
order_date DATE NOT NULL, customer_name VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
status VARCHAR(20) NOT NULL);

Drop table if exists SalesOrderItems;
Create Table SalesOrderItems (sales_item_id INT PRIMARY KEY,order_id INT NOT NULL,
product_id INT NOT NULL, quantity INT NOT NULL,selling_price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES SalesOrders(order_id),FOREIGN KEY (product_id) REFERENCES Products(product_id));

Drop table if exists Shipments;
Create Table Shipments (shipment_id INT PRIMARY KEY NOT NULL,order_id INT NOT NULL,
warehouse_id INT NOT NULL,shipment_date DATE NOT NULL,delivery_status VARCHAR(20) NOT NULL,
FOREIGN KEY (order_id) REFERENCES SalesOrders(order_id),FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id));
