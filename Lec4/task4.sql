CREATE TABLE STUDENTS (
    name  VARCHAR2(50),
    marks NUMBER(3)
);


INSERT INTO STUDENTS (name, marks) VALUES ('ammar', 95);
INSERT INTO STUDENTS (name, marks) VALUES ('habiba', 82);
INSERT INTO STUDENTS (name, marks) VALUES ('ammarX', 76);
INSERT INTO STUDENTS (name, marks) VALUES ('ammarXX', 65);
INSERT INTO STUDENTS (name, marks) VALUES ('amar', 59);

SELECT name, marks,
       CASE 
            WHEN marks >= 90 THEN 'A'
            WHEN marks BETWEEN 80 AND 89 THEN 'B'
            WHEN marks BETWEEN 70 AND 79 THEN 'C'
            WHEN marks BETWEEN 60 AND 69 THEN 'D'
            ELSE 'F'
       END AS grade
FROM STUDENTS;

