SELECT job_id, job_title, employee_id, start_date, end_date
FROM jobs NATURAL JOIN job_history;

SELECT job_id, job_title, employee_id, start_date, end_date
FROM jobs JOIN job_history USING (job_id);

SELECT j.job_id, j.job_title, h.employee_id, h.start_date, h.end_date
FROM jobs j JOIN job_history h ON j.job_id = h.job_id;

SELECT j.job_id, j.job_title, h.employee_id, h.start_date, h.end_date
FROM jobs j INNER JOIN job_history h ON j.job_id = h.job_id;

SELECT j.job_id, j.job_title, h.employee_id, h.start_date, h.end_date
FROM jobs j LEFT JOIN job_history h ON j.job_id = h.job_id;

SELECT j.job_id, j.job_title, h.employee_id, h.start_date, h.end_date
FROM jobs j RIGHT JOIN job_history h ON j.job_id = h.job_id;

SELECT j.job_id, j.job_title, h.employee_id, h.start_date, h.end_date
FROM jobs j FULL OUTER JOIN job_history h ON j.job_id = h.job_id;
