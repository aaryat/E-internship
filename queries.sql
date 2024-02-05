use hms;
drop table bill;
drop table room;

create table bill(
	billNo int primary key auto_increment,
    PName varchar(45)

);
select * from bill;
select * from pharmacy;

create table Admin(
   aid int primary key auto_increment,
   aContact varchar(45),
   aName varchar(45)
);

select * from admin;
create table laboratory( 
 PName varchar(45) primary key ,   
 testname varchar(45),    
 testcharges varchar(45),   
 idPatient int,     
 foreign key(idPatient) references patient(idPatient) 
 );
 select * from laboratory;

create table receptionist (
	appointmentNo int primary key auto_increment,
    PName varchar(45),
    DName varchar(45),
    Atime time
    );
select * from receptionist;

create table medicalrecord(
	recordId int primary key auto_increment,
    drugs varchar(45),
    diagnos varchar(45),
    pdetails varchar(45),
    idPatient int,
    foreign key(idPatient) references patient(idPatient)

);
select * from medicalrecord;

create table insurance(
	aadharNo varchar(12) primary key,
    icompany varchar(40),
    start_date date,
    end_date date,
    idPatient int ,
    foreign key(idPatient) references patient(idPatient)
);

select * from insurance;

INSERT INTO patient (idPatient, PName, PAddress, PContactNo, PSex, Pdetails)
VALUES 
(1, 'Aarav Sharma', '123 Main Street', '9876543210', 'Male', 'Regular checkup'),
(2, 'Sanya Kapoor', '456 Oak Avenue', '8765432109', 'Female', 'Fever and cold symptoms'),
(3, 'Vivaan Singh', '789 Pine Lane', '7654321098', 'Male', 'Dental checkup'),
(4, 'Anika Patel', '321 Cedar Road', '6543210987', 'Female', 'Allergy consultation'),
(5, 'Arjun Mehra', '567 Elm Boulevard', '5432109876', 'Male', 'Pediatric visit'),
(6, 'Zara Khan', '890 Maple Drive', '4321098765', 'Female', 'Eye examination'),
(7, 'Aryan Verma', '234 Birch Court', '3210987654', 'Male', 'Annual physical'),
(8, 'Dia Reddy', '678 Willow Street', '2109876543', 'Female', 'Diabetes follow-up'),
(9, 'Rehan Kumar', '901 Pineapple Avenue', '1098765432', 'Male', 'Orthopedic consultation'),
(10, 'Avni Gupta', '345 Mango Lane', '9876543210', 'Female', 'ENT checkup');


INSERT INTO bill (billNo, PName)
VALUES 
(1, 'Aarav Sharma'),
(2, 'Sanya Kapoor'),
(3, 'Vivaan Singh'),
(4, 'Anika Patel'),
(5, 'Arjun Mehra'),
(6, 'Zara Khan'),
(7, 'Aryan Verma'),
(8, 'Dia Reddy'),
(9, 'Rehan Kumar'),
(10, 'Avni Gupta');

INSERT INTO laboratory (PName, testname, testcharges, idPatient)
VALUES 
('Aarav Sharma', 'Blood Test', '500 INR', 1),
('Sanya Kapoor', 'Urine Test', '300 INR', 2),
('Vivaan Singh', 'X-ray', '1000 INR', 3),
('Anika Patel', 'CBC Test', '400 INR', 4),
('Arjun Mehra', 'MRI Scan', '2000 INR', 5),
('Zara Khan', 'ECG', '250 INR', 6),
('Aryan Verma', 'Thyroid Test', '350 INR', 7),
('Dia Reddy', 'Cholesterol Test', '450 INR', 8),
('Rehan Kumar', 'Ultrasound', '800 INR', 9),
('Avni Gupta', 'Dengue Test', '600 INR', 10);

INSERT INTO medicalrecord (recordId, drugs, diagnos, pdetails, idPatient)
VALUES 
(1, 'Paracetamol', 'Common Cold', 'Prescription for flu symptoms', 1),
(2, 'Aspirin', 'Headache', 'Prescription for headache relief', 2),
(3, 'Amoxicillin', 'Sinus Infection', 'Prescription for antibiotic', 3),
(4, 'Ibuprofen', 'Back Pain', 'Prescription for pain management', 4),
(5, 'Omeprazole', 'Acid Reflux', 'Prescription for digestive issues', 5),
(6, 'Metformin', 'Diabetes', 'Prescription for diabetes control', 6),
(7, 'Atorvastatin', 'High Cholesterol', 'Prescription for cholesterol control', 7),
(8, 'Losartan', 'Hypertension', 'Prescription for blood pressure', 8),
(9, 'Warfarin', 'Blood Clot', 'Prescription for blood thinner', 9),
(10, 'Levothyroxine', 'Hypothyroidism', 'Prescription for thyroid disorder', 10);


INSERT INTO receptionist (appointmentNo, PName, DName, Atime)
VALUES 
(1, 'Aarav Sharma', 'Dr. Ravi Kumar', '09:00:00'),
(2, 'Sanya Kapoor', 'Dr. Neha Sharma', '09:30:00'),
(3, 'Vivaan Singh', 'Dr. Manoj Singh', '10:00:00'),
(4, 'Anika Patel', 'Dr. Priya Patel', '10:30:00'),
(5, 'Arjun Mehra', 'Dr. Anand Verma', '11:00:00'),
(6, 'Zara Khan', 'Dr. Shreya Khan', '11:30:00'),
(7, 'Aryan Verma', 'Dr. Sameer Reddy', '12:00:00'),
(8, 'Dia Reddy', 'Dr. Nisha Gupta', '12:30:00'),
(9, 'Rehan Kumar', 'Dr. Vikram Kumar', '13:00:00'),
(10, 'Avni Gupta', 'Dr. Aishwarya Gupta', '13:30:00');


INSERT INTO insurance (aadharNo, icompany, start_date, end_date, idPatient)
VALUES 
(111122223333, 'XYZ Insurance', '2023-01-01', '2024-01-01', 1),
(222233334444, 'ABC Insurance', '2023-02-01', '2024-02-01', 2),
(333344445555, 'PQR Insurance', '2023-03-01', '2024-03-01', 3),
(444455556666, 'LMN Insurance', '2023-04-01', '2024-04-01', 4),
(555566667777, 'JKL Insurance', '2023-05-01', '2024-05-01', 5),
(666677778888, 'DEF Insurance', '2023-06-01', '2024-06-01', 6),
(777788889999, 'GHI Insurance', '2023-07-01', '2024-07-01', 7),
(888899990000, 'MNO Insurance', '2023-08-01', '2024-08-01', 8),
(999900001111, 'UVW Insurance', '2023-09-01', '2024-09-01', 9),
(101112131415, 'RST Insurance', '2023-10-01', '2024-10-01', 10);

INSERT INTO pharmacy (idPharmacy, PName, PContactNo, Medicine, Amount, idPatient)
VALUES 
(1, 'Aarav Sharma', '9876543210', 'Paracetamol', 50, 1),
(2, 'Sanya Kapoor', '8765432109', 'Aspirin', 30, 2),
(3, 'Vivaan Singh', '7654321098', 'Amoxicillin', 40, 3),
(4, 'Anika Patel', '6543210987', 'Ibuprofen', 25, 4),
(5, 'Arjun Mehra', '5432109876', 'Omeprazole', 60, 5),
(6, 'Zara Khan', '4321098765', 'Metformin', 35, 6),
(7, 'Aryan Verma', '3210987654', 'Atorvastatin', 45, 7),
(8, 'Dia Reddy', '2109876543', 'Losartan', 55, 8),
(9, 'Rehan Kumar', '1098765432', 'Warfarin', 70, 9),
(10, 'Avni Gupta', '9876543210', 'Levothyroxine', 80, 10);


SELECT * FROM patient WHERE idPatient = 1;

-- Assuming you have a 'bill' table and 'medical_records' table
INSERT INTO bill (PName, total_amount)
SELECT PName, SUM(Amount) as total_amount
FROM pharmacy
WHERE idPatient = 1
GROUP BY PName;



SELECT p.*, m.diagnos, m.pdetails, m.recordId
FROM patient p
JOIN medicalrecord m ON p.idPatient = m.idPatient
WHERE p.idPatient = 4;


INSERT INTO bill (PName, amt)
SELECT PName, SUM(Amount) as amt
FROM pharmacy
WHERE idPatient = 1
GROUP BY PName;

-- Assuming you have a 'bill' table and 'medical_records' table
INSERT INTO bill (PName, amount)
SELECT PName, SUM(Amount)
FROM pharmacy
WHERE idPatient = 2
GROUP BY PName;

select * from bill;

-- Drop the foreign key if it exists
ALTER TABLE `hms`.`bill` 
DROP FOREIGN KEY `medicalrecordId`;

-- Modify the table structure
ALTER TABLE `hms`.`bill` 
DROP COLUMN `recordId`,
ADD COLUMN `medicalrecordId` INT NULL AFTER `amount`,
CHANGE COLUMN `billNo` `billNo` INT NOT NULL,
ADD INDEX `medicalrecordId_idx` (`medicalrecordId` ASC) VISIBLE,
DROP INDEX `idPatient_idx`;

-- Add a new foreign key
ALTER TABLE `hms`.`bill` 
ADD CONSTRAINT `fk_bill_medicalrecord`
  FOREIGN KEY (`medicalrecordId`)
  REFERENCES `hms`.`medicalrecord` (`recordId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
use hms;
INSERT INTO laboratory (labTestID, testname, testcharges, idPatientLab)
VALUES 
(1, 'Blood Test', 500, 1),
(2, 'X-Ray', 1000, 2),
(3, 'Urinalysis', 300, 3),
(4, 'MRI Scan', 2500, 4),
(5, 'ECG', 800, 5),
(6, 'CT Scan', 1500, 6),
(7, 'Ultrasound', 700, 7),
(8, 'Lipid Profile', 400, 8),
(9, 'Thyroid Function Test', 600, 9),
(10, 'Hemoglobin A1c Test', 350, 10);

select * from patient;
INSERT INTO medicalrecord (date)
VALUES 
('2024-02-05'),
('2024-02-06'),
('2024-02-07'),
('2024-02-08'),
('2024-02-09'),
('2024-02-10'),
('2024-02-11'),
('2024-02-12'),
('2024-02-13'),
('2024-02-14');



UPDATE medicalrecord
SET date = '2024-02-05'
WHERE idPatient = 1;

UPDATE medicalrecord
SET date = '2024-02-06'
WHERE idPatient = 2;

UPDATE medicalrecord
SET date = '2024-02-07'
WHERE idPatient= 3;

UPDATE medicalrecord
SET date = '2024-02-08'
WHERE idPatient = 4;

UPDATE medicalrecord
SET date = '2024-02-09'
WHERE idPatient = 5;

UPDATE medicalrecord
SET date = '2024-02-10'
WHERE idPatient= 6;

UPDATE medicalrecord
SET date = '2024-02-11'
WHERE idPatient = 7;

UPDATE medicalrecord
SET date = '2024-02-12'
WHERE idPatient= 8;

UPDATE medicalrecord
SET date = '2024-02-13'
WHERE idPatient = 9;

UPDATE medicalrecord
SET date = '2024-02-14'
WHERE idPatient = 10;


INSERT INTO patient (idPatient, PAddress, PContactNo, PName, PSex)
VALUES
(11, '123 Main Street, Mumbai, India', '+91 9876543210', 'Aarav Patel', 'Male'),
(12, '456 Street Avenue, Delhi, India', '+91 8765432109', 'Zara Singh', 'Female'),
(13, '789 Garden Road, Bangalore, India', '+91 7654321098', 'Ishaan Sharma', 'Male'),
(14, '101 River View, Kolkata, India', '+91 6543210987', 'Anaya Gupta', 'Female'),
(15, '234 Hillside Lane, Chennai, India', '+91 5432109876', 'Vihaan Kapoor', 'Male'),
(16, '567 Skyline Plaza, Hyderabad, India', '+91 4321098765', 'Avani Mehra', 'Female'),
(17, '890 Lakeside Drive, Pune, India', '+91 3210987654', 'Arjun Reddy', 'Male'),
(18, '1122 Valley Street, Ahmedabad, India', '+91 2109876543', 'Kavya Patel', 'Female'),
(19, '334 Park Avenue, Jaipur, India', '+91 1098765432', 'Advait Kumar', 'Male'),
(20, '556 Mountain View, Chandigarh, India', '+91 9876543210', 'Myra Choudhary', 'Female');

select * from patient;

select * from medicalrecord;

INSERT INTO medicalrecord (drugs, diagnos, pdetails, idPatient, date)
VALUES ('Paracetamol, Ibuprofen', 'Fever', 'Patient complaints of high temperature', 11, '2024-02-01');

select * from medicalrecord;

select * from patient where idPatient='1';
select * from patient;
select * from patient where PName='Aarav Sharma';

Select
    p.idPatient,
    p.PName,
    p.PAddress,
    p.PContactNo,
    SUM(m.Amount) AS totalBill
from
    patient p
join
    pharmacy m ON p.idPatient = m.idPatient
where
    p.idPatient = 1;
    
SELECT
    p.idPatient,
    p.PName,
    b.billNo,
    b.billamount
FROM
    patient p
LEFT JOIN
    bill b ON p.idPatient = b.idPatient;


INSERT INTO bill (billNo, PName, billamount, medicalRecordId)
VALUES 
(1, 'Aarav Sharma', 500, 1),
(2, 'Sanya Kapoor', 700, 2),
(3, 'Vivaan Singh', 600, 3),
(4, 'Anika Patel', 800, 4),
(5, 'Arjun Mehra', 900, 5),
(6, 'Zara Khan', 550, 6),
(7, 'Aryan Verma', 750, 7),
(8, 'Dia Reddy', 650, 8),
(9, 'Rehan Kumar', 700, 9),
(10, 'Avni Gupta', 600, 10);


select * from medicalrecord;

SELECT
    p.idPatient,
    p.PName,
    b.billNo,
    b.billamount
FROM
    patient p
LEFT JOIN
    bill b ON p.idPatient = b.idPatient;
    
SELECT
    p.idPatient,
    p.PName,
    m.recordID,
    m.drugs,
    m.diagnos,
    m.pdetails,
    b.billNo,
    b.billAmount
FROM
    patient p
INNER JOIN
    medicalrecord m ON p.idPatient = m.idPatient
INNER JOIN
    bill b ON m.medicalRecordId = b.medicalRecordId
LIMIT 0, 1000;


CREATE VIEW patient_view AS
SELECT
    idPatient,
    PName,
    PAddress,
    PContactNo,
    PSex
FROM
    patient;
    
SELECT * FROM patient_view WHERE PName = 'Aarav Sharma';

SET profiling=1;

SELECT * FROM patient WHERE PName = 'Aarav Sharma';


CREATE INDEX idx_patient_name ON patient (PName);

SELECT * FROM patient WHERE PName = 'Aarav Sharma';

use hms;

SET profiling=1;
select * from medicalrecord where recordid='1';
SHOW PROFILES;


SET profiling=1;
CREATE INDEX idx_medicalrecord_recordID ON medicalrecord (recordid);
SHOW PROFILES;

-- Creating a stored procedure for bill generation
DELIMITER //

CREATE PROCEDURE generateBillForPatient(IN patientID INT)
BEGIN
    DECLARE totalBill INT;

    SELECT COALESCE(SUM(charges), 0)
    INTO totalBill
    FROM medicalrecord
    WHERE idPatient = patientID;

    INSERT INTO bill (PName, billamount, medicalRecordId)
    VALUES (
        (SELECT PName FROM patient WHERE idPatient = patientID),
        totalBill,
        (SELECT recordID FROM medicalrecord WHERE idPatient = patientID LIMIT 1)
    );
END 

DELIMITER ;

-- Creating a stored procedure for bill generation
DELIMITER //

CREATE PROCEDURE generateBillForPatient(IN patientID INT)
BEGIN
    DECLARE totalBill INT;

    -- Calculate the total bill amount
    SELECT COALESCE(SUM(charges), 0)
    INTO totalBill
    FROM medicalrecord
    WHERE idPatient = patientID;

    -- Insert the generated bill into the 'bill' table
    INSERT INTO bill (PName, billamount, medicalRecordId)
    VALUES (
        (SELECT PName FROM patient WHERE idPatient = patientID),
        totalBill,
        (SELECT recordID FROM medicalrecord WHERE idPatient = patientID LIMIT 1)
    );
END //

DELIMITER ;

-- Creating a stored procedure for bill generation
DELIMITER //

CREATE PROCEDURE generateBillForPatient(IN patientID INT)
BEGIN
    DECLARE totalBill INT;

    -- Calculate the total bill amount
    SELECT COALESCE(SUM(charges), 0)
    INTO totalBill
    FROM medicalrecord
    WHERE idPatient = patientID;

    -- Insert the generated bill into the 'bill' table
    INSERT INTO bill (PName, billamount, medicalRecordId)
    VALUES (
        (SELECT PName FROM patient WHERE idPatient = patientID),
        totalBill,
        (SELECT recordID FROM medicalrecord WHERE idPatient = patientID LIMIT 1)
    );
END; //

DELIMITER ;

-- Trigger to check insurance coverage before inserting a medical record
DELIMITER 

CREATE TRIGGER before_insert_medicalrecord
BEFORE INSERT ON medicalrecord
FOR EACH ROW
BEGIN
    DECLARE insurance_limit DECIMAL(10,2);

    -- Get the insurance coverage limit for the patient
    SELECT coverageLimit
    INTO insurance_limit
    FROM insurance
    WHERE idPatient = NEW.idPatient;

    -- Check if the coverage limit is exceeded
    IF insurance_limit <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insurance coverage limit exceeded. Cannot insert medical record.';
    END IF;
END 

DELIMITER ;

-- Trigger to check insurance coverage before updating a medical record
DELIMITER 

CREATE TRIGGER before_update_medicalrecord
BEFORE UPDATE ON medicalrecord
FOR EACH ROW
BEGIN
    DECLARE insurance_limit DECIMAL(10,2);

    -- Get the insurance coverage limit for the patient
    SELECT coverageLimit
    INTO insurance_limit
    FROM insurance
    WHERE idPatient = NEW.idPatient;

    -- Check if the coverage limit is exceeded
    IF insurance_limit <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insurance coverage limit exceeded. Cannot update medical record.';
    END IF;
END 

DELIMITER ;



-- Creating a stored procedure for bill generation
DELIMITER //

CREATE PROCEDURE generateBillForMedicalRecord2(IN medicalRecordID INT)
BEGIN
    DECLARE totalAmount INT;

    -- Calculate the total amount for the medical record
    SELECT COALESCE(SUM(billamount), 0)
    INTO totalAmount
    FROM medicalrecord
    WHERE recordid = medicalRecordID;

    -- Insert the generated bill into the 'bill' table
    INSERT INTO bill (recordid, PName, billamount)
    SELECT
        m.recordid,
        p.PName,
        totalAmount
    FROM
        medicalrecord m
    JOIN
        patient p ON m.idPatient = p.idPatient
    WHERE
        m.recordid = medicalRecordID;
END //

DELIMITER ;

INSERT INTO bill (billNo, PName, amount, medicalRecordId)
VALUES 
(1, 'Aarav Sharma', 500, 101),
(2, 'Sanya Kapoor', 700, 102),
(3, 'Vivaan Singh', 600, 103),
(4, 'Anika Patel', 800, 104),
(5, 'Arjun Mehra', 900, 105),
(6, 'Zara Khan', 550, 106),
(7, 'Aryan Verma', 750, 107),
(8, 'Dia Reddy', 650, 108),
(9, 'Rehan Kumar', 700, 109),
(10, 'Avni Gupta', 600, 110);

select * from medicalrecord;
CALL generateBillForMedicalRecord(1);











