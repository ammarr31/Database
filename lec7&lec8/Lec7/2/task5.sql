SELECT employee_name, salary FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT employee_name FROM employees 
WHERE department_id = (SELECT department_id FROM employees WHERE employee_name = 'Alice');

SELECT * FROM products 
WHERE price = (SELECT MIN(price) FROM products);

SELECT department_name FROM departments 
WHERE department_id = (SELECT department_id FROM employees WHERE salary = (SELECT MAX(salary) FROM employees));

SELECT manager_id FROM employees 
WHERE employee_id = (SELECT employee_id FROM employees WHERE hire_date = (SELECT MAX(hire_date) FROM employees));

SELECT employee_name, salary FROM employees WHERE salary = (SELECT AVG(salary) FROM employees);

SELECT * FROM orders 
WHERE order_date = (SELECT MIN(order_date) FROM orders);

SELECT employee_name, salary FROM employees 
WHERE salary > (SELECT salary FROM employees WHERE employee_id = 101);

SELECT student_name, gpa FROM students 
WHERE gpa = (SELECT gpa FROM students WHERE student_name = 'John Doe');

SELECT book_title, price FROM books 
WHERE price = (SELECT MAX(price) FROM books WHERE category_id = ( SELECT category_id  FROM categories  WHERE category_name = 'Science'));
