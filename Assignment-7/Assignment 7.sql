DROP TABLE IF EXISTS Employees7;
DROP TABLE IF EXISTS Departments7;

CREATE TABLE Employees7 (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DepartmentID INT
);
INSERT INTO Employees7 (EmpID, EmpName, DepartmentID) VALUES
    (1, 'Alice',   101),
    (2, 'Bob',     102),
    (3, 'Charlie', 103),
    (4, 'Diana',   NULL),
    (5, 'Eve',     101);
SELECT * FROM Employees7;

CREATE TABLE Departments7 (
    DepartmentID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);
INSERT INTO Departments7 (DepartmentID, DeptName, Location) VALUES
    (101, 'HR',      'New York'),
    (102, 'IT',      'San Francisco'),
    (103, 'Finance', 'Chicago'),
    (104, 'Sales',   'Boston');
SELECT * FROM Departments7;

--2. a) Inner Join: List all employees with assigned department names.
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees7 E
INNER JOIN Departments7 D ON E.DepartmentID = D.DepartmentID;

--2. b) Left Join: Show all employees, with department name if assigned (NULL if not).
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees7 E
LEFT JOIN Departments7 D ON E.DepartmentID = D.DepartmentID;

--2.c) Right Join: Show all departments, with employee name if exists (NULL if none).
SELECT D.DepartmentID, D.DeptName, E.EmpName
FROM Employees7 E
RIGHT JOIN Departments7 D ON E.DepartmentID = D.DepartmentID;

--2. d) Full Outer Join: Include all employees and departments, matching where possible.
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees7 E
FULL OUTER JOIN Departments7 D ON E.DepartmentID = D.DepartmentID;

--2.e) Cross Join: Generate every combination of employee names and department names.
SELECT E.EmpName, D.DeptName
FROM Employees7 E
CROSS JOIN Departments7 D;

--2.f) Union All: Create a list combining all employee names and department names in one column.
SELECT EmpName AS Name FROM Employees7
UNION ALL
SELECT DeptName FROM Departments7;

--2. g) Intersect: Find department IDs present in both tables.
SELECT DepartmentID FROM Employees7
INTERSECT
SELECT DepartmentID FROM Departments7;

--2. h) Except: List department IDs in Departments but not in Employees.
SELECT DepartmentID FROM Departments7
EXCEPT
SELECT DepartmentID FROM Employees7;







