SELECT employee_name, department_name FROM employees JOIN departments USING(department_id);

SELECT order_id, customer_name FROM orders JOIN customers USING(customer_id);

SELECT product_name, supplier_name FROM products JOIN suppliers USING(supplier_id);

SELECT student_name, course_title FROM students JOIN enrollments USING(student_id);

SELECT invoice_number, product_name FROM invoices JOIN products USING(product_id);

SELECT project_name, employee_name FROM projects JOIN employees USING(project_id);

SELECT author_name, book_title FROM authors JOIN books USING(author_id);

SELECT order_id, employee_name, sale_amount FROM sales JOIN employees USING(employee_id);

SELECT course_schedule, instructor_name FROM courses JOIN instructors USING(instructor_id);

SELECT transaction_id, account_holder_name FROM transactions JOIN accounts USING(account_id);
