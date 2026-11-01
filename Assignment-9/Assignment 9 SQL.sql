DROP TABLE IF EXISTS Employees9;

CREATE TABLE Employees9 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DateOfBirth DATE,
    JoinDate DATE
);

INSERT INTO Employees9 (EmpID, Name, DateOfBirth, JoinDate) VALUES
    (1, 'Alice Johnson', '1985-05-20', '2010-06-15'),
    (2, 'Bob Smith',     '1990-08-10', '2015-09-01'),
    (3, 'Charlie Brown', '1988-03-25', '2012-11-12'),
    (4, 'Diana Prince',  '1992-01-30', '2017-07-08'),
    (5, 'Eve Adams',     '1987-12-05', '2013-03-20');

SELECT * FROM Employees9;

---===2. SQL Query Tasks===---
--  a) Current Date & Time: Display the current system date and time.
SELECT CURRENT_TIMESTAMP;

--b) Calculate Age: Compute each employee’s age in years based on DateOfBirth.
SELECT Name, DATE_PART('year', AGE(CURRENT_DATE, DateOfBirth))::int AS Age
FROM Employees9;

--c) Calculate Experience: Compute total years of service since JoinDate.
 SELECT Name, DATE_PART('year', AGE(CURRENT_DATE, JoinDate))::int AS YearsExperience
FROM Employees9;

--d) Extract DOB Components: Extract year, month, and day from DateOfBirth.
SELECT Name,
       EXTRACT(YEAR  FROM DateOfBirth) AS BirthYear,
       EXTRACT(MONTH FROM DateOfBirth) AS BirthMonth,
       EXTRACT(DAY   FROM DateOfBirth) AS BirthDay
FROM Employees9;

-- e) Born in August: List employees born in the month of August.
SELECT Name FROM Employees9
WHERE EXTRACT(MONTH FROM DateOfBirth) = 8;

-- f) Upcoming Birthdays: Display names of employees whose birthdays fall in the next 30 days.
SELECT Name, DateOfBirth
FROM Employees9
WHERE (CASE
         WHEN make_date(EXTRACT(YEAR FROM CURRENT_DATE)::int,
                        EXTRACT(MONTH FROM DateOfBirth)::int,
                        EXTRACT(DAY FROM DateOfBirth)::int) >= CURRENT_DATE
         THEN make_date(EXTRACT(YEAR FROM CURRENT_DATE)::int,
                        EXTRACT(MONTH FROM DateOfBirth)::int,
                        EXTRACT(DAY FROM DateOfBirth)::int)
         ELSE make_date(EXTRACT(YEAR FROM CURRENT_DATE)::int + 1,
                        EXTRACT(MONTH FROM DateOfBirth)::int,
                        EXTRACT(DAY FROM DateOfBirth)::int)
       END) BETWEEN CURRENT_DATE AND CURRENT_DATE + 30;

	   

