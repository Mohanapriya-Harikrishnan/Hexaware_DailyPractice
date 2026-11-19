create database fal;
use fal;
CREATE DATABASE IF NOT EXISTS hexawrae;
USE hexawrae;

-- Create Employee Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    experience INT,
    salary DECIMAL(10,2)
);

-- Insert Values
INSERT INTO Employee VALUES
(101, 'Amit', 1, 25000),
(102, 'Riya', 2, 30000),
(103, 'Rahul', 3, 35000),
(104, 'Priya', 5, 40000),
(105, 'Neha', 4, 45000);

-- Create Stored Procedure
DELIMITER //

CREATE PROCEDURE UpdateSalary(IN id INT)
BEGIN
    DECLARE exp INT;

    SELECT experience INTO exp
    FROM Employee
    WHERE emp_id = id;

    IF exp <= 1 THEN
        UPDATE Employee
        SET salary = salary * 1.10
        WHERE emp_id = id;

    ELSEIF exp <= 3 THEN
        UPDATE Employee
        SET salary = salary * 1.15
        WHERE emp_id = id;

    ELSE
        UPDATE Employee
        SET salary = salary * 1.20
        WHERE emp_id = id;
    END IF;

    SELECT * FROM Employee WHERE emp_id = id;

END //

DELIMITER ;

-- Call Procedure
CALL UpdateSalary(105);
select * from Employee;