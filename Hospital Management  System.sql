Create Schema Hospital_Management_System;
Use Hospital_Management_System;

-- (Table of Patients) --
CREATE TABLE Patients (
    Patient_id int primary key auto_increment,
    name varchar(100),
    Gender ENUM('Male', 'Female', 'Other'),
    Dob DATE,
    Phone varchar(15),
    Address varchar(200)
);

INSERT INTO Patients (Patient_id,name, gender, dob, phone, address) VALUES
( 1 ,'Rohan Sharma', 'Male', '1990-05-12', '9001122334', 'Delhi'),
( 2 ,'Priya Singh', 'Female', '1988-11-23', '9877665544', 'Mumbai'),
( 3 ,'Amit Patel', 'Male', '1995-07-15', '9123456780', 'Ahmedabad'),
( 4,'Simran Kaur', 'Female', '1993-09-02', '9234567890', 'Chandigarh'),
( 5 ,'Manish Yadav', 'Male', '1985-02-18', '9345678901', 'Lucknow'),
( 6 ,'Neha Gupta', 'Female', '1998-06-21', '9456789012', 'Bhopal'),
( 7 ,'Rahul Verma', 'Male', '1991-04-30', '9567890123', 'Jaipur'),
( 8 ,'Sneha Kapoor', 'Female', '1994-08-25', '9678901234', 'Pune'),
( 9 ,'Vikram Chauhan', 'Male', '1987-01-10', '9789012345', 'Hyderabad'),
( 10 ,'Pooja Nair', 'Female', '1999-12-12', '9890123456', 'Kochi');
select * from Patients;

-- (Table of Departments)--
CREATE TABLE Departments (
    Department_id int primary key auto_increment,
    Name varchar(100),
    description varchar(255)
);
INSERT INTO Departments (Department_id , name, description) VALUES
( 201 ,'Cardiology', 'Heart related treatments'),
( 202 ,'Neurology', 'Brain and nervous system treatments'),
( 203 ,'Orthopedics', 'Bone and joint treatments'),
( 204 ,'Pediatrics', 'Child healthcare'),
( 205 ,'Dermatology', 'Skin treatments'),
( 206 ,'General Medicine', 'General health check-ups'),
( 207 ,'Gynecology', 'Women health care'),
( 208 ,'Oncology', 'Cancer treatments'),
( 209 ,'ENT', 'Ear, Nose and Throat treatments'),
( 210 ,'Psychiatry', 'Mental health treatments');
select * from Departments;

-- (Table of Doctors) --
CREATE TABLE Doctors (
    Doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    Department_id INT,
    Specialization varchar(100),
    Phone varchar(15),
    Email varchar(100),
    foreign key (department_id) references Departments(department_id)
);

INSERT INTO Doctors (doctor_id, name, department_id, specialization, phone, email) VALUES
( 301 , 'Dr. Amit Mehra', 201 , 'Interventional Cardiologist', '9123456789', 'amit@hospital.com'),
( 302 , 'Dr. Neha Kapoor',  202 , 'Neurosurgeon', '9876543210', 'neha@hospital.com'),
( 303 , 'Dr. Rajesh Verma',  203 , 'Orthopedic Surgeon', '9012345678', 'rajesh@hospital.com'),
( 304 , 'Dr. Pooja Sharma',  204 , 'Pediatrician', '9345678901', 'pooja@hospital.com'),
( 305 , 'Dr. Karan Malhotra',  205 , 'Dermatologist', '9456789012', 'karan@hospital.com'),
( 306 , 'Dr. Ritu Sinha',  206 , 'General Physician', '9567890123', 'ritu@hospital.com'),
( 307 , 'Dr. Sneha Jain', 207 , 'Gynecologist', '9678901234', 'sneha@hospital.com'),
( 308 , 'Dr. Ashok Gupta',  208 , 'Oncologist', '9789012345', 'ashok@hospital.com'),
( 309 , 'Dr. Vivek Rao',  209 , 'ENT Specialist', '9890123456', 'vivek@hospital.com'),
( 310 , 'Dr. Anjali Mehta',  210 , 'Psychiatrist', '9901234567', 'anjali@hospital.com');
select * from Doctors;

-- (Table of Appointments)--
CREATE TABLE Appointments (
    Appointment_id int primary key auto_increment,
    Patient_id INT,
    Doctor_id INT,
    Appointment_date DATE,
    Appointment_time TIME,
    Status ENUM('Scheduled', 'Completed', 'Cancelled'),
	foreign key (patient_id) references Patients(patient_id),
	foreign key (doctor_id) references Doctors(doctor_id)
);
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status) VALUES
( 401 , 1,  301 , '2025-08-14', '10:00:00', 'Scheduled'),
( 402, 2,  302 , '2025-08-15', '14:00:00', 'Scheduled'),
( 403, 3,  303 , '2025-08-13', '09:30:00', 'Completed'),
( 404, 4,  304 , '2025-08-12', '11:15:00', 'Completed'),
( 405, 5,  305 , '2025-08-14', '15:45:00', 'Scheduled'),
( 406, 6,  306 , '2025-08-10', '10:30:00', 'Completed'),
( 407, 7,  307 , '2025-08-16', '12:00:00', 'Scheduled'),
( 408, 8,  308 , '2025-08-09', '14:45:00', 'Completed'),
( 409, 9,  309 , '2025-08-11', '16:00:00', 'Cancelled'),
( 410, 10,  310 , '2025-08-17', '09:00:00', 'Scheduled');
select * from Appointments;


-- (Table of Medical Records) --
CREATE TABLE Medical_Records (
    Record_id int primary key auto_increment,
    Patient_id INT,
    Doctor_id INT,
    Diagnosis TEXT,
    Treatment TEXT,
    Record_date DATE,
	foreign key (patient_id) references Patients(patient_id),
    foreign key (doctor_id) references Doctors(doctor_id)
);

INSERT INTO Medical_Records (record_id, patient_id, doctor_id, diagnosis, treatment, record_date) VALUES
( 501 , 1,  301, 'High Blood Pressure', 'Lifestyle changes and medication', '2025-08-12'),
( 502, 2,  302, 'Migraine', 'Pain relief medication and relaxation therapy', '2025-08-15'),
( 503, 3,  303, 'Fractured Arm', 'Casting and rest', '2025-08-13'),
( 504, 4,  304, 'Flu', 'Rest, fluids, and antiviral medication', '2025-08-12'),
( 505, 5,  305, 'Skin Allergy', 'Antihistamines and cream', '2025-08-14'),
( 506, 6,  306, 'Viral Fever', 'Paracetamol and hydration', '2025-08-10'),
( 507, 7,  307, 'Pregnancy Check-up', 'Routine tests and vitamins', '2025-08-16'),
( 508, 8,  308, 'Breast Cancer', 'Chemotherapy and surgery', '2025-08-09'),
( 509, 9,  309, 'Ear Infection', 'Antibiotic ear drops', '2025-08-11'),
( 510, 10,  310, 'Anxiety Disorder', 'Cognitive behavioral therapy', '2025-08-17');
Select * from Medical_Records;


-- (Table of Bills) --
CREATE TABLE Bills (
    Bill_id int primary key auto_increment,
    Patient_id int,
    Amount DECIMAL(10,2),
    Payment_status ENUM('Paid', 'Pending'),
    Bill_date DATE,
	foreign key (patient_id) references Patients(patient_id)
);

INSERT INTO Bills (bill_id, patient_id, amount, payment_status, bill_date) VALUES
( 601 , 1, 2500.00, 'Paid', '2025-08-12'),
( 602, 2, 1800.00, 'Pending', '2025-08-15'),
( 603, 3, 5000.00, 'Paid', '2025-08-13'),
( 604, 4, 1200.00, 'Paid', '2025-08-12'),
( 605, 5, 900.00, 'Pending', '2025-08-14'),
( 606, 6, 1500.00, 'Paid', '2025-08-10'),
( 607, 7, 3000.00, 'Pending', '2025-08-16'),
( 608, 8, 20000.00, 'Paid', '2025-08-09'),
( 609, 9, 800.00, 'Paid', '2025-08-11'),
( 610, 10, 3500.00, 'Pending', '2025-08-17');
Select * from bills;


 -- Display the details of all patients stored in the hospital database. --
select * from Patients;

-- Display the  patient name and Address with respect of Gender. --
Select name , Address 
from Patients
where Gender = 'Male';

-- Display the deparment id those name start with "G"
Select name
from Departments
where name like "%G%";

-- Show only patient names and phone numbers
select name, phone FROM Patients;

-- Show female patients
select name, address FROM Patients where gender = 'Female';

-- Patients living in 'Delhi'
select name FROM Patients where address = 'Delhi';

-- Patients born after 1995
select name, dob FROM Patients where dob > '1995-01-01';
select count(name) FROM Patients where dob < '1995-01-01';
select name, dob FROM Patients where dob < '1995-01-01';

-- List patients sorted by name
select name, dob from Patients order by  name ASC;

-- Show bills sorted by amount (highest first)
select patient_id, amount from Bills order by amount DESC;

-- List all unique genders in Patients
select distinct gender from Patients;

-- Show patients from Delhi, Mumbai, or Jaipur
select name, address from Patients 
where address in ('Delhi', 'Mumbai', 'Jaipur');

Start transaction;
-- Update phone number of patient id=1
UPDATE Patients SET phone = '9999999999' WHERE patient_id = 1;

-- Delete a cancelled appointment
DELETE FROM Appointments WHERE status = 'Cancelled';
rollback;

-- Show doctor name with department
select d.name AS Doctor, dept.name AS Department
from Doctors d
join Departments dept On d.department_id = dept.department_id;

-- Show appointment details with patient & doctor names
select a.appointment_id, p.name AS Patient, d.name AS Doctor, a.status
from Appointments a
join Patients p On a.patient_id = p.patient_id
join Doctors d On a.doctor_id = d.doctor_id;

-- Total revenue from paid bills
select SUM(amount) AS Total_Revenue from Bills where payment_status='Paid';

-- Show doctors with more than or equal to 1 scheduled appointment
select d.name, COUNT(a.appointment_id) AS Total_Appointments
from Appointments a
join Doctors d ON a.doctor_id = d.doctor_id
where a.status = 'Scheduled'
GROUP BY d.name
HAVING COUNT(a.appointment_id) >= 1;




















