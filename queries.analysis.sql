-- SQL ANALYSIS--
-- 1.TOP SELLING PRODUCTS--
Select p.product_name, Sum(soi.quantity) AS total_quantity_sold
From SalesOrderItems soi
Join Products p ON soi.product_id=p.product_id
Group by p.product_name
Order by total_quantity_sold desc;


-- 2. REVENUE BY CATEGORY--
Select p.category, format(Sum(soi.quantity* soi.selling_price),0) AS total_revenue
From SalesOrderItems soi
Join Products p ON soi.product_id=p.product_id
Group by p.category
Order by Sum(soi.quantity* soi.selling_price) desc;


-- 3. STOCK SHORTAGE DETECTION--
Select p.product_name, w.warehouse_name,i.quantity
From inventory i
Join Products p ON i.product_id=p.product_id
Join Warehouses w ON i.warehouse_id=w.warehouse_id
Where i.quantity < 20
Order by i.quantity asc;


-- 4. LOW-STOCK ALERTS--
Select p.product_name, Sum(i.quantity) AS total_stock
From inventory i
Join Products p ON i.product_id=p.product_id
Group by p.product_name
Having total_stock < 50;


-- 5. SUPPLIER PERFORMANCE RANKING--
Select s.supplier_name, Count(po.po_id) AS total_orders,
Sum(poi.quantity) AS total_supplied,
RANK() OVER (ORDER BY Sum(poi.quantity) DESC) AS supplier_rank
From suppliers s
Join purchaseorders po ON s.supplier_id=po.supplier_id
Join purchaseorderitems poi ON po.po_id=poi.po_id
Group by s.supplier_name
Order by total_supplied desc;


-- 6. MONTHLY REVENUE--
Select date_format(so.order_date,'%Y-%M') AS month,
format(Sum(soi.quantity * soi.selling_price),0) AS revenue
From SalesOrders so
Join salesorderitems soi ON	so.order_id=soi.order_id
Group by month
Order by month, Sum(soi.quantity * soi.selling_price)desc;


-- 7. DELIVERY PERFORMANCE--
Select delivery_status, count(*) AS total_shipments
From Shipments
Group by delivery_status;

-- 8. DELIVERY SUCCESS RATE--
Select w.warehouse_name,
 Sum(Case WHEN s.delivery_status = 'Delivered' THEN 1 ELSE 0 END) AS successful_deliveries,
Count(*) AS total_shipments
FROM Shipments s
JOIN Warehouses w ON s.warehouse_id=w.warehouse_id
Group by w.warehouse_name;

