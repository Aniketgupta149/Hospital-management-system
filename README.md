🗄️ SQL Project – Hospital Management System
📌 Project Overview

This project is a SQL-based Hospital Management System designed to demonstrate database creation, management, and querying skills.
It includes tables, relationships, and queries that showcase practical applications of SQL in a real-world scenario.

⚡ Features

✅ Database Design – Created tables for patients, doctors, appointments, billing, etc.

✅ Data Insertion – Populated tables with sample records.

✅ SQL Queries –

SELECT, WHERE, ORDER BY

JOINs (INNER, LEFT, RIGHT)

GROUP BY & Aggregations

UPDATE, DELETE, ALTER

Window Functions

✅ Use-Case Based Queries – Example: Fetch male patients, calculate bills, track appointments.

🛠️ Technologies Used

SQL (MySQL / MariaDB / PostgreSQL – choose the one you used)

Sample relational schema

📊 Sample Queries
-- Display patient name and address where gender is Male
SELECT name, address 
FROM Patients 
WHERE Gender = 'Male';

-- Find the number of patients per doctor
SELECT d.name AS Doctor, COUNT(p.Patient_id) AS Total_Patients
FROM Doctors d
JOIN Appointments a ON d.Doctor_id = a.Doctor_id
JOIN Patients p ON a.Patient_id = p.Patient_id
GROUP BY d.name;

🎯 Learning Outcomes

Through this project, I gained hands-on experience in:

Designing relational schemas

Writing complex queries

Data manipulation & reporting

Applying SQL for real-world business logic

🔗 How to Use

Clone the repository or download the .sql file.

Import it into your SQL environment (MySQL Workbench / pgAdmin / CLI).

Run the queries to explore the database and results.

💡 This project is part of my journey into Data Analytics & Data Science, where SQL plays a vital role in data extraction and transformation.
