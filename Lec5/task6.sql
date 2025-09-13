CREATE TABLE Language (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100)
);

CREATE TABLE Teacher (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    salary NUMBER(10,2),
    language_id NUMBER,
    FOREIGN KEY (language_id) REFERENCES Language(id)
);
