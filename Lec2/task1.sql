CREATE TABLE DOCTOR (
    id NUMBER,
    name VARCHAR2(100),
    salary NUMBER,
    address VARCHAR2(255)
);

INSERT INTO DOCTOR VALUES (1, 'ahmed',     5000,  'cairo');
INSERT INTO DOCTOR VALUES (2, 'sara',  7000,  'giza');
INSERT INTO DOCTOR VALUES (3, 'omar',   9000,  'alex');
INSERT INTO DOCTOR VALUES (4, 'samir',    3000,  'luxor');
INSERT INTO DOCTOR VALUES (5, 'khaled',1000,  'aswan');
INSERT INTO DOCTOR VALUES (6, 'adel',     2000,  'mansoura');
INSERT INTO DOCTOR VALUES (7, 'tarek', 4000,  'tanta');
INSERT INTO DOCTOR VALUES (8, 'mahmoud', 8000,  'cairo');
INSERT INTO DOCTOR VALUES (9, 'laila',   6000,  'alex');
INSERT INTO DOCTOR VALUES (10,'hany',    12000, 'giza');

UPDATE DOCTOR SET salary = 20000 WHERE id = 3;

DELETE FROM DOCTOR WHERE id = 9;


SELECT name || ' - ' || salary AS Name_Salary FROM Doctor;

SELECT id, name, salary, salary * 2, address FROM Doctor;

SELECT * FROM Doctor WHERE salary IN (1000, 2000, 3000);

ALTER TABLE Doctor RENAME TO PRD_DOCTOR;