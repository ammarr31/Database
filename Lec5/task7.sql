CREATE TABLE Employee (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);

CREATE TABLE Phone (
    id NUMBER PRIMARY KEY,
    phoneNumber VARCHAR2(20),
    employee_id NUMBER UNIQUE,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);
