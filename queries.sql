SELECT * FROM Patients;
SELECT d.name AS doctor_name , d.specialty, dep.name AS Department
FROM Doctors d 
JOIn Departments dep ON d.department_id = dep.department_id;

SELECT a.date , a.time, p.name AS patient_name
FROM Appointments a 
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
WHERE d.name = 'Dr.Smith';