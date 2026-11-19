create database hexawrae;

use hexawrae;

CREATE TABLE Student (

    roll INT PRIMARY KEY,

    name VARCHAR(50),

    fee DECIMAL(10,2),

    subject VARCHAR(50)

);
 
INSERT INTO Student VALUES

(101, 'Amit', 25000, 'Python'),

(102, 'Riya', 30000, 'Java'),

(103, 'Rahul', 28000, 'SQL'),

(104, 'Priya', 32000, 'Data Science'),

(105, 'Neha', 27000, 'Web Development');
 
 
DELIMITER //
 
CREATE PROCEDURE ShowStudent1()

BEGIN
 
    DECLARE v_name VARCHAR(50);

    DECLARE v_fee DECIMAL(10,2);

    DECLARE v_subject VARCHAR(50);
 
    SELECT name, fee, subject

    INTO v_name, v_fee, v_subject

    FROM Student

    WHERE roll = 101;

 
    SELECT v_name AS Name,

           v_fee AS Fee,

           v_subject AS Subject;
 
END //
 
DELIMITER ;
 
CALL ShowStudent1();
 USE hexawrae;

DROP PROCEDURE IF EXISTS UpdateFee1;

DELIMITER //

CREATE PROCEDURE UpdateFee1(IN r INT)
BEGIN
    DECLARE v_count INT DEFAULT 0;
    DECLARE v_subject VARCHAR(50);

    SELECT COUNT(*) INTO v_count
    FROM Student
    WHERE roll = r;

    IF v_count = 0 THEN
        SELECT 'Student Not Found' AS Result;
    ELSE
        SELECT subject INTO v_subject
        FROM Student
        WHERE roll = r;

        IF v_subject = 'Java' THEN
            UPDATE Student
            SET fee = fee + 100
            WHERE roll = r;
        ELSE
            UPDATE Student
            SET fee = fee + 200
            WHERE roll = r;
        END IF;

        SELECT * FROM Student
        WHERE roll = r;
    END IF;

END //

DELIMITER ;

CALL UpdateFee1(102);
SELECT DATABASE();
SHOW COLUMNS FROM Student;
SHOW CREATE PROCEDURE UpdateFee;
 select * from Student;
 
 