
CREATE TABLE allergies (
 START date
,STOP date
,PATIENT varchar(1000)
,ENCOUNTER varchar(1000)
,CODE varchar(1000)
--,SYSTEM varchar(1000)
,DESCRIPTION varchar(1000)
,TYPE varchar(1000)
,CATEGORY varchar(1000)
,REACTION1 varchar(1000)
--,DESCRIPTION1 varchar(1000)
,SEVERITY1 varchar(1000)
,REACTION2 varchar(1000)
--,DESCRIPTION2 varchar(1000)
,SEVERITY2 varchar(1000)
);

CREATE TABLE careplans (
 ID varchar(1000)
,START varchar(1000)
,STOP varchar(1000)
,PATIENT varchar(1000)
,ENCOUNTER varchar(1000)
,CODE varchar(1000)
,DESCRIPTION varchar(1000)
--,REASONCODE varchar(1000)
--,REASONDESCRIPTION varchar(1000)
);	


CREATE TABLE conditions (
START DATE
,STOP DATE
,PATIENT VARCHAR(1000)
,ENCOUNTER VARCHAR(1000)
,CODE VARCHAR(1000)
,DESCRIPTION VARCHAR(200)
);


CREATE TABLE devices (
 START TIMESTAMP
,STOP TIMESTAMP
,PATIENT VARCHAR(200)
,ENCOUNTER VARCHAR(200)
,CODE VARCHAR(200)
,DESCRIPTION VARCHAR(200)
,UDI VARCHAR(100)
);


CREATE TABLE encounters (
 Id VARCHAR(100)
,START TIMESTAMP
,STOP TIMESTAMP
,PATIENT VARCHAR(100)
,ORGANIZATION VARCHAR(100)
,PROVIDER VARCHAR(100)
,PAYER VARCHAR(100)
,ENCOUNTERCLASS VARCHAR(100)
,CODE VARCHAR(100)
,DESCRIPTION VARCHAR(100)
,BASE_ENCOUNTER_COST FLOAT
,TOTAL_CLAIM_COST FLOAT
,PAYER_COVERAGE FLOAT
,REASONCODE VARCHAR(100)
--,REASONDESCRIPTION VARCHAR(100)
);


CREATE TABLE immunizations
(
 DATE TIMESTAMP
,PATIENT varchar(100)
,ENCOUNTER varchar(100)
,CODE int
,DESCRIPTION varchar(500)
--,BASE_COST float
);

CREATE TABLE medications
(
 START timestamp
,STOP timestamp
,PATIENT VARCHAR(100)
,PAYER VARCHAR(100)
,ENCOUNTER VARCHAR(100)
,CODE VARCHAR(100)
,DESCRIPTION VARCHAR(500)
,BASE_COST float
,PAYER_COVERAGE float
,DISPENSES float
,TOTALCOST float
--,REASONCODE VARCHAR(100)
--,REASONDESCRIPTION VARCHAR(100)
);

CREATE TABLE observations
(
 DATE timestamp
,PATIENT VARCHAR(100)
,ENCOUNTER VARCHAR(100)
,CATEGORY VARCHAR(100)
,CODE VARCHAR(100)
,DESCRIPTION VARCHAR(500)
,VALUE VARCHAR(500)
,UNITS VARCHAR(100)
,TYPE VARCHAR(100)
);

CREATE TABLE organizations
(
 Id varchar(100)
,NAME varchar(100)
,ADDRESS varchar(100)
,CITY varchar(50)
,STATE varchar(3)
,ZIP int
,LAT float
,LON float
,PHONE varchar(100)
,REVENUE float
,UTILIZATION int
);

drop table patients
CREATE TABLE patients
(
 Id VARCHAR(100)
,BIRTHDATE date
,DEATHDATE date
,SSN VARCHAR(100)
,DRIVERS VARCHAR(100)
,PASSPORT VARCHAR(100)
,PREFIX VARCHAR(100)
,FIRST VARCHAR(100)
,LAST VARCHAR(100)
,SUFFIX VARCHAR(100)
,MAIDEN VARCHAR(100)
,MARITAL VARCHAR(100)
,RACE VARCHAR(100)
,ETHNICITY VARCHAR(100)
,GENDER VARCHAR(100)
,BIRTHPLACE VARCHAR(100)
,ADDRESS VARCHAR(100)
,CITY VARCHAR(100)
,STATE VARCHAR(100)
,COUNTY VARCHAR(100)
,FIPS INT 
,ZIP INT
,LAT float
,LON float
,HEALTHCARE_EXPENSES float
,HEALTHCARE_COVERAGE float
,INCOME int
,Mrn int
);

CREATE TABLE payer_transitions
(
 PATIENT VARCHAR(100)
,MEMBERID VARCHAR(100)
,START_DATE timestamp
,END_DATE timestamp
,PAYER VARCHAR(100)
,SECONDARY_PAYER VARCHAR(100)
,PLAN_OWNERSHIP VARCHAR(100)
,OWNER_NAME VARCHAR(100)
);

CREATE TABLE payers
(
 Id VARCHAR(100)
,NAME VARCHAR(100)
,OWNERSHIP VARCHAR(100)
,ADDRESS VARCHAR(100)
,CITY VARCHAR(100)
,STATE_HEADQUARTERED VARCHAR(100)
,ZIP VARCHAR(100)
,PHONE VARCHAR(100)
,AMOUNT_COVERED float
,AMOUNT_UNCOVERED float
,REVENUE float
,COVERED_ENCOUNTERS int
,UNCOVERED_ENCOUNTERS int
,COVERED_MEDICATIONS int
,UNCOVERED_MEDICATIONS int
,COVERED_PROCEDURES int
,UNCOVERED_PROCEDURES int
,COVERED_IMMUNIZATIONS int
,UNCOVERED_IMMUNIZATIONS int
,UNIQUE_CUSTOMERS int
,QOLS_AVG float
,MEMBER_MONTHS int
);

CREATE TABLE procedures
(
 START timestamp
,STOP timestamp
,PATIENT varchar(100)
,ENCOUNTER varchar(100)
,CODE varchar(10)
,DESCRIPTION varchar(500)
,BASE_COST float
--,REASONCODE varchar(30)
--,REASONDESCRIPTION varchar(100)
);

CREATE TABLE providers
(
 Id varchar(100)
,ORGANIZATION varchar(100)
,NAME varchar(100)
,GENDER varchar(2)
,SPECIALITY varchar(100)
,ADDRESS varchar(100)
,CITY  varchar(80)
,STATE varchar(3)
,ZIP int
,LAT float
,LON float 
,ENCOUNTERS int
,PROCEDURES int
);

CREATE TABLE supplies
(
 DATE date
,PATIENT varchar(100) 
,ENCOUNTER varchar(100)
,QUANTITY int
,DESCRIPTION varchar(100) 
,CODE varchar(100)
);