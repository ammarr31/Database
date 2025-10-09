SELECT employee_name, salary FROM employees 
WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 10);

SELECT employee_name, salary FROM employees 
WHERE salary < ALL (SELECT salary FROM employees WHERE department_id = 20);

SELECT product_name, price FROM products 
WHERE price IN (SELECT price FROM products WHERE category_id = (SELECT category_id FROM categories WHERE category_name = 'Electronics'));

SELECT customer_name 
FROM customers 
WHERE customer_id IN (SELECT customer_id FROM orders WHERE product_id IN (SELECT product_id FROM products WHERE price > 1000));

SELECT employee_name FROM employees WHERE job_title IN (SELECT job_title FROM employees GROUP BY job_title HAVING COUNT(*) > 1);

SELECT department_name FROM departments WHERE department_id IN (SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(*) > 1);

SELECT o.order_id FROM orders o WHERE o.customer_id IN (SELECT c1.customer_id FROM customers c1 WHERE c1.city IN (SELECT c2.city FROM customers c2 GROUP BY c2.city HAVING COUNT(*) > 1));

SELECT book_title FROM books WHERE author_id IN (SELECT author_id FROM books GROUP BY author_id HAVING COUNT(*) > 1);

SELECT student_name FROM students WHERE course_id IN (SELECT course_id FROM courses WHERE instructor_id = (SELECT instructor_id FROM instructors WHERE instructor_name = 'Dr. Smith'));

SELECT employee_name FROM employees WHERE salary IN (SELECT salary FROM employees WHERE department_id = 30);
