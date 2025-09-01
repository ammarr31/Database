SELECT * FROM employees;
SELECT * FROM employees WHERE EMPLOYEE_ID BETWEEN 100 AND 105;
SELECT * FROM employees WHERE EMPLOYEE_ID IN (151 , 152, 153, 154 , 155);
SELECT * FROM employees WHERE LOWER(FIRST_NAME) LIKE 'p%';
SELECT * FROM employees WHERE LOWER(FIRST_NAME) LIKE '%a';
SELECT * FROM employees WHERE LOWER(FIRST_NAME) LIKE 'a%';
SELECT * FROM employees WHERE LOWER(FIRST_NAME) LIKE '__e%';
SELECT * FROM employees WHERE MANAGER_ID IS NULL;
SELECT * FROM employees WHERE MANAGER_ID IS NOT NULL;

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL , PHONE_NUMBER ,HIRE_DATE,job_id, manager_id, salary, department_id)
VALUES (115, 'ammar', 'tamer', 'ammartamer@gmail.com','+97220143104310',SYSDATE, 'IT_PROG', NULL, 5400, 60);


SELECT * FROM employees WHERE job_id IN ('AD_VP', 'IT_PROG');
SELECT * FROM employees ORDER BY LAST_NAME ASC;
SELECT * FROM employees ORDER BY hire_date DESC;
SELECT * FROM employees ORDER BY department_id ASC , salary DESC;
SELECT LOWER(last_name) FROM employees;
SELECT UPPER(first_name) FROM employees;
SELECT INITCAP(first_name) || ' '  || INITCAP(last_name) AS FULL_NAME FROM employees;
SELECT * FROM employees WHERE LOWER(last_name) = 'smith';