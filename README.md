# 🏥 Hospital Management System — SQL Project

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

## 📌 Project Overview

A **MySQL** relational database for a hospital, built to practise database design, data management, and querying.
It models patients, doctors, departments, appointments, medical records, and billing, with sample data and queries for real-world use cases.

## 🗂️ Database Schema

| Table | Description |
| --- | --- |
| `Patients` | Patient details: name, gender, date of birth, phone, address |
| `Departments` | Hospital departments and what they treat |
| `Doctors` | Doctors, their specialization, contact details, and department |
| `Appointments` | Links patients to doctors, with date, time, and status (Scheduled / Completed / Cancelled) |
| `Medical_Records` | Diagnosis and treatment per patient visit |
| `Bills` | Billing amount, date, and payment status (Paid / Pending) |

The EER diagram is in `HMS.mwb` (open it with MySQL Workbench).

## ⚡ What's Covered

- ✅ **Database design** – tables with primary keys, foreign keys, and `ENUM` types
- ✅ **Data insertion** – sample records for every table
- ✅ **Queries** – `SELECT`, `WHERE`, `ORDER BY`, `JOIN`s, `GROUP BY` with aggregations
- ✅ **Data changes** – `UPDATE` and `DELETE`

## 📊 Sample Queries

```sql
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
```

## 🔗 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/Aniketgupta149/Hospital-management-system.git
   ```
2. Open `Hospital Management  System.sql` in **MySQL Workbench** (or run it with the MySQL CLI).
3. Run the script to create the `Hospital_Management_System` schema, then explore the queries at the end of the file.

## 🎯 Learning Outcomes

- Designing relational schemas
- Writing multi-table queries
- Data manipulation and reporting
- Applying SQL to real-world business logic

💡 This project is part of my journey into Data Analytics & Data Science, where SQL plays a vital role in data extraction and transformation.

## 👨‍💻 Author

**Aniket Gupta**
- 🌐 [Portfolio](https://aniket-portfolio149.web.app/)
- 💼 [LinkedIn](https://www.linkedin.com/in/aniket-gupta-b44611261)
- 🐙 [GitHub](https://github.com/Aniketgupta149)

## 📜 License

This project is licensed under the [MIT License](LICENSE).
