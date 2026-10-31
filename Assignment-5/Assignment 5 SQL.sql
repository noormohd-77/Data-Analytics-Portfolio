DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

SELECT * FROM Products;

INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
    (1, 'Laptop',     'Electronics', 800.00,   50),
    (2, 'Smartphone', 'Electronics', 600.00,   30),
    (3, 'Desk Chair', 'Furniture',   120.00,  100),
    (4, 'Table',      'Furniture',   200.00,   20),
    (5, 'Notebook',   'Stationery',    5.00,  500),
    (6, 'Pen',        'Stationery',    2.00, 1000);

	--2.a) Electronics & Furniture: Retrieve products in categories Electronics or Furniture.
	SELECT * FROM Products
    WHERE Category IN ('Electronics', 'Furniture');

	--2.b) Price Range: Find products with price between 100 and 800.
	SELECT * FROM Products
    WHERE Price BETWEEN 100 AND 800;

	--2.c) Stock Range: List products whose stock is between 50 and 500.
	SELECT * FROM Products
    WHERE Stock BETWEEN 50 AND 500;

	--2.d) Name Contains 'Pen': Select products with 'Pen' anywhere in the name.
	SELECT * FROM Products
    WHERE ProductName LIKE '%Pen%';

	--2.e) Name starts with 'S' 
    SELECT * FROM Products
    WHERE ProductName LIKE 'S%';

	--2.f) Category & Price: Products in Stationery or Furniture and price 100–300.
	SELECT * FROM Products
    WHERE Category IN ('Stationery', 'Furniture')
    AND Price BETWEEN 100 AND 300;

    --7.g) Low-Price 'o': Products priced 1–10 and name contains 'o'.
	SELECT * FROM Products
    WHERE Price BETWEEN 1 AND 10
    AND ProductName LIKE '%o%';


	
	


	



