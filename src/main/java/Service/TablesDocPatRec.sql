
CREATE TABLE IF NOT EXISTS DOCTORS
(
	ID BIGINT NOT NULL,
	FIRSTNAME VARCHAR(255) NOT NULL,
	SECONDNAME VARCHAR(255) NOT NULL,
	LASTNAME VARCHAR(255) NOT NULL,
	SPECIALIZATION VARCHAR(255) NOT NULL,
	CONSTRAINT DOCTORS_PKEY PRIMARY KEY (ID)
)

CREATE TABLE IF NOT EXISTS PATIENTS
(
	ID BIGINT NOT NULL,
	FIRSTNAME VARCHAR(255) NOT NULL,
	SECONDNAME VARCHAR(255) NOT NULL,
	LASTNAME VARCHAR(255) NOT NULL,
	PHONE VARCHAR(255) NOT NULL,
	CONSTRAINT PATIENTS_PKEY PRIMARY KEY (ID)
)

CREATE TABLE IF NOT EXISTS RECIPES
(
	ID BIGINT NOT NULL,
	DESCRIPTION VARCHAR(255) NOT NULL,
	RECDATE DATE NOT NULL,
	DURATION VARCHAR(255) NOT NULL,
	PRIORITY VARCHAR(255) NOT NULL,
	DOCTOR BIGINT NOT NULL,
	PATIENT BIGINT NOT NULL,
	CONSTRAINT RECIPES_PKEY PRIMARY KEY (ID),
	CONSTRAINT RECIPES_DOCTOR_FKEY FOREIGN KEY (DOCTOR) REFERENCES DOCTORS (ID),
	CONSTRAINT RECIPES_PATIENT_FKEY FOREIGN KEY (PATIENT) REFERENCES PATIENTS (ID)
)

INSERT INTO DOCTORS (ID, FIRSTNAME, SECONDNAME, LASTNAME, SPECIALIZATION) VALUES (?, ?, ?, ?, ?)
INSERT INTO PATIENTS (ID, FIRSTNAME, SECONDNAME, LASTNAME, PHONE) VALUES (?, ?, ?, ?, ?)
INSERT INTO RECIPES (ID, DESCRIPTION, RECDATE, DURATION, PRIORITY, DOCTOR, PATIENT) VALUES (?, ?, ?, ?, ?, ?, ?)

SELECT ID, FIRSTNAME, SECONDNAME, LASTNAME, SPECIALIZATION FROM DOCTORS
SELECT ID, FIRSTNAME, SECONDNAME, LASTNAME, PHONE FROM PATIENTS
SELECT ID, DESCRIPTION, RECDATE, DURATION, PRIORITY, DOCTOR, PATIENT FROM RECIPES


SELECT ID, FIRSTNAME, SECONDNAME, LASTNAME, SPECIALIZATION FROM DOCTORS WHERE ID=?
SELECT ID, FIRSTNAME, SECONDNAME, LASTNAME, PHONE FROM PATIENTS WHERE ID=?
SELECT ID, DESCRIPTION, RECDATE, DURATION, PRIORITY, DOCTOR, PATIENT RECIPES WHERE DOCTOR=? AND PATIENT=?

UPDATE DOCTORS SET FIRSTNAME=?, SECONDNAME=?, LASTNAME=?, SPECIALIZATION=? WHERE ID=?
UPDATE PATIENTS SET FIRSTNAME=?, SECONDNAME=?, LASTNAME=?, PHONE=? WHERE ID=?
UPDATE RECIPES SET DESCRIPTION=?, RECDATE=?, DURATION=?, PRIORITY=?, DOCTOR=?, PATIENT=? WHERE ID=?

DELETE FROM DOCTORS WHERE ID=?
DELETE FROM PATIENTS WHERE ID=?
DELETE FROM RECIPES WHERE ID=?