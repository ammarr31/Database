CREATE USER abc IDENTIFIED BY 123;

GRANT CREATE SESSION TO abc;
GRANT CREATE TABLE TO abc;


CONNECT abc/123;

CREATE TABLE Student (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50)
);

GRANT INSERT, SELECT, UPDATE, DELETE ON Student TO abc;


INSERT INTO Student (id, name) VALUES (1, 'ahmed');
INSERT INTO Student (id, name) VALUES (2, 'ziad');

SELECT * FROM Student;

UPDATE Student SET name = 'yossef' WHERE id = 2;

DELETE FROM Student WHERE id = 1;

CONNECT hr/12;


GRANT INSERT, SELECT, UPDATE, DELETE ON abc.Student TO hr;

INSERT INTO abc.Student (id, name) VALUES (3, 'mohamed');


SELECT * FROM abc.Student;

UPDATE abc.Student SET name='ali' WHERE id=3;


DELETE FROM abc.Student WHERE id=3;

REVOKE INSERT, SELECT, UPDATE, DELETE ON abc.Student FROM hr;
REVOKE CREATE TABLE FROM abc;
REVOKE CREATE SESSION FROM abc;

