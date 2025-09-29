CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER CHECK (age >= 18)
);

CREATE TABLE staff (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    salary NUMBER CHECK (salary BETWEEN 3000 AND 10000)
);

ALTER TABLE products
ADD CONSTRAINT chk_price CHECK (price > 0);

CREATE TABLE students (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    grade CHAR(1) CHECK (grade IN ('A','B','C','D','E','F'))
);


-- ////////////////////////////

ALTER TABLE customers
MODIFY email VARCHAR2(150) NOT NULL;

ALTER TABLE users
ADD CONSTRAINT uq_username UNIQUE (username);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id)
REFERENCES customers(id);

ALTER TABLE accounts
ADD CONSTRAINT chk_balance CHECK (balance >= 0);

ALTER TABLE departments
ADD CONSTRAINT pk_departments PRIMARY KEY (dept_id);

-- ///////////////////////////////

ALTER TABLE employees
DROP CONSTRAINT chk_salary;

ALTER TABLE users
DROP CONSTRAINT uq_email;

ALTER TABLE products
DROP PRIMARY KEY;

ALTER TABLE orders
DROP CONSTRAINT fk_order_customer;

ALTER TABLE contacts
MODIFY phone VARCHAR2(20) NULL;

-- ////////////////////////////////

ALTER TABLE students
RENAME CONSTRAINT chk_age TO check_min_age;

ALTER TABLE employees
RENAME CONSTRAINT fk_emp_dept TO fk_employee_department;

ALTER TABLE users
RENAME CONSTRAINT sys_c001234 TO pk_users_id;

ALTER TABLE users
RENAME CONSTRAINT uq_username TO uk_user_name;

-- /////////////////////////////////////

ALTER TABLE orders
DISABLE CONSTRAINT fk_customer_order;

ALTER TABLE products DISABLE ALL CONSTRAINTS;

ALTER TABLE accounts
DISABLE CONSTRAINT chk_balance;

ALTER TABLE departments
DISABLE PRIMARY KEY;

ALTER TABLE students DISABLE ALL CONSTRAINTS;

-- /////////////////////////////////////////

ALTER TABLE Orders
ENABLE CONSTRAINT fk_customer_order;

ALTER TABLE products ENABLE ALL CONSTRAINTS;

ALTER TABLE staff
ENABLE CONSTRAINT chk_salary;

ALTER TABLE departments
ENABLE PRIMARY KEY;

ALTER TABLE students
ENABLE NOVALIDATE CONSTRAINT constraint_name;

