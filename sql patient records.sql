--- SQL Hospital Patients Records 
CREATE SCHEMA hospital_records;

USE hospital_records;


--- Create TABLE

CREATE TABLE Patients (
    Patient_id TEXT ,
    Name TEXT NOT NULL,
    Date_of_birth DATE NOT NULL,
    Gender TEXT CHECK (Gender IN ('Male', 'Female', 'Other')),
    Medical_condition TEXT NOT NULL,
    Treatments TEXT,
    Doctors_note TEXT,
    Admit_date DATE NOT NULL,
    Discharge_date DATE,
    Bill_amount FLOAT CHECK (Bill_amount >= 0)
);



--- Inserting the data into the table

INSERT INTO Patients (Patient_id, Name, Date_of_birth, Gender, Medical_condition, Treatments, Doctors_note, Admit_date, Discharge_date, Bill_amount) VALUES
('P001', 'John Doe', '1980-05-14', 'Male', 'Hypertension', 'Medication', 'Monitor blood pressure daily', '2024-01-01', '2024-01-05', 1200.50),
('P002', 'Jane Smith', '1990-07-22', 'Female', 'Diabetes', 'Insulin Therapy', 'Diet control required', '2024-01-02', '2024-01-08', 2500.00),
('P003', 'Alice Brown', '1975-03-11', 'Female', 'Fracture', 'Surgery and Physical Therapy', 'Regular physiotherapy recommended', '2024-01-03', '2024-01-15', 7500.75),
('P004', 'Bob Johnson', '2000-11-05', 'Male', 'Asthma', 'Inhaler Treatment', 'Avoid allergens', '2024-01-10', '2024-01-12', 800.00),
('P005', 'Emily Davis', '1985-06-19', 'Female', 'Hypertension', 'Lifestyle changes', 'Exercise regularly', '2024-02-01', '2024-02-05', 1000.00),
('P006', 'Michael Wilson', '1970-03-22', 'Male', 'Arthritis', 'Medication', 'Joint exercises recommended', '2024-02-10', '2024-02-15', 3000.00),
('P007', 'Sarah Lee', '1995-08-13', 'Female', 'Migraine', 'Painkillers and Therapy', 'Track headache triggers', '2024-03-01', '2024-03-05', 1500.00),
('P008', 'Chris Martin', '1982-12-01', 'Male', 'Back Pain', 'Physical Therapy', 'Improve posture', '2024-03-10', '2024-03-20', 2200.50),
('P009', 'Laura White', '1978-07-09', 'Female', 'Pneumonia', 'Antibiotics', 'Complete prescribed course', '2024-04-01', '2024-04-10', 5000.00),
('P010', 'Daniel Green', '1969-11-25', 'Male', 'Heart Disease', 'Surgery', 'Follow up with cardiologist', '2024-04-15', '2024-04-25', 12000.75),
('P011', 'Sophia Moore', '1992-06-05', 'Female', 'Allergy', 'Antihistamines', 'Avoid pollen and dust', '2024-05-01', '2024-05-03', 800.00),
('P012', 'Liam Garcia', '1988-09-12', 'Male', 'Flu', 'Rest and Hydration', 'Stay hydrated and rest', '2024-05-02', '2024-05-06', 600.00),
('P013', 'Isabella Martinez', '1977-01-25', 'Female', 'Kidney Stone', 'Surgery', 'Regular follow-ups recommended', '2024-06-10', '2024-06-15', 8000.00),
('P014', 'Noah Hernandez', '1965-12-19', 'Male', 'Cancer', 'Chemotherapy', 'Regular sessions and tests', '2024-06-20', '2024-07-15', 25000.00),
('P015', 'Mason Clark', '1983-03-09', 'Male', 'Hypertension', 'Lifestyle Changes', 'Exercise and diet control', '2024-07-01', '2024-07-05', 1100.00),
('P016', 'Ava Lewis', '1999-02-28', 'Female', 'Bronchitis', 'Antibiotics and Rest', 'Complete medication course', '2024-07-10', '2024-07-15', 2000.00),
('P017', 'Oliver Walker', '1971-05-15', 'Male', 'Stroke', 'Rehabilitation', 'Speech and physical therapy', '2024-08-01', '2024-08-20', 18000.00),
('P018', 'Emma Hall', '1984-10-07', 'Female', 'Thyroid Disorder', 'Medication', 'Regular blood tests', '2024-08-15', '2024-08-18', 3000.00),
('P019', 'James Allen', '1960-11-23', 'Male', 'Parkinson Disease', 'Therapy', 'Monitor progression closely', '2024-09-05', '2024-09-10', 7000.00),
('P020', 'Mia Young', '1993-04-17', 'Female', 'Anemia', 'Iron Supplements', 'Increase dietary iron intake', '2024-09-15', '2024-09-20', 500.00),
('P021', 'Ethan King', '1987-06-13', 'Male', 'Ulcer', 'Antacids', 'Avoid spicy foods', '2024-10-01', '2024-10-05', 1200.00),
('P022', 'Charlotte Wright', '1991-03-25', 'Female', 'Hypertension', 'Lifestyle Changes', 'Monitor blood pressure daily', '2024-10-10', '2024-10-15', 1500.00),
('P023', 'Logan Scott', '1982-07-08', 'Male', 'Arthritis', 'Physiotherapy', 'Joint exercise regularly', '2024-11-01', '2024-11-10', 3200.00),
('P024', 'Amelia Adams', '1974-09-30', 'Female', 'Asthma', 'Inhalers', 'Avoid allergens', '2024-11-15', '2024-11-18', 900.00),
('P025', 'Elijah Baker', '1968-08-22', 'Male', 'Diabetes', 'Insulin Therapy', 'Maintain sugar levels', '2024-12-01', '2024-12-10', 2000.00),
('P026', 'Harper Nelson', '1996-12-05', 'Female', 'Fracture', 'Surgery', 'Physiotherapy for recovery', '2024-12-15', '2024-12-25', 9000.00),
('P027', 'Lucas Carter', '1980-01-11', 'Male', 'Heart Disease', 'Bypass Surgery', 'Follow-ups needed', '2025-01-01', '2025-01-20', 22000.00),
('P028', 'Evelyn Mitchell', '1985-11-29', 'Female', 'Anemia', 'Iron Supplements', 'Diet improvement', '2025-01-15', '2025-01-20', 1000.00),
('P029', 'William Perez', '1990-04-12', 'Male', 'Kidney Infection', 'Antibiotics', 'Stay hydrated', '2025-02-01', '2025-02-07', 3000.00),
('P030', 'Abigail Roberts', '1979-06-18', 'Female', 'Pneumonia', 'Antibiotics', 'Regular check-ups', '2025-02-15', '2025-02-25', 8000.00),
('P031', 'Benjamin Evans', '1986-09-03', 'Male', 'Cholesterol', 'Medication', 'Regular exercise recommended', '2025-03-01', '2025-03-05', 1500.00),
('P032', 'Lily Turner', '1993-11-14', 'Female', 'Skin Allergy', 'Antihistamines', 'Avoid allergens', '2025-03-10', '2025-03-12', 700.00),
('P033', 'Samuel Rivera', '1975-02-06', 'Male', 'Diabetes', 'Insulin Therapy', 'Monitor blood sugar daily', '2025-03-15', '2025-03-20', 2000.00),
('P034', 'Grace Collins', '1989-05-22', 'Female', 'Migraine', 'Painkillers', 'Track headache triggers', '2025-04-01', '2025-04-05', 1200.00),
('P035', 'Henry Murphy', '1997-07-18', 'Male', 'Asthma', 'Inhaler Treatment', 'Avoid dust and pollen', '2025-04-10', '2025-04-12', 800.00),
('P036', 'Zoe Foster', '1982-08-25', 'Female', 'Hypertension', 'Lifestyle Changes', 'Regular exercise and diet control', '2025-04-15', '2025-04-20', 1500.00),
('P037', 'Jacob Sanders', '1974-12-30', 'Male', 'Fracture', 'Surgery and Physical Therapy', 'Physiotherapy for recovery', '2025-05-01', '2025-05-10', 7500.00),
('P038', 'Chloe Brooks', '1990-03-07', 'Female', 'Thyroid Disorder', 'Medication', 'Regular follow-ups required', '2025-05-15', '2025-05-20', 3000.00),
('P039', 'Evan Reed', '1968-09-10', 'Male', 'Stroke', 'Rehabilitation', 'Speech and physical therapy', '2025-06-01', '2025-06-20', 18000.00),
('P040', 'Ellie Powell', '1995-11-28', 'Female', 'Anemia', 'Iron Supplements', 'Improve dietary iron intake', '2025-06-15', '2025-06-20', 500.00),
('P041', 'Nathan Bell', '1983-04-14', 'Male', 'Back Pain', 'Physical Therapy', 'Improve posture and core strength', '2025-07-01', '2025-07-10', 2200.00),
('P042', 'Sophie Cook', '1987-06-09', 'Female', 'Allergy', 'Antihistamines', 'Avoid known allergens', '2025-07-15', '2025-07-18', 900.00),
('P043', 'Aaron Morgan', '1999-01-03', 'Male', 'Flu', 'Rest and Hydration', 'Stay hydrated', '2025-08-01', '2025-08-05', 600.00),
('P044', 'Stella Cox', '1976-02-19', 'Female', 'Kidney Stone', 'Surgery', 'Regular check-ups needed', '2025-08-10', '2025-08-15', 8000.00),
('P045', 'Leo Jenkins', '1981-10-23', 'Male', 'Cancer', 'Chemotherapy', 'Follow-up sessions required', '2025-09-01', '2025-09-25', 25000.00),
('P046', 'Victoria Perry', '1992-12-17', 'Female', 'Bronchitis', 'Antibiotics', 'Complete medication course', '2025-10-01', '2025-10-10', 2000.00),
('P047', 'Sebastian Foster', '1969-03-15', 'Male', 'Parkinson Disease', 'Therapy', 'Monitor closely', '2025-10-15', '2025-10-20', 7000.00),
('P048', 'Isla Bryant', '1988-01-08', 'Female', 'Ulcer', 'Antacids', 'Avoid spicy foods', '2025-11-01', '2025-11-05', 1200.00),
('P049', 'Julian Hayes', '1970-05-27', 'Male', 'Heart Disease', 'Surgery', 'Follow up with cardiologist', '2025-11-10', '2025-11-25', 12000.00),
('P050', 'Clara James', '1994-09-15', 'Female', 'Pneumonia', 'Antibiotics', 'Complete prescribed course', '2025-12-01', '2025-12-10', 5000.00);

SELECT * FROM patients;


--- Total number of data present in the table

SELECT  COUNT(*) 
    FROM patients;
    
    
--- Data Cleaning ---
--- Check for NULL Values in Each Column

SELECT 
    COUNT(*) AS Total_Rows,
    SUM(CASE WHEN Patient_id IS NULL THEN 1 ELSE 0 END) AS Null_Patient_id,
    SUM(CASE WHEN Name IS NULL THEN 1 ELSE 0 END) AS Null_Name,
    SUM(CASE WHEN Date_of_birth IS NULL THEN 1 ELSE 0 END) AS Null_Date_of_birth,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Null_Gender,
    SUM(CASE WHEN Medical_condition IS NULL THEN 1 ELSE 0 END) AS Null_Medical_condition,
    SUM(CASE WHEN Treatments IS NULL THEN 1 ELSE 0 END) AS Null_Treatments,
    SUM(CASE WHEN Doctors_note IS NULL THEN 1 ELSE 0 END) AS Null_Doctors_note,
    SUM(CASE WHEN Admit_date IS NULL THEN 1 ELSE 0 END) AS Null_Admit_date,
    SUM(CASE WHEN Discharge_date IS NULL THEN 1 ELSE 0 END) AS Null_Discharge_date,
    SUM(CASE WHEN Bill_amount IS NULL THEN 1 ELSE 0 END) AS Null_Bill_amount
FROM Patients;

--- List Rows with NULL Values

SELECT * 
FROM Patients
WHERE 
    Patient_id IS NULL OR
    Name IS NULL OR
    Date_of_birth IS NULL OR
    Gender IS NULL OR
    Medical_condition IS NULL OR
    Treatments IS NULL OR
    Doctors_note IS NULL OR
    Admit_date IS NULL OR
    Discharge_date IS NULL OR
    Bill_amount IS NULL;


--- Data Exploration ---
--- Analysis & Findings ---
--- Count the Number of Patients by Gender

SELECT 
    Gender, 
    COUNT(*) AS Patient_Count 
FROM Patients
GROUP BY Gender;



--- Average Bill Amount by Medical Condition

SELECT 
    Medical_condition,
    COUNT(*) AS Patient_Count,
    AVG(Bill_amount) AS Average_Bill_Amount,
    MAX(Bill_amount) AS Maximum_Bill_Amount,
    MIN(Bill_amount) AS Minimum_Bill_Amount
FROM Patients
GROUP BY Medical_condition
ORDER BY Average_Bill_Amount DESC;



--- Find the Most Frequent Medical Conditions

SELECT 
    Medical_condition, 
    COUNT(*) AS Frequency
FROM Patients
GROUP BY Medical_condition
ORDER BY Frequency DESC
LIMIT 5; -- Top 5 medical conditions


--- End of the Project



--- Check Total Revenue Generated by the Hospital

SELECT 
    SUM(Bill_amount) AS Total_Revenue
FROM Patients;



--- Patients Admitted in a Specific Time Period

SELECT * 
FROM Patients
WHERE Admit_date BETWEEN '2024-01-01' AND '2024-01-31';



--- Bill Amount Distribution

SELECT 
    CASE 
        WHEN Bill_amount < 1000 THEN 'Low (Below $1000)'
        WHEN Bill_amount BETWEEN 1000 AND 5000 THEN 'Medium ($1000-$5000)'
        ELSE 'High (Above $5000)'
    END AS Bill_Category,
    COUNT(*) AS Patient_Count
FROM Patients
GROUP BY Bill_Category;



--- Check for Duplicate Records

SELECT 
    Patient_id, 
    COUNT(*) AS Occurrences
FROM Patients
GROUP BY Patient_id
HAVING COUNT(*) > 1;


--- Total Revenue by Gender

SELECT 
    Gender, 
    SUM(Bill_amount) AS Total_Revenue, 
    AVG(Bill_amount) AS Avg_Revenue
FROM Patients
GROUP BY Gender;


--- Identify the Most Common Treatments

SELECT 
    Treatments, 
    COUNT(*) AS Treatment_Frequency
FROM Patients
GROUP BY Treatments
ORDER BY Treatment_Frequency DESC
LIMIT 5;



--- Find Patients with Specific Medical Conditions

SELECT * 
FROM Patients
WHERE Bill_amount > 10000
ORDER BY Bill_amount DESC;



--- Find Patients with Specific Medical Conditions

SELECT * 
FROM Patients
WHERE Medical_condition IN ('Diabetes', 'Hypertension');



--- Patients Whose Bills are Above Average

SELECT * 
FROM Patients
WHERE Bill_amount > (SELECT AVG(Bill_amount) FROM Patients);



--- Find Patients Treated by Specific Notes

SELECT * 
FROM Patients
WHERE Doctors_note LIKE '%Diet control%';



--- Correlation Between Gender and Medical Condition

SELECT 
    Gender, 
    Medical_condition, 
    COUNT(*) AS Patient_Count
FROM Patients
GROUP BY Gender, Medical_condition
ORDER BY Patient_Count DESC;



--- Patients Admitted but Never Discharged

SELECT * 
FROM Patients
WHERE Discharge_date IS NULL
ORDER BY Admit_date DESC;



--- Patients Whose Treatment Duration Exceeds 10 Days

SELECT 
    Patient_id, 
    Name, 
    Medical_condition, 
    Admit_date, 
    Discharge_date, 
    Discharge_date - Admit_date AS Duration
FROM Patients
WHERE Discharge_date - Admit_date > 10;














