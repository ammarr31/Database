SELECT e.employee_name, d.department_name FROM employees e 
RIGHT OUTER JOIN departments d ON e.department_id = d.department_id;

SELECT o.order_id, c.customer_name FROM orders o 
RIGHT OUTER JOIN customers c ON o.customer_id = c.customer_id;

SELECT s.student_name, c.course_name FROM students s 
RIGHT OUTER JOIN courses c ON s.course_id = c.course_id;

SELECT e.employee_name, p.project_name FROM employees e 
RIGHT OUTER JOIN projects p ON e.project_id = p.project_id;

SELECT t.transaction_id, pm.payment_method_name FROM transactions t 
RIGHT OUTER JOIN payment_methods pm ON t.payment_method_id = pm.payment_method_id;

SELECT b.book_title, a.author_name FROM books b 
RIGHT OUTER JOIN authors a ON b.author_id = a.author_id;

SELECT p.product_name, c.category_name FROM products p 
RIGHT OUTER JOIN categories c ON p.category_id = c.category_id;

SELECT s.student_name, d.dorm_room_number FROM students s 
RIGHT OUTER JOIN dorms d ON s.dorm_id = d.dorm_id;
