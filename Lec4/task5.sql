SELECT name,
       marks,
       DECODE(marks,
              100, 'A', 99, 'A', 98, 'A', 97, 'A', 96, 'A',
              95, 'A', 94, 'A', 93, 'A', 92, 'A', 91, 'A', 90, 'A',
              89, 'B', 88, 'B', 87, 'B', 86, 'B', 85, 'B', 84, 'B',
              83, 'B', 82, 'B', 81, 'B', 80, 'B',
              79, 'C', 78, 'C', 77, 'C', 76, 'C', 75, 'C', 74, 'C',
              73, 'C', 72, 'C', 71, 'C', 70, 'C',
              69, 'D', 68, 'D', 67, 'D', 66, 'D', 65, 'D', 64, 'D',
              63, 'D', 62, 'D', 61, 'D', 60, 'D',
              'F'
       ) AS grade
FROM STUDENTS;




CREATE TABLE ORDERS (
    id NUMBER,
    status   CHAR(1)
);

INSERT INTO ORDERS (id, status) VALUES (1, 'P');
INSERT INTO ORDERS (id, status) VALUES (2, 'S');
INSERT INTO ORDERS (id, status) VALUES (3, 'D');

SELECT id,
       status,
       DECODE(status,
              'P', 'Pending',
              'S', 'Shipped',
              'D', 'Delivered',
              '-'
       ) AS Status
FROM ORDERS;

