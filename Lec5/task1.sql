CREATE TABLE Player (
    id NUMBER NOT NULL UNIQUE,
    name VARCHAR2(100) UNIQUE,
    age NUMBER
);

CREATE TABLE Manager1 (
    id NUMBER NOT NULL,
    name VARCHAR2(100),
    salary NUMBER(10,2),
    CONSTRAINT unique_id_name UNIQUE (id, name)
);

CREATE TABLE Manager2 (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);
