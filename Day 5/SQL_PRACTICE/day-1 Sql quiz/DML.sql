CREATE TABLE Items (
    Item_ID INT PRIMARY KEY,
    Item_Name VARCHAR(50) NOT NULL,
    Category VARCHAR(30),
    Price DECIMAL(10,2),
    Quantity INT,
    Supplier_Name VARCHAR(50),
    Purchase_Date DATE,
    Status VARCHAR(20)
);

INSERT INTO Items VALUES
(1, 'Laptop', 'Electronics', 55000, 10, 'ABC Traders', '2026-01-10', 'Available'),
(2, 'Mouse', 'Accessories', 500, 50, 'XYZ Suppliers', '2026-01-12', 'Available'),
(3, 'Keyboard', 'Accessories', 1200, 30, 'ABC Traders', '2026-01-15', 'Unavailable'),
(4, 'Printer', 'Electronics', 15000, 5, 'Tech World', '2026-01-18', 'Available'),
(5, 'Chair', 'Furniture', 2500, 20, 'Office Mart', '2026-01-20', 'Out of Stock'),
(6, 'Table', 'Furniture', 4500, 15, 'Home Decor', '2026-02-01', 'Available'),
(7, 'Monitor', 'Electronics', 12000, 12, 'Tech World', '2026-02-05', 'Unavailable'),
(8, 'Headphones', 'Accessories', 1800, 25, 'Sound Hub', '2026-02-08', 'Pending'),
(9, 'Mobile', 'Electronics', 25000, 8, 'ABC Traders', '2026-02-10', 'Available'),
(10, 'USB Cable', 'Accessories', 250, 100, 'XYZ Suppliers', '2026-02-12', 'Out of Stock'),
(11, 'Notebook', 'Stationery', 80, 200, 'Paper House', '2026-02-15', 'Available'),
(12, 'Pen', 'Stationery', 20, 500, 'Paper House', '2026-02-18', 'Unavailable'),
(13, 'Scanner', 'Electronics', 8500, 6, 'Tech World', '2026-03-01', 'Available'),
(14, 'Bookshelf', 'Furniture', 6000, 4, 'Office Mart', '2026-03-05', 'Discontinued'),
(15, 'Webcam', 'Accessories', 2200, 18, 'Sound Hub', '2026-03-08', 'Available'),
(16, 'Tablet', 'Electronics', 30000, 7, 'ABC Traders', '2026-03-10', 'Pending'),
(17, 'Office Desk', 'Furniture', 7500, 9, 'Home Decor', '2026-03-12', 'Available'),
(18, 'Marker', 'Stationery', 50, 150, 'Paper House', '2026-03-15', 'Out of Stock'),
(19, 'Speaker', 'Accessories', 3500, 14, 'Sound Hub', '2026-03-18', 'Discontinued'),
(20, 'Projector', 'Electronics', 40000, 3, 'Tech World', '2026-03-20', 'Available');



USE SQL_Practice;
Select * from Items;
Select Item_Name,Category from Items;
Select * from Items where Status = 'Available';
Select Item_Name,Category,Price,Quantity,Price * Quantity AS Total_Amount from Items;
Select * from Items where Supplier_Name="ABC Traders";
Select min(Price),max(Price),sum(Price*Quantity),count(Category),Avg(Price) from items;
Select COUNT(*) from Items where Status="Out of Stock";
select * from items 
Where price>=100 and price<=200;
select * from items
where Status in ("available","Pending");
select * from items
order by Quantity desc;
select * from items where Price=2500;
select * from items where Category="Electronics" and Price>10000;
select * from Items where Category="Furniture" or Category="Stationery";
Select * from Items where Status = 'UnAvailable';
select * from items where Price>1000 and Quantity>10;
select * from items where Price BETWEEN 1000 and 10000;
select * from items where Quantity BETWEEN 10 and 50;
select * from items where Purchase_Date BETWEEN '2026-02-01' and '2026-03-01';
select * from items where Price NOT BETWEEN 500 and 5000;
select * from items where Category in ("Electronics","Accessories","Furniture");
select * from items where Supplier_Name in ("ABC Traders","Tech World","Sound Hub");
select * from items where Status in ("Available","Pending","Unavailable");
select * from items where category not in ("electronics","Furniture");
select * from items where item_name like 'M%';
select * from items where item_name like '%r';
select * from items where item_name like '%oo%';
select * from items where item_name like 'S%';
select * from items where supplier_name like 'A%';
select * from items where item_name like '_____';
select * from items where Supplier_Name is null;
select * from items where Status is not null;
select * from items where Price is null;
select * from items where Quantity is not null;
select * from items order by Price asc;
select * from items order by Quantity desc;
select * from items where Category = "Electronics"and Price between 10000 and 50000; 
select * from items where Supplier_Name = "ABC Traders" and Status="Available";
select * from items where Item_name like "p%" and price > 1000;
select * from items order by price desc LIMIT 5;
select * from items order by Purchase_Date desc;
update items set Quantity=Quantity+10 where Status="Available";
update items set Price=price + 500 where Supplier_Name = "Tech World";
update items set quantity = quantity -4,status="Out of Stock" where Item_Name="Chair";
update items set Price=60000 where item_Name="Laptop";
update items set Quantity=100 where Item_Name="Mouse";
update items set status="Available" where Item_Name="Keyboard";
update items set supplier_Name="ABC Electronics" where Supplier_Name="ABC Traders";
update items set price=price*1.10;
delete from items where status="Unavailable";
delete from items where Item_ID=5;
delete from items where Quantity<10;

DESC Items;