CREATE TABLE Departments(
      DeptID INT PRIMARY KEY,
      DeptName VARCHAR(50),
      Location VARCHAR(50)
	  
);

SELECT * FROM departments;

INSERT INTO Departments (DeptID, DeptName, Location)
   VALUES (101, 'Sales', 'New York');
