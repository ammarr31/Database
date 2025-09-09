CREATE TABLE customers (
    full_name VARCHAR2(50)
);

INSERT INTO customers (full_name) VALUES ('  Ali Ziad  ');
INSERT INTO customers (full_name) VALUES ('Sara kamal ');
INSERT INTO customers (full_name) VALUES ('  Omar Wagdy');
INSERT INTO customers (full_name) VALUES ('$Lina Saleh$');
INSERT INTO customers (full_name) VALUES ('*John Dow*');

SELECT TRIM(full_name) FROM customers;
SELECT LTRIM(full_name) FROM customers;
SELECT RTRIM(full_name) FROM customers;

SELECT LTRIM(RTRIM(full_name,'$*') , '$*') FROM customers;

-- TO Be VERY CLEAN
SELECT TRIM(LTRIM(RTRIM(full_name,'$*') , '$*')) FROM customers;


------------

SELECT REPLACE('promotion', 'o', '0') FROM dual;
SELECT REPLACE('This is a basic course', 'basic', 'advanced') FROM dual;

CREATE TABLE departments (
    dept_name VARCHAR2(50)
);

INSERT INTO departments (dept_name) VALUES ('HR');
INSERT INTO departments (dept_name) VALUES ('IT');
INSERT INTO departments (dept_name) VALUES ('Sales');

SELECT LPAD(dept_name, 15, '*') FROM departments;
SELECT RPAD(dept_name, 15, '-')FROM departments;


-------

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') FROM dual;
SELECT TO_CHAR(SYSDATE, 'Day, Month YYYY')FROM dual;
SELECT TO_CHAR(1234567.89, '9,999,999.99') FROM dual;
SELECT TO_CHAR(5000, '$9,999.99') FROM dual;
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS')FROM dual;

-------

CREATE TABLE students (
    name  VARCHAR2(50),
    score NUMBER(3)
);

INSERT INTO students (name, score) VALUES ('Ali', 95);
INSERT INTO students (name, score) VALUES ('Sara', 82);
INSERT INTO students (name, score) VALUES ('Omar', 76);
INSERT INTO students (name, score) VALUES ('Lina', 65);
INSERT INTO students (name, score) VALUES ('John', 50);

SELECT name,
       score,
       CASE 
            WHEN score >= 90 THEN 'A'
            WHEN score BETWEEN 80 AND 89 THEN 'B'
            WHEN score BETWEEN 70 AND 79 THEN 'C'
            ELSE 'F'
       END AS grade
FROM students;

SELECT name,
       score,
       CASE 
            WHEN score >= 60 THEN 'Pass'
            ELSE 'Fail'
       END AS result
FROM students;

SELECT name,
       score,
       CASE 
            WHEN score >= 90 THEN 'Excellent'
            WHEN score BETWEEN 80 AND 89 THEN 'Good'
            WHEN score BETWEEN 70 AND 79 THEN 'Average'
            ELSE 'Needs Improvement'
       END AS message
FROM students;

SELECT CASE TO_CHAR(SYSDATE, 'DY')
           WHEN 'MON' THEN 'Today is Monday'
           WHEN 'TUE' THEN 'Today is Tuesday'
           WHEN 'WED' THEN 'Today is Wednesday'
           WHEN 'THU' THEN 'Today is Thursday'
           WHEN 'FRI' THEN 'Today is Friday'
           WHEN 'SAT' THEN 'Today is Saturday'
           ELSE 'Today is Sunday'
       END AS today_message
FROM dual;

-------------

SELECT name,
       score,
       DECODE(score,
              100, 'A',
              90, 'B',
              80, 'C',
              70, 'D',
              'F') AS grade
FROM students;

CREATE TABLE status_log (
    status_code CHAR(1)
);

INSERT INTO status_log (status_code) VALUES ('N');
INSERT INTO status_log (status_code) VALUES ('I');
INSERT INTO status_log (status_code) VALUES ('C');

SELECT status_code,
       DECODE(status_code,
              'N', 'New',
              'I', 'In Progress',
              'C', 'Completed',
              'Unknown') AS status_full
FROM status_log;

SELECT product_name,
       quantity,
       DECODE(quantity, 0, 'Out of Stock', 'Available') AS availability
FROM products;


SELECT department,
       DECODE(department,
              'HR', 500,
              'IT', 1000,
              'Sales', 1500,
              300) AS bonus
FROM employees;



