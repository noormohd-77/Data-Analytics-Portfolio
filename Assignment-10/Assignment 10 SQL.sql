DROP TABLE IF EXISTS Employees10;

CREATE TABLE Employees10 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Email VARCHAR(50)
);

INSERT INTO Employees10 (EmpID, Name, Department, Email) VALUES
    (1, 'Alice Johnson', 'HR',      'alice.johnson@example.com'),
    (2, 'Bob Smith',     'IT',      'bob.smith@example.com'),
    (3, 'Charlie Brown', 'Finance', 'charlie.brown@example.com'),
    (4, 'Diana Prince',  'HR',      'diana.prince@example.com'),
    (5, 'Eve Adams',     'IT',      'eve.adams@example.org');

SELECT * FROM Employees10;

--2. a) @example.com Emails: List employees with emails in the example.com domain.
SELECT Name, Email FROM Employees10
WHERE Email LIKE '%@example.com';

--2.   b) Names Starting with 'A': Select employees whose names start with 'A'.
SELECT Name FROM Employees10
WHERE Name LIKE 'A%';

--2.c) Names Ending with 'son': Find employees whose names end with 'son'.
SELECT Name FROM Employees10
WHERE Name LIKE '%son';

--2.   d) Second Letter 'v': Retrieve employees whose second character in the name is 'v'.
SELECT Name FROM Employees10
WHERE SUBSTRING(Name, 2, 1) = 'v';

--2.e) Departments Containing 'IT': Select employees in departments containing 'IT'.
SELECT Name, Department FROM Employees10
WHERE Department LIKE '%IT%';

--2.  f) Case-Insensitive 'hr': Find employees in departments with 'hr' regardless of case.
SELECT Name, Department FROM Employees10
WHERE LOWER(Department) LIKE '%hr%';

