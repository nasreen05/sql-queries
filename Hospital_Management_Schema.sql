create database Hospital_Management ;
use Hospital_Management;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    phone VARCHAR(15),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Patient (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    address VARCHAR(100)
);

CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);


CREATE TABLE Treatment (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    diagnosis VARCHAR(100),
    treatment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    amount DECIMAL(10,2),
    bill_date DATE,
    payment_status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);


INSERT INTO Department (dept_name)
VALUES ('Cardiology'), ('Neurology'), ('Orthopedics');


INSERT INTO Doctor (doctor_name, specialization, phone, dept_id)
VALUES 
('Dr. Sharma', 'Heart Specialist', '9876543210', 1),
('Dr. Mehta', 'Neuro Surgeon', '9123456789', 2);


INSERT INTO Patient (patient_name, age, gender, phone, address)
VALUES 
('Rahul Verma', 30, 'Male', '9000000001', 'Delhi'),
('Anita Singh', 25, 'Female', '9000000002', 'Mumbai');

SELECT * FROM Patient;

SELECT d.doctor_name, d.specialization, dept.dept_name FROM Doctor d
JOIN Department dept ON d.dept_id = dept.dept_id;

SELECT p.patient_name, a.appointment_date, a.appointment_time, d.doctor_name FROM Appointment a
JOIN Patient p ON a.patient_id = p.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id;

SELECT p.patient_name, SUM(b.amount) AS total_bill FROM Billing b
JOIN Patient p ON b.patient_id = p.patient_id
GROUP BY p.patient_name;



SELECT DISTINCT p.patient_name FROM Treatment t JOIN Patient p ON t.patient_id = p.patient_id
WHERE t.doctor_id = 1;

SELECT doctor_name FROM Doctor WHERE doctor_id NOT IN ( SELECT doctor_id FROM Appointment);

SELECT patient_id, MAX(amount) FROM Billing;

SELECT * FROM  Hospital_Management;



