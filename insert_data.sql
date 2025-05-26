-- Step 1: Drop old tables if they exist (clean start)
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Patients;
DROP TABLE IF EXISTS Departments;

-- Step 2: Create tables
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialty VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    date DATE,
    time TIME,
    reason VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- Step 3: Insert data
INSERT INTO Departments VALUES (1, 'Cardiology');
INSERT INTO Departments VALUES (2, 'Neurology');

INSERT INTO Doctors VALUES (1, 'Dr. Smith', 'Cardiologist', 1);
INSERT INTO Doctors VALUES (2, 'Dr. Jones', 'Neurologist', 2);

INSERT INTO Patients VALUES (1, 'Alice', 30, 'Female');
INSERT INTO Patients VALUES (2, 'Bob', 45, 'Male');

INSERT INTO Appointments VALUES (1, 1, 1, '2025-06-01', '10:00:00', 'Chest pain');
INSERT INTO Appointments VALUES (2, 2, 2, '2025-06-02', '11:30:00', 'Headache');
