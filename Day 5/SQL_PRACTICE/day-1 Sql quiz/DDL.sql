-- Active: 1794803553453@@127.0.0.1@3306@mysql
CREATE DATABASE SQL_Practice;
Create TABLE Student(
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Age INT,
    City VARCHAR(50),
    Marks INT
);
ALTER TABLE Student
ADD Email varchar(30),
MODIFY Student_Name varchar(100),
MODIFY COLUMN Age SMALLINT,
RENAME COLUMN City To Student_City;
ALTER TABLE Student
DROP COLUMN Email;
ALTER table Student
RENAME TABLE Student To Student_Details;

DESC Student;



CREATE TABLE Employee (
    Emp_ID int,
    Emp_Name varchar(50),
    Salary decimal(10,2),
    Department varchar(30),
    Joining_Date date
);
ALTER table Employee
    ADD Phone_Number int,
    ADD Date_of_Birth date,
MODIFY Salary decimal(12,2);





CREATE TABLE Product (
    Product_ID int,
    Product_Name varchar(100),
    Price decimal(10,2),
    Quantity int
);
TRUNCATE TABLE Product;


CREATE TABLE Department (
    Dept_ID int,
    Dept_Name varchar(50),
    Location varchar(50)
);
DROP TABLE Department;



CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18)
);


CREATE TABLE Bank_Account (
    Account_ID INT PRIMARY KEY,
    Account_Holder VARCHAR(50) NOT NULL,
    Balance DECIMAL(10,2) DEFAULT 0,
    Account_Type VARCHAR(20)
    CHECK (Account_Type IN ('Savings', 'Current'))
);
CHECK (Account_Type IN ('Savings', 'Current'))


CREATE TABLE Department_Master (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);
CREATE TABLE Employee_Master (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID)
    REFERENCES Department_Master(Dept_ID)
);

CREATE TABLE Student_Exam (
    Exam_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Marks INT CHECK (Marks BETWEEN 0 AND 100),
    Result VARCHAR(20) DEFAULT 'Pending'
);
CHECK (Marks BETWEEN 0 AND 100)

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL UNIQUE,
    Order_Date DATE,
    Amount DECIMAL(10,2) CHECK (Amount > 0),
    Order_Status VARCHAR(30) DEFAULT 'Processing'
);


SHOW TABLES;
SELECT * FROM Student;

CREATE DATABASE IF NOT EXISTS SQL_Practice;

USE SQL_Practice;
DESCRIBE Department;

DESCRIBE Employee;

DESCRIBE Student;
DESCRIBE Product;
