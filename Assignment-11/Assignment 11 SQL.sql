DROP TABLE IF EXISTS Orders11;

CREATE TABLE Orders11 (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Amount DECIMAL(10,2)
);

INSERT INTO Orders11 (OrderID, OrderDate, Amount) VALUES
    (1, '2024-11-01', 250.50),
    (2, '2024-11-02', 300.75),
    (3, '2024-11-03', 150.25);

SELECT * FROM Orders11;

--2. a) Amount to String: Convert the Amount column to a textual string.
SELECT CAST(Amount AS VARCHAR(10)) AS AmountText FROM Orders11;

--2.  b) Date to String: Format OrderDate as a string (e.g., 'YYYY-MM-DD').
SELECT TO_CHAR(OrderDate, 'YYYY-MM-DD') AS OrderDateText FROM Orders11;

--2. c) String to Date: Convert literal '2024-11-05' into a DATE type.
SELECT CAST('2024-11-05' AS DATE) AS ConvertedDate;

--2.d) Extract Year: Retrieve the year component from OrderDate.
SELECT EXTRACT(YEAR FROM OrderDate) AS OrderYear FROM Orders11;

--2.e) Concatenate Fields: Combine OrderDate and Amount into one string.
SELECT CONCAT(TO_CHAR(OrderDate, 'YYYY-MM-DD'), ' - $', Amount) AS Summary
FROM Orders11;
