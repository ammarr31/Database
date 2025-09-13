CREATE TABLE Doctor (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    salary NUMBER(10,2)
);

CREATE TABLE Patient (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);

CREATE TABLE Doctor_Patient (
    doctor_id NUMBER,
    patient_id NUMBER,
    PRIMARY KEY (doctor_id, patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(id),
    FOREIGN KEY (patient_id) REFERENCES Patient(id)
);
