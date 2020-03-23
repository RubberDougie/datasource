CREATE TABLE Patient
( 
                 PID INT NOT NULL,
	  FirstName VARCHAR (20) NOT NULL,
	  MName VARCHAR (20),
	  Surname VARCHAR (20) NOT NULL,
	  Title VARCHAR (5),
               SocialSecurity VARCHAR (13),
	  Sex CHAR (1)  CHECK ( Sex IN  ('F', 'M', 'I')),
	  DOB  DATE,
	  PhoneNumber VARCHAR (20),
	  Address VARCHAR (30),
	  City VARCHAR (20),
	  State VARCHAR (2),
	  Zipcode VARCHAR (10),
	  County VARCHAR (20),
                 InsuranceCompany VARCHAR (35),
	  InsuranceNumber VARCHAR (30),
	 BloodType VARCHAR (10),
	RiskOfHeartDisease CHAR (1) CHECK (RiskOfHeartDisease IN ('N', 'L', 'M', 'H')),
	ActivePatient BIT NOT NULL DEFAULT 1,
	  PRIMARY KEY (PID) 
  );


INSERT INTO Patient
VALUES (1, 'Abigail', 'Lynn', 'Anderson', 'Ms.', '231-32-5167', 'F', '1953-12-01', '1-555-555-5532', '1 Hungree Place', 'Hamburg', 'NJ', '08512', 'Mercer', null, null, 'O-', 'M', 1);

INSERT INTO Patient
VALUES (2, 'Belinda', 'Flower', 'Bond', 'Ms.', null, 'F', '1993-03-02', '1-609-432-1111', '324 Middeleford Lane', 'Middleton', 'NJ', '08520', 'Mercer', null, null, 'B+', 'N', 1);

INSERT INTO Patient
VALUES (3, 'Curtis', null, 'Campbel', 'Mr.', '832-32-1245', 'M', '1985-07-03', '1-489-411-3411', '8921A Highrise B', 'New York City', 'NY', '03317', 'NewYorkCounty', 'Aetna', '389210', 'B+', 'N', 1);

INSERT INTO Patient
VALUES (4, 'Donald', 'Daffodil', 'Duck', 'Mr.', null, 'M', '1911-01-04', null, '1 Etra Park', 'East Windsor', 'NJ', '08520', 'Mercer', 'AFLAC', '000000001', null, 'N', 1);

INSERT INTO Patient
VALUES (5, 'Earl', null, 'Ericcson', 'Mr.', '992-31-1993', 'M', '1989-08-05', '1-348-444-4444', '453 Number1 RV Camp', 'Robbinsville', 'NJ', '08321', 'Mercer', 'Horizon BlueCross BlueShield', '324661', 'B', 'N', 1);

INSERT INTO Patient
VALUES (6, 'Felicia', 'Maryanne', 'Folger', 'Mrs.', '621-34-1662', 'F', '1978-09-06', null, '42 Wendover Road', 'East Windsor', 'NJ', '08520', 'Mercer',  'WellCare of New Jersey', '2348923', 'O', 'N', 1);

INSERT INTO Patient
VALUES (7, 'Gertrude', 'Goiter', 'Grumpyface', 'Ms.', '930-11-3214', 'F', '1992-08-07', '1-444-442-2155', '29 Allerton Drive', 'East Windsor', 'NJ', '08520', 'Mercer', 'Aetna', '289103', 'B', 'N', 1);

INSERT INTO Patient
VALUES (8, 'Hilda', 'Fiona', 'Hamilton', 'Ms.', '888-88-8261', 'F', '1934-12-08', '1-333-334-3423', '17 Wendover Road', 'East Windsor', 'NJ', '08520', 'Mercer', 'Great Insurance', '301115', 'B', 'N', 1);

INSERT INTO Patient
VALUES (9, 'Ingrid', null, 'Idelstein', 'Ms.', '931-31-3513', 'F', '1987-03-09', '1-222-221-3322', '29 Eastwood Road', 'East Windsor', 'NJ', '08520', 'Mercer', 'Even Better Insurance', '320175', 'A', 'N', 1);

INSERT INTO Patient
VALUES (10, 'Jose', 'Jimbo', 'Jameson', 'Mr.', '888-88-2317', 'M', '1982-07-10', '1-849-222-5555', '50 Stonehenge Drive', 'East Windsor', 'NJ', '08520', 'Mercer', 'Betterer InusrancerDudeMan', '1', 'A+', 'H', 1);

INSERT INTO Patient
VALUES (11, 'Kimberly', null, 'Keurig', 'Ms.', '291-33-1914', 'F', '1999-11-11', '1-749-221-6666', '51 Stonehenge Drive', 'East WIndsor', 'NJ', '08520', 'Mercer', 'Best InsurancerDude', '1329', 'A-', 'L', 1);

INSERT INTO Patient
VALUES (12, 'Louis', 'Larry', 'Loughlin', 'Mr.', '999-99-3211', 'M', '1985-12-12', '1-888-211-3421', '99 Somewhere Road', 'Somewhere', 'NJ', '04221', 'Bergen', 'Dudeman Great Coverage', '44', 'B', 'N', 1);

INSERT INTO Patient
VALUES (13, 'Mandy', 'Mindy', 'Moffet', 'Ms.', '111-11-1112', 'F', '1982-06-13', '1-888-888-8816', '100 Someplace Plaza', 'Someplace', 'NJ', '03313', 'Ocean', 'Aetna', '392013', 'B', 'N', 1);

INSERT INTO Patient
VALUES (14, 'Nash', null, 'Nocturne', 'Mr.', '222-22-2221', 'M', '2003-03-14', '1-999-999-3321', '24 OutTheDoor Lane', 'Candyland', 'NJ', '08518', 'Sussex', 'Horizon BlueCross BlueShield', '302861', 'A', 'N', 1);

INSERT INTO Patient
VALUES (15, 'Orville', null, 'Oberstein', 'Mr.', '444-22-1114', 'M', '1977-04-15', '1-838-234-2352', '3829 Bleachbone Way', 'Beachtown', 'NJ', '08821', 'Ocean', 'Aetna', '830142', 'A', 'N', 1);

INSERT INTO Patient
VALUES (16, 'Penelope', 'Amber', 'Penguin', 'Ms.', '888-22-6416', 'F', '2011-06-16', '1-453-345-2245', '1 New Road', 'Piscataway', 'NJ', '45214', 'NJCounty', 'Aetna', '308231', 'B', 'N', 1);



CREATE TABLE In_Patient
( 
                 PID INT NOT NULL,
	  FirstName VARCHAR (20) NOT NULL,
	  MName VARCHAR (20),
	  Surname VARCHAR (20) NOT NULL,
	  Title VARCHAR (5),
               SocialSecurity VARCHAR (13),
	  Sex CHAR (1)  CHECK ( Sex IN  ('F', 'M', 'I')),
	  DOB  DATE,
	  PhoneNumber VARCHAR (20),
	  Address VARCHAR (30),
	  City VARCHAR (20),
	  State VARCHAR (2),
	  Zipcode VARCHAR (10),
	  County VARCHAR (20),
                 InsuranceCompany VARCHAR (35),
	  InsuranceNumber  VARCHAR (30),
	 BloodType VARCHAR (10),
	RiskOfHeartDisease CHAR (1) CHECK (RiskOfHeartDisease IN ('0', 'N', 'L', 'M', 'H')),
	ActivePatient BIT NOT NULL DEFAULT 1,
	AdmissionDatetime DATETIME NOT NULL,
	  PRIMARY KEY (PID) 
  );


INSERT INTO In_Patient
VALUES (1, 'Abigail', 'Lynn', 'Anderson', 'Ms.', '231-32-5167', 'F', '1953-12-01', '1-555-555-5532', '1 Hungree Place', 'Hamburg', 'NJ', '08512', 'Mercer', null, null, 'O-', 'H', 1, '2019-4-21 12:22:22');

INSERT INTO In_Patient
VALUES (2, 'Belinda', 'Flower', 'Bond', 'Ms.', null, 'F', '1993-03-02', '1-609-432-1111', '324 Middeleford Lane', 'Middleton', 'NJ', '08520', 'Mercer', null, null, 'B+', 'N', 1, '2019-4-21 22:22:22');

INSERT INTO In_Patient
VALUES (3, 'Curtis', null, 'Campbel', 'Mr.', '832-32-1245', 'M', '1985-07-03', '1-489-411-3411', '8921A Highrise B', 'New York City', 'NY', '03317', 'NewYorkCounty', 'Aetna', '389210', 'B+', 'N', 1, '2019-4-21 07:41:22');

INSERT INTO In_Patient
VALUES (4, 'Donald', 'Daffodil', 'Duck', 'Mr.', null, 'M', '1911-01-04', null, '1 Etra Park', 'East Windsor', 'NJ', '08520', 'Mercer', 'AFLAC', '000000001', null, 'N', 1, '2019-4-21 12:01:22');

INSERT INTO In_Patient
VALUES (5, 'Earl', null, 'Ericcson', 'Mr.', '992-31-1993', 'M', '1989-08-05', '1-348-444-4444', '453 Number1 RV Camp', 'Robbinsville', 'NJ', '08321', 'Mercer', 'Horizon BlueCross BlueShield', '324661', 'B', 'N', 1, '2019-4-21 05:22:22');

INSERT INTO In_Patient
VALUES (6, 'Felicia', 'Maryanne', 'Folger', 'Mrs.', '621-34-1662', 'F', '1978-09-06', null, '42 Wendover Road', 'East Windsor', 'NJ', '08520', 'Mercer',  'WellCare of New Jersey', '2348923', 'O', 'N', 1, '2019-4-21 09:49:22');

INSERT INTO In_Patient
VALUES (7, 'Gertrude', 'Goiter', 'Grumpyface', 'Ms.', '930-11-3214', 'F', '1992-08-07', '1-444-442-2155', '29 Allerton Drive', 'East Windsor', 'NJ', '08520', 'Mercer', 'Aetna', '289103', 'B', 'N', 1, '2019-4-21 21:22:22');

INSERT INTO In_Patient
VALUES (8, 'Hilda', 'Fiona', 'Hamilton', 'Ms.', '888-88-8261', 'F', '1934-12-08', '1-333-334-3423', '17 Wendover Road', 'East Windsor', 'NJ', '08520', 'Mercer', 'Great Insurance', '301115', 'B', 'N', 1, '2019-4-21 19:22:22');

INSERT INTO In_Patient
VALUES (9, 'Ingrid', null, 'Idelstein', 'Ms.', '931-31-3513', 'F', '1987-03-09', '1-222-221-3322', '29 Eastwood Road', 'East Windsor', 'NJ', '08520', 'Mercer', 'Even Better Insurance', '320175', 'A', 'N', 1, '2019-4-22 07:57:22');

INSERT INTO In_Patient
VALUES (10, 'Jose', 'Jimbo', 'Jameson', 'Mr.', '888-88-2317', 'M', '1982-07-10', '1-849-222-5555', '50 Stonehenge Drive', 'East Windsor', 'NJ', '08520', 'Mercer', 'Betterer InusrancerDudeMan', '1', 'A+', 'N', 1, '2019-4-17 12:22:22');



CREATE TABLE AvailableRoomBed
(  
    RoomBedID INT NOT NULL,
    NursingUnit INT NOT NULL,   
    RoomWing VARCHAR(5) NOT NULL CHECK ( RoomWing IN ('BLUE', 'GREEN')), 
    RoomNumber INT NOT NULL, 
    BedNumber VARCHAR (1) NOT NULL CHECK ( BedNumber IN ('A', 'B')),
    Occupied BIT NOT NULL DEFAULT 0,
    PRIMARY KEY (RoomBedID)
  );


INSERT INTO AvailableRoomBed
VALUES (1, 1, 'BLUE', 1, 'A', 1);

INSERT INTO AvailableRoomBed
VALUES (2, 1, 'BLUE', 1, 'B', 1);

INSERT INTO AvailableRoomBed
VALUES (3, 1, 'GREEN', 4, 'A', 1);

INSERT INTO AvailableRoomBed
VALUES (4, 1, 'GREEN', 4, 'B', 1);

INSERT INTO AvailableRoomBed
VALUES (5, 1, 'GREEN', 5, 'A', 1);

INSERT INTO AvailableRoomBed
VALUES (6, 2, 'GREEN', 5, 'B', 1);

INSERT INTO AvailableRoomBed
VALUES (7, 2, 'GREEN', 6, 'A', 1);

INSERT INTO AvailableRoomBed
VALUES (8, 2, 'BLUE', 2, 'A', 1);

INSERT INTO AvailableRoomBed
VALUES (9, 2, 'BLUE', 2, 'B', 1);

INSERT INTO AvailableRoomBed
VALUES (10, 2, 'BLUE', 3, 'A', 1);

INSERT INTO AvailableRoomBed
VALUES (11, 2, 'BLUE', 3, 'B', 0);

INSERT INTO AvailableRoomBed
VALUES (12, 2, 'GREEN', 6, 'B', 0);



CREATE TABLE In_PatientBed
(
 PID INT NOT NULL,
 RoomBedID INT NOT NULL,
	FOREIGN KEY (PID) REFERENCES In_Patient(PID),
 FOREIGN KEY (RoomBedID) REFERENCES AvailableRoomBed (RoomBedID),

  PRIMARY KEY (RoomBedID)
  );


INSERT INTO In_PatientBed
VALUES (1, 1);

INSERT INTO In_PatientBed
VALUES (2, 2);

INSERT INTO In_PatientBed
VALUES (3, 3);

INSERT INTO In_PatientBed
VALUES (4, 4);

INSERT INTO In_PatientBed
VALUES (5, 5);

INSERT INTO In_PatientBed
VALUES (6, 6);

INSERT INTO In_PatientBed
VALUES (7, 7);

INSERT INTO In_PatientBed
VALUES (8, 8);

INSERT INTO In_PatientBed
VALUES (9, 9);

INSERT INTO In_PatientBed
VALUES (10, 10);



CREATE TABLE Staff
(
 SID INT NOT NULL,
	  FirstName CHAR (20) NOT NULL,
	  MName VARCHAR (20),
	  Surname VARCHAR (20) NOT NULL,
	  Title VARCHAR (15),
   	 SocialSecurity VARCHAR(13) NOT NULL,
	  Sex CHAR (1)  CHECK ( Sex IN  ('F', 'M', 'I')),
	  DOB  DATE,
	  DOE DATE NOT NULL,
	  Phone_number VARCHAR (20),
	  Address VARCHAR (30),
	  City VARCHAR (20),
	  State VARCHAR (2),
	  Zipcode VARCHAR (10),
	  County VARCHAR (20),
	  Employed BIT NOT NULL DEFAULT 1,
	  PRIMARY KEY (SID) 
  );


INSERT INTO Staff
VALUES (1, 'Aaron', null, 'Applebee', 'Mr.', '194-32-4677', 'M', '1992-02-01', '2017-04-16', '1-335-324-6621', '354 This Place', 'Thistown', 'NJ', '89013', 'Mercer', 1);

INSERT INTO Staff
VALUES (2, 'Beatrice', null, 'Birmingham', 'Mrs.', '389-56-2314', 'F', '1973-10-23', '2005-09-15', '1-849-347-3432', '4893 That Place', 'Thattown', 'NJ', '83917-8492', 'Mercer', 1);

INSERT INTO Staff
VALUES (3, 'Constance', null, 'Candor', 'Ms.', '389-47-2913', 'F', '1956-07-03', '1992-11-12', '1-839-275-2721', '2 Wherever', 'Wheretown', 'NJ', '89201-3392', 'Bergen', 1);

INSERT INTO Staff
VALUES (4, 'Douglas', null, 'Dullard', 'Mr.', '382-32-9852', 'M', '1986-02-27', '2004-05-28', '1-392-346-2381', '2 Wendover Road', 'East Windsor', 'NJ', '08520', 'Mercer', 1);

INSERT INTO Staff
VALUES (5, 'Eustace', null, 'Euler', 'Mr.', '892-14-5621', 'M', '1961-07-12', '1994-01-02', '1-572-392-3821', '324 Conover Road', 'East WIndsor', 'NJ', '08520', 'Mercer', 1);



CREATE TABLE Surgeon
(
 SID INT NOT NULL,
	  FirstName CHAR (20) NOT NULL,
	  MName VARCHAR (20),
	  Surname VARCHAR (20) NOT NULL,
	  Title VARCHAR (15),
   	 SocialSecurity VARCHAR(13) NOT NULL,
	  Sex CHAR (1)  CHECK ( Sex IN  ('F', 'M', 'I')),
	  DOB  DATE,
	  DOE DATE NOT NULL,
	  Phone_number VARCHAR (20),
	  Address VARCHAR (30),
	  City VARCHAR (20),
	  State VARCHAR (2),
	  Zipcode VARCHAR (10),
	  County VARCHAR (20),
	  Employed BIT NOT NULL DEFAULT 1,
	  Specialty VARCHAR (50) NOT NULL,
	  ContractType VARCHAR (50) NOT NULL,
	 ContractLength DATE NOT NULL,
	  PRIMARY KEY (SID) 
  );

INSERT INTO Surgeon
VALUES (5, 'Eustace', null, 'Euler', 'Mr.', '892-14-5621', 'M', '1961-07-12', '1994-01-02', '1-572-392-3821', '324 Conover Road', 'East WIndsor', 'NJ', '08520', 'Mercer', 1, 'Heart and Lung', 'Pay Per Surgery-hour: 234.27 USD', '2025-12-31');




CREATE TABLE Physician
(
 SID INT NOT NULL,
	  FirstName CHAR (20) NOT NULL,
	  MName VARCHAR (20),
	  Surname VARCHAR (20) NOT NULL,
	  Title VARCHAR (15),
   	 SocialSecurity VARCHAR(13) NOT NULL,
	  Sex CHAR (1)  CHECK ( Sex IN  ('F', 'M', 'I')),
	  DOB  DATE,
	  DOE DATE NOT NULL,
	  Phone_number VARCHAR (20),
	  Address VARCHAR (30),
	  City VARCHAR (20),
	  State VARCHAR (2),
	  Zipcode VARCHAR (10),
	  County VARCHAR (20),
	  Employed BIT NOT NULL DEFAULT 1,
	  Salary DECIMAL (9,2) NOT NULL,
	  Specialty VARCHAR (50) NOT NULL,
	  PRIMARY KEY (SID) 
  );

INSERT INTO Physician
VALUES (3, 'Constance', null, 'Candor', 'Ms.', '389-47-2913', 'F', '1956-07-03', '1992-11-12', '1-839-275-2721', '2 Wherever', 'Wheretown', 'NJ', '89201-3392', 'Bergen', 1, 85231.23, 'Pediatric');

INSERT INTO Physician
VALUES (4, 'Douglas', null, 'Dullard', 'Mr.', '382-32-9852', 'M', '1986-02-27', '2004-05-28', '1-392-346-2381', '2 Wendover Road', 'East Windsor', 'NJ', '08520', 'Mercer', 1, 99321.55, 'OB/GYN');



CREATE TABLE Nurse
(
 SID INT NOT NULL,
	  FirstName CHAR (20) NOT NULL,
	  MName VARCHAR (20),
	  Surname VARCHAR (20) NOT NULL,
	  Title VARCHAR (15),
   	 SocialSecurity VARCHAR(13) NOT NULL,
	  Sex CHAR (1)  CHECK ( Sex IN  ('F', 'M', 'I')),
	  DOB  DATE,
	  DOE DATE NOT NULL,
	  Phone_number VARCHAR (20),
	  Address VARCHAR (30),
	  City VARCHAR (20),
	  State VARCHAR (2),
	  Zipcode VARCHAR (10),
	  County VARCHAR (20),
	  Employed BIT NOT NULL DEFAULT 1,
	  Salary DECIMAL (9,2) NOT NULL,
	  Grade VARCHAR (3) NOT NULL,
	  Years DECIMAL (3,1) NOT NULL,
	  PRIMARY KEY (SID)
  );

INSERT INTO Nurse
VALUES (1, 'Aaron', null, 'Applebee', 'Mr.', '194-32-4677', 'M', '1992-02-01', '2017-04-16', '1-335-324-6621', '354 This Place', 'Thistown', 'NJ', '89013', 'Mercer', 1, 55231.23, 'A++', 2.1);

INSERT INTO Nurse
VALUES (2, 'Beatrice', null, 'Birmingham', 'Mrs.', '389-56-2314', 'F', '1973-10-23', '2005-09-15', '1-849-347-3432', '4893 That Place', 'Thattown', 'NJ', '83917-8492', 'Mercer', 1, 72321.24, 'B-', 16.3);



CREATE TABLE PhysicianPatient
(
 PID INT NOT NULL,
SID INT NOT NULL,
	FOREIGN KEY (PID) REFERENCES Patient(PID),
    FOREIGN KEY (SID) REFERENCES Physician(SID),
            PRIMARY KEY (PID)
  );

INSERT INTO PhysicianPatient
VALUES (1, 3);

INSERT INTO PhysicianPatient
VALUES (2, 4);

INSERT INTO PhysicianPatient
VALUES (3, 3);

INSERT INTO PhysicianPatient
VALUES (4, 4);

INSERT INTO PhysicianPatient
VALUES (5, 3);

INSERT INTO PhysicianPatient
VALUES (6, 4);

INSERT INTO PhysicianPatient
VALUES (7, 3);

INSERT INTO PhysicianPatient
VALUES (8, 4);

INSERT INTO PhysicianPatient
VALUES (9, 3);

INSERT INTO PhysicianPatient
VALUES (10, 4);

INSERT INTO PhysicianPatient
VALUES (11, 3);

INSERT INTO PhysicianPatient
VALUES (12, 4);

INSERT INTO PhysicianPatient
VALUES (13, 3);

INSERT INTO PhysicianPatient
VALUES (14, 4);

INSERT INTO PhysicianPatient
VALUES (15, 3);

INSERT INTO PhysicianPatient
VALUES (16, 4);



CREATE TABLE NurseIn_Patient
(
 PID INT NOT NULL,
SID INT NOT NULL,
	FOREIGN KEY (PID) REFERENCES In_Patient(PID),
    FOREIGN KEY (SID) REFERENCES Nurse(SID),
          PRIMARY KEY (PID)
  );

INSERT INTO NurseIn_Patient
VALUES (1, 1);

INSERT INTO NurseIn_Patient
VALUES (2, 2);

INSERT INTO NurseIn_Patient
VALUES (3, 1);

INSERT INTO NurseIn_Patient
VALUES (4, 2);

INSERT INTO NurseIn_Patient
VALUES (5, 1);

INSERT INTO NurseIn_Patient
VALUES (6, 2);

INSERT INTO NurseIn_Patient
VALUES (7, 1);

INSERT INTO NurseIn_Patient
VALUES (8, 2);

INSERT INTO NurseIn_Patient
VALUES (9, 1);

INSERT INTO NurseIn_Patient
VALUES (10, 2);




CREATE TABLE Consultation
(
 PID INT NOT NULL,
SID INT NOT NULL,
StartDatetime DATETIME NOT NULL,
EndTime DATETIME NOT NULL,
	FOREIGN KEY (PID) REFERENCES Patient(PID),
 FOREIGN KEY (SID) REFERENCES Physician(SID),
            CONSTRAINT PKConsultation PRIMARY KEY (PID, SID, StartDatetime)
  );

INSERT INTO Consultation
VALUES (1, 3, '2019-04-23 12:30:00', '2019-04-23 13:00:00');

INSERT INTO Consultation
VALUES (1, 4, '2019-04-27 15:00:00', '2019-04-27 15:30:00');

INSERT INTO Consultation
VALUES (11, 3, '2019-05-11 16:00:00', '2019-05-11 16:30:00');




CREATE TABLE Skills
(
 SkillName VARCHAR (60) NOT NULL,
 SkillDescription VARCHAR (80) NOT NULL,
            PRIMARY KEY (SkillName)
  );

INSERT INTO Skills
VALUES ('Heart Surgery', 'Open heart surgery / related thingamajigs');

INSERT INTO Skills
VALUES('Loss-of-blood control', 'Knowledge on how to help minimize blood loss during procedures.');

INSERT INTO Skills
VALUES ('Lung Surgery',  'Lung stuff');



CREATE TABLE NurseSkills
(
SID INT NOT NULL,
SkillName VARCHAR (60) NOT NULL,
	FOREIGN KEY (SkillName) REFERENCES Skills(SkillName),
 FOREIGN KEY (SID) REFERENCES Nurse(SID),
            CONSTRAINT PKNurseSkills PRIMARY KEY (SID, SkillName)
  );

INSERT INTO NurseSkills
VALUES (1, 'Heart Surgery');

INSERT INTO NurseSkills
VALUES (1, 'Loss-of-blood control');

INSERT INTO NurseSkills
VALUES (2, 'Heart Surgery');

INSERT INTO NurseSkills
VALUES (2, 'Loss-of-blood control');



CREATE TABLE Medication
(
 MID INT NOT NULL,
FullName VARCHAR (50) NOT NULL,
Manufacturer VARCHAR (30) NOT NULL,
Class VARCHAR (30),
ControlledSubstance BIT NOT NULL,
QuantityOnHand INT NOT NULL,
QuantityOnOrder INT NOT NULL,
UnitCost DECIMAL (10,2) NOT NULL,
YrToDateUsage INT NOT NULL,
             PRIMARY KEY (MID)
  );

INSERT INTO Medication
VALUES (1, 'Aspirin', 'Bayer', null, 0, 834, 0,  0.13, 421);

INSERT INTO Medication
VALUES (2, 'Tylenol', 'GenericPharmaA', 'NSAID', 0, 213, 500, 0.12, 231);

INSERT INTO Medication
VALUES (3, 'Fentanyl', 'GenericPharmaA', null, 1, 15, 5, 132.25, 25);


INSERT INTO Medication
VALUES (4, 'Riskonyl', 'GenericPharmaB', 'Non-corticol steroid', 1, 25, 5, 223.12, 15);

INSERT INTO Medication
VALUES (5, 'Antibiotica', 'GenericPharmaB', 'Antibiotic', 0, 232, 125, 3.12, 768);



CREATE TABLE MedicineInteractions
(
 MID1 INT NOT NULL,
MID2 INT NOT NULL,
InteractionType CHAR (1) NOT NULL CHECK ( InteractionType IN ( 'S', 'M', 'L')),
Details VARCHAR (500) NOT NULL,
	FOREIGN KEY (MID1) REFERENCES Medication(MID),
 FOREIGN KEY (MID2) REFERENCES Medication(MID),
            CONSTRAINT PKMedicineInteractions PRIMARY KEY (MID1, MID2)
  );

INSERT INTO MedicineInteractions
VALUES (1, 4, 'L', 'Large chance of cardiac arrest');




CREATE TABLE PatientMedication
(
 PID INT NOT NULL,
MID INT NOT NULL,
SID INT,
	Dosage INT NOT NULL,
	Frequency VARCHAR (40) NOT NULL,
	AdministrationRoute VARCHAR (20) NOT NULL,
	FOREIGN KEY (PID) REFERENCES Patient(PID),
	FOREIGN KEY (MID) REFERENCES Medication(MID),
 FOREIGN KEY (SID) REFERENCES Physician(SID),
            CONSTRAINT PKPatientMedication PRIMARY KEY (PID, MID)
  );


INSERT INTO PatientMedication
VALUES (1, 1, 3, 2, 'twice daily, 12h separated', 'Swallowed');

INSERT INTO PatientMedication
VALUES (1, 3, 3, 3, 'twice daily, 12h separated', 'Swallowed');

INSERT INTO PatientMedication
VALUES (1, 2, 4, 1, 'Once daily, at night', 'Swallowed');

INSERT INTO PatientMedication
VALUES (11, 4, 3, 3, 'twice daily, 12h separated', 'Swallowed');

INSERT INTO PatientMedication
VALUES (11, 3, 3, 1, 'Once daily, at night', 'Swallowed');

INSERT INTO PatientMedication
VALUES (6, 5, 4, 1, 'Twice daily, 12h separated', 'Swallowed');

INSERT INTO PatientMedication
VALUES (7, 5, 3, 1, 'Twice daily, 12h separated', 'Swallowed');



CREATE TABLE AllergyCodes
(
AllergyID INT NOT NULL,
Description VARCHAR (50) NOT NULL,
              PRIMARY KEY (AllergyID)
  );

INSERT INTO AllergyCodes
VALUES (1, 'Dog dander');

INSERT INTO AllergyCodes
VALUES (2, 'Cat dander');

INSERT INTO AllergyCodes
VALUES (3, 'Peanut');

INSERT INTO AllergyCodes
VALUES (4, 'Tree pollen');

INSERT INTO AllergyCodes
VALUES (5, 'Soy');

INSERT INTO AllergyCodes
VALUES (6, 'Bee venom');

INSERT INTO AllergyCodes
VALUES (7, 'Shellfish');

INSERT INTO AllergyCodes
VALUES (8, 'Wheat');

INSERT INTO AllergyCodes
VALUES (9, 'Chocolate');




CREATE TABLE PatientAllergies
(
 PID INT NOT NULL,
AllergyID INT NOT NULL,
	FOREIGN KEY (PID) REFERENCES Patient(PID),
 FOREIGN KEY (AllergyID) REFERENCES AllergyCodes(AllergyID),
            CONSTRAINT PKPatientAllergies PRIMARY KEY (PID, AllergyID)
  );

INSERT INTO PatientAllergies
VALUES (2, 9);

INSERT INTO PatientAllergies
VALUES (2, 2);

INSERT INTO PatientAllergies
VALUES (2, 3);

INSERT INTO PatientAllergies
VALUES (4, 9);

INSERT INTO PatientAllergies
VALUES (7, 3);

INSERT INTO PatientAllergies
VALUES (8, 9);

INSERT INTO PatientAllergies
VALUES (14, 9);

INSERT INTO PatientAllergies
VALUES (15, 2);





CREATE TABLE Diagnosis
(
 DiagnosisCode INT NOT NULL,
DiagnosisDescription VARCHAR (70),
            PRIMARY KEY (DiagnosisCode)
  );

INSERT INTO Diagnosis
VALUES (1, 'Hypertension');

INSERT INTO Diagnosis
VALUES (2, 'Hypotension');

INSERT INTO Diagnosis
VALUES (3, 'Hyperglycemia');

INSERT INTO Diagnosis
VALUES (4, 'Hypoglycemia');

INSERT INTO Diagnosis
VALUES (5, 'Type I Diabetes');

INSERT INTO Diagnosis
VALUES (6, 'Type II Diabetes');

INSERT INTO Diagnosis
VALUES (7, 'H1N1 Influenza');

INSERT INTO Diagnosis
VALUES (8, 'Common Cold');

INSERT INTO Diagnosis
VALUES (9, 'Pharyngitis');

INSERT INTO Diagnosis
VALUES (10, 'Bronchitis');

INSERT INTO Diagnosis
VALUES (11, 'Influenza (unspecified)');

INSERT INTO Diagnosis
VALUES (12, 'Strept throat');

INSERT INTO Diagnosis
VALUES (13, 'MSRA');

INSERT INTO Diagnosis
VALUES (14, 'Gangrene');

INSERT INTO Diagnosis
VALUES (15, 'Leprosy');

INSERT INTO Diagnosis
VALUES (16, 'Myocardial Infarction');



CREATE TABLE PatientDiagnosis
(
 PID INT NOT NULL,
DiagnosisCode INT NOT NULL,
	DiagnosisDate DATE NOT NULL,
	PhysicianID INT,
	SpecificDiagnosisDescription VARCHAR (700),
	FOREIGN KEY (PID) REFERENCES Patient(PID),
 FOREIGN KEY (DiagnosisCode) REFERENCES Diagnosis (DiagnosisCode),
 FOREIGN KEY (PhysicianID) REFERENCES Physician (SID),
            CONSTRAINT PKPatientDiagnosis PRIMARY KEY (PID, DiagnosisCode, DiagnosisDate)
  );

INSERT INTO PatientDiagnosis
VALUES (1, 2, '2019-2-22', null, 'Outside practice: Dr. Firmingham.  1-523-234-3452.  Patient came was driven in because patient was passing out');

INSERT INTO PatientDiagnosis
VALUES (2, 13, '2019-4-22', 4, 'Treatable, stable');

INSERT INTO PatientDiagnosis
VALUES (3, 11, '2019-4-22', 3, null);

INSERT INTO PatientDiagnosis
VALUES (4, 11, '2019-4-22', 4, null);

INSERT INTO PatientDiagnosis
VALUES (5, 15, '2019-4-22', 3, 'No amputations required, referred to outside specialist <doctor name and info>');

INSERT INTO PatientDiagnosis
VALUES (6, 14, '2019-4-22', 4, 'Keeping patient on antibiotics course until further notice.  Patient will stay until recovery.  Very small chance of needing further action');

INSERT INTO PatientDiagnosis
VALUES (7, 10, '2019-4-22', 3, 'Patient is definitely congested, but can breathe fine.  Prescribed antibiotics.  Told patient to come back if symptoms worsen');

INSERT INTO PatientDiagnosis
VALUES (8, 11, '2019-4-23', 4, null);

INSERT INTO PatientDiagnosis
VALUES (9, 11, '2019-4-23', 3, null);

INSERT INTO PatientDiagnosis
VALUES (10, 1, '2019-4-22', 4, 'Patient came in because he didn''t "feel well"');

INSERT INTO PatientDiagnosis
VALUES (10, 16, '2019-4-23', 3, 'Emergency surgery was performed successfully');

INSERT INTO PatientDiagnosis
VALUES (11, 8, '2019-4-22', 3, null);

INSERT INTO PatientDiagnosis
VALUES (12, 8, '2019-4-22', 4, null);

INSERT INTO PatientDiagnosis
VALUES (13, 8, '2019-4-22', 3, null);

INSERT INTO PatientDiagnosis
VALUES (14, 8, '2019-4-22', 4, null);

INSERT INTO PatientDiagnosis
VALUES (15, 8, '2019-4-22', 3, null);

INSERT INTO PatientDiagnosis
VALUES (16, 8, '2019-4-22', 4, null);




CREATE TABLE MedicationDiagnosisInteractions
(
 MID INT NOT NULL,
DiagnosisCode INT NOT NULL,
InteractionType CHAR (1) NOT NULL CHECK ( InteractionType IN ( 'S', 'M', 'L')),
Details VARCHAR (500) NOT NULL,
	FOREIGN KEY (MID) REFERENCES Medication(MID),
 FOREIGN KEY (DiagnosisCode) REFERENCES Diagnosis (DiagnosisCode),
            CONSTRAINT PKMedicationDiagnosisInteractions PRIMARY KEY (MID, DiagnosisCode)
  );

INSERT INTO MedicationDiagnosisInteractions
VALUES (1, 2, 'M', 'May lower blood pressure to dangerous levels');



CREATE TABLE Cholesterol
(
	CholesterolID INT NOT NULL,
	ReadingDatetime DATETIME NOT NULL,
	HDL DECIMAL (5,2) NOT NULL,
	LDL DECIMAL (5,2) NOT NULL,
	Triglycerides DECIMAL (5,2) NOT NULL,
	TotalCholesterol DECIMAL (6,2) NOT NULL,
	CholesterolRatio DECIMAL (5,2) NOT NULL,
             PRIMARY KEY (CholesterolID)
);

INSERT INTO Cholesterol
VALUES (1, '2019-1-12 00:00:00', 20.0, 70.0, 100.0, 110.0, 5.5);

INSERT INTO Cholesterol
VALUES (2, '2019-4-23 12:06:00', 20.0, 70.0, 100.0, 110.0, 5.5);

INSERT INTO Cholesterol
VALUES (3, '2019-4-22 19:32:00', 20.0, 70.0, 100.0, 110.0, 5.5);

INSERT INTO Cholesterol
VALUES (4, '2019-4-23 09:54:00', 20.0, 50.0, 100.0, 90.0, 4.5);

INSERT INTO Cholesterol
VALUES (5, '2019-4-23 22:32:00', 20.0, 70.0, 100.0, 110.0, 5.5);



CREATE TABLE PatientCholesterol
(
 PID INT NOT NULL,
	CholesterolID INT NOT NULL,
	FOREIGN KEY (PID) REFERENCES Patient(PID),
 FOREIGN KEY (CholesterolID) REFERENCES Cholesterol (CholesterolID),
           PRIMARY KEY (CholesterolID)
  );

INSERT INTO PatientCholesterol
VALUES (1, 1);

INSERT INTO PatientCholesterol
VALUES (1, 2);

INSERT INTO PatientCholesterol
VALUES (10, 3);

INSERT INTO PatientCholesterol
VALUES (11, 4);

INSERT INTO PatientCholesterol
VALUES (10, 5);




CREATE TABLE Bloodsugar
(
BloodsugarID INT NOT NULL,
ReadingDatetime DATETIME NOT NULL,
Reading DECIMAL (5,2),
             PRIMARY KEY (BloodsugarID)
  );

INSERT INTO Bloodsugar
VALUES (1, '2019-4-22 19:32:00', 213.23);

INSERT INTO Bloodsugar
VALUES (2, '2019-4-23 22:32:00', 189.33);

INSERT INTO Bloodsugar
VALUES (3, '2019-4-22 15:01:00', 193.21);



CREATE TABLE PatientBloodsugar
(
 PID INT NOT NULL,
BloodsugarID INT NOT NULL,
	FOREIGN KEY (PID) REFERENCES Patient(PID),
 FOREIGN KEY (BloodsugarID) REFERENCES Bloodsugar (BloodsugarID),
          PRIMARY KEY (BloodsugarID)
  );

INSERT INTO PatientBloodsugar
VALUES (10, 1);

INSERT INTO PatientBloodsugar
VALUES (10, 2);

INSERT INTO PatientBloodsugar
VALUES (14, 3);




CREATE TABLE SurgeryRoom
(
 RoomID INT NOT NULL,
	RoomNumber VARCHAR (5) NOT NULL,
              PRIMARY KEY (RoomID)
  );

INSERT INTO SurgeryRoom
VALUES (1, '103B');

INSERT INTO SurgeryRoom
VALUES (2, '205A');



CREATE TABLE SurgeryTypes
(
	TypeID INT NOT NULL,
	Description VARCHAR (500) NOT NULL,
             PRIMARY KEY (TypeID)
  );

INSERT INTO SurgeryTypes
VALUES (1, 'Myocardial Infarction recovery -- quadruple bypass');




CREATE TABLE SurgeryTypeRequiredSkills
(
	TypeID INT NOT NULL,
	SkillName VARCHAR (60) NOT NULL,
	FOREIGN KEY (TypeID) REFERENCES SurgeryTypes (TypeID),
 FOREIGN KEY (SkillName) REFERENCES Skills ( SkillName),
            CONSTRAINT PKSurgeryTypeRequiredSkills PRIMARY KEY (TypeID, SkillName)
  );

INSERT INTO SurgeryTypeRequiredSkills
VALUES (1, 'Heart Surgery');

INSERT INTO SurgeryTypeRequiredSkills
VALUES (1, 'Loss-of-blood control');




CREATE TABLE Shift
(
 ShiftID INT NOT NULL,
	StartDatetime DATETIME NOT NULL,
	EndDatetime DATETIME,
             PRIMARY KEY (ShiftID)
  );

INSERT INTO Shift
VALUES (1, '2019-01-01 00:00:00', '2019-01-01 12:00:00');

INSERT INTO Shift
VALUES (2, '2019-04-23 00:00:00', '2019-04-23 12:00:00');

INSERT INTO Shift
VALUES (3, '2019-04-23 12:00:00', '2019-04-24 00:00:00');

INSERT INTO Shift
VALUES (4, '2019-04-23 08:00:00', '2019-04-23 17:00:00');



CREATE TABLE StaffShift
(
 SID INT NOT NULL,
ShiftID INT NOT NULL,
	FOREIGN KEY (SID) REFERENCES Staff(SID),
 FOREIGN KEY (ShiftID) REFERENCES Shift (ShiftID),
            CONSTRAINT PKStaffShift PRIMARY KEY (SID, ShiftID)
  );

INSERT INTO StaffShift
VALUES (3, 1);

INSERT INTO StaffShift
VALUES (1,2);

INSERT INTO StaffShift
VALUES (2,3);

INSERT INTO StaffShift
VALUES (5,1);

INSERT INTO StaffShift
VALUES (5,3);

INSERT INTO StaffShift
VALUES (3,4);

INSERT INTO StaffShift
VALUES (4,4);




CREATE TABLE SurgeryNursesTypes
(
 SID INT NOT NULL,
TypeID INT NOT NULL,
	FOREIGN KEY (SID) REFERENCES Nurse(SID),
 FOREIGN KEY (TypeID) REFERENCES SurgeryTypes (TypeID),
            CONSTRAINT PKSurgeryNursesTypes PRIMARY KEY (SID, TypeID)
  );

INSERT INTO SurgeryNursesTypes
VALUES (1, 1);

INSERT INTO SurgeryNursesTypes
VALUES (2, 1);



CREATE TABLE Surgery
(
 SurgeryID INT NOT NULL,
SurgeryDescription VARCHAR (500) NOT NULL,
AnatomicalLocation VARCHAR (63) NOT NULL,
SpecialNeeds VARCHAR (63),
Category CHAR (1) NOT NULL CHECK ( Category IN ('H', 'O')),
StartDatetime DATETIME NOT NULL,
EndDatetime DATETIME,
              PRIMARY KEY (SurgeryID)
  );

INSERT INTO Surgery
VALUES (1, 'Dude had a heart attack, we helping', 'Da heart', null, 'H', '2019-04-23 13:32:17', '2019-04-23 18:31:00');



CREATE TABLE SurgerySurgeon
(
 SurgeryID INT NOT NULL,
SID INT NOT NULL,
	FOREIGN KEY (SurgeryID) REFERENCES Surgery (SurgeryID),
 FOREIGN KEY (SID) REFERENCES Surgeon (SID),
            CONSTRAINT PKSurgerySurgeon PRIMARY KEY (SurgeryID, SID)
  );

INSERT INTO SurgerySurgeon
VALUES (1, 5);



CREATE TABLE SurgeryPatient
(
 SurgeryID INT NOT NULL,
PID INT NOT NULL,
	FOREIGN KEY (SurgeryID) REFERENCES Surgery (SurgeryID),
 FOREIGN KEY (PID) REFERENCES Patient (PID),
PRIMARY KEY (SurgeryID)
  );

INSERT INTO SurgeryPatient
VALUES (1, 10);


CREATE TABLE SurgeryNurses
(
 SurgeryID INT NOT NULL,
NID INT NOT NULL,
	FOREIGN KEY (SurgeryID) REFERENCES Surgery (SurgeryID),
 FOREIGN KEY (NID) REFERENCES Nurse (SID),
            CONSTRAINT PKSurgeryNurses PRIMARY KEY (SurgeryID, NID)
  );

INSERT INTO SurgeryNurses
VALUES (1, 2);


 
CREATE TABLE SurgerySurgeryRoom
(
 SurgeryID INT NOT NULL,
RoomID INT NOT NULL,
	FOREIGN KEY (SurgeryID) REFERENCES Surgery (SurgeryID),
 FOREIGN KEY (RoomID) REFERENCES SurgeryRoom (RoomID),
  PRIMARY KEY (SurgeryID)
  );

INSERT INTO SurgerySurgeryRoom
VALUES (1, 2);



CREATE TABLE SurgerySurgeryTypes
(
 SurgeryID INT NOT NULL,
TypeID INT NOT NULL,
	FOREIGN KEY (SurgeryID) REFERENCES Surgery (SurgeryID),
 FOREIGN KEY (TypeID) REFERENCES SurgeryTypes (TypeID),
            CONSTRAINT PKSurgerySurgeryTypes PRIMARY KEY (SurgeryID, TypeID)
  );

INSERT INTO SurgerySurgeryTypes
VALUES (1, 1);



CREATE TABLE MedCorpOwnership
(
 Name VARCHAR (50) NOT NULL,
Address VARCHAR (30),
City VARCHAR (30),
State CHAR (2),
Zipcode VARCHAR (10),
County VARCHAR (30),
PhoneNumber VARCHAR (20),
PercentOwnership DECIMAL (9 , 6) NOT NULL,
              PRIMARY KEY (Name)
  );

INSERT INTO MedCorpOwnership
VALUES ('Budweiser', null, 'Newark', 'NJ', '08858', 'NJCounty', null, 29.83);