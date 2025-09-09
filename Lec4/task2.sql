SELECT REPLACE('database', 'a', '@') FROM dual;


SELECT REPLACE('old product', 'old', 'new') FROM dual;

CREATE TABLE PRODUCT (
    name VARCHAR2(50)
);

INSERT INTO PRODUCT (name) VALUES ('laptop');
INSERT INTO PRODUCT (name) VALUES ('phone');
INSERT INTO PRODUCT (name) VALUES ('tablet');

SELECT LPAD(name, 15, '*') FROM PRODUCT;

SELECT RPAD(name, 15, '#') FROM PRODUCT;

