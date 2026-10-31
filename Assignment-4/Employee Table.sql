CREATE TABLE employees(
      EmpID INT PRIMARY KEY,
      Name VARCHAR(50),
      Department VARCHAR(30),
      Salary DECIMAL(10,2)
	  
);

SELECT * FROM employees;

INSERT INTO employees (EmpID, Name, Department, Salary) 
 VALUES (1, 'John Doe', 'HR', 50000),
   (2, 'Jane Smith', 'IT', 60000),
   (3, 'Alice Johnson', 'Finance', 55000),
   (4, 'Bob Brown', 'HR', 45000),
   (5, 'Charlie White', 'IT', 65000);

   SELECT DISTINCT Department FROM Employees;

    SELECT * FROM Employees WHERE Salary > 55000;

