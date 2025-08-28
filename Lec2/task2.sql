CREATE TABLE Employees (
    EmployeeID NUMBER,
    FirstName  VARCHAR2(255),
    LastName   VARCHAR2(255),
    Department VARCHAR2(50),
    Salary     NUMBER
);

INSERT INTO Employees VALUES (101, 'ammar', 'yasseer', 'AI', 55313);
INSERT INTO Employees VALUES (102, 'mazen', 'ashraf', 'IT', 66223);
INSERT INTO Employees VALUES (103, 'eslam', 'mshmsh', 'CS', 44135);
INSERT INTO Employees VALUES (104, 'mhmd', 'marc', 'IT', 22653);
INSERT INTO Employees VALUES (105, 'seif', 'magdy', 'IS', 34531);


UPDATE Employees SET Salary = 600000 WHERE EmployeeID = 101;

DELETE FROM Employees WHERE Department = '101';

SELECT * FROM Employees WHERE Department = 'IT';

SELECT EmployeeID, FirstName || ' ' || LastName AS FullName, Department, Salary FROM Employees;