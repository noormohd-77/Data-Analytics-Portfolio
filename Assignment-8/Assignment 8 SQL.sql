DROP VIEW IF EXISTS ElectronicsView;
DROP TABLE IF EXISTS Products8;

CREATE TABLE Products8 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    QuantitySold INT,
    Category VARCHAR(50)
);

INSERT INTO Products8 (ProductID, ProductName, Price, QuantitySold, Category) VALUES
    (1, 'Laptop',     800.00,  5, 'Electronics'),
    (2, 'Smartphone', 600.00, 10, 'Electronics'),
    (3, 'Desk Chair', 120.00, 15, 'Furniture'),
    (4, 'Table',      200.00,  8, 'Furniture'),
    (5, 'Notebook',     5.00, 20, 'Stationery'),
    (6, 'Pen',          2.00, 50, 'Stationery');

SELECT * FROM Products8;

--2. a) Above-Average Price: Select products whose Price exceeds the average price.
SELECT * FROM Products8
WHERE Price > (SELECT AVG(Price) FROM Products8);

--2.b) Most Expensive Product: Display the ProductName and Price of the highest-priced item.
SELECT ProductName, Price
FROM Products8
ORDER BY Price DESC
LIMIT 1;

--2.c) Category Counts: Show the total number of products in each Category (using a subquery).
SELECT DISTINCT Category,
    (SELECT COUNT(*)
     FROM Products8 P2
     WHERE P2.Category = P1.Category) AS ProductCount
FROM Products8 P1;

--2.d) Below-Average Sales: Find products with QuantitySold below the average quantity sold.
SELECT * FROM Products8
WHERE QuantitySold < (SELECT AVG(QuantitySold) FROM Products8);

--2.e) Electronics View: Create a view for all Electronics products.
CREATE VIEW ElectronicsView AS
SELECT * FROM Products8
WHERE Category = 'Electronics';


SELECT * FROM ElectronicsView;

