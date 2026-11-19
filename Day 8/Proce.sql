DELIMITER //
 
CREATE PROCEDURE AddNumbers9()
BEGIN
    DECLARE a INT DEFAULT 10;
    DECLARE b INT DEFAULT 20;
    DECLARE c INT;
 
    SET c = a + b;
 
    SELECT c AS Sum;
END //
 
DELIMITER ;
 
CALL AddNumbers9();


DELIMITER //
 
CREATE PROCEDURE totalBill(price int, qty int)
 
 
   begin
declare   total int;
set total=price*qty;
select total as "TOATL AMOUNT";
 END//

DELIMITER ;
 
 
call totalBill(100,5);
 
 Delimiter;

create procedure subtractNum(a int,b int)

begin

select a-b as result;

end

delimiter;

call subtractNum(8,4);
delimiter //
 
create procedure calculateMarks(s1 int, s2 int,s3 int, s4 int)
begin
    declare total int;
    declare grade varchar(1);
    declare avg_marks decimal(5,2);
 
    set total = s1 + s2 + s3 + s4;
    set avg_marks = total / 4;
    if(avg_marks>=90) then
        set grade='A';
    elseif(avg_marks>=50) then
        set grade='B';
    else
        set grade='C';
    end if;
 
    select total as 'total marks', avg_marks as 'average marks', grade as 'grade';
end //
 
delimiter ;
call calculateMarks(70,50,90,80)

delimiter;

create procedure checkVote(age int)

begin

if age>=18 then

select "Eligible to vote";

else

select "Not eligible to vote";

end if;

end;

delimiter;

call checkVote(20);
DELIMITER //
 
CREATE PROCEDURE CheckVoting1(
    IN age INT,
    OUT result VARCHAR(30)
)
BEGIN
 
    IF age >= 18 THEN
        SET result = 'Eligible to Vote';
    ELSE
        SET result = 'Not Eligible';
    END IF;
 
END //
 
DELIMITER ;
 
 
SET @voting_result = '';
 
CALL CheckVoting1(18, @voting_result);
 

SELECT @voting_result AS Voting_Status;

DELIMITER //

CREATE PROCEDURE CalBill(
    IN units INT,
    OUT bill INT
)
BEGIN
    IF units <= 100 THEN
        SET bill = 0;
    ELSEIF units <= 200 THEN
        SET bill = (units - 100) * 4;
    ELSEIF units <= 300 THEN
        SET bill = 100 * 4 + (units - 200) * 3;
    ELSE
        SET bill = 100 * 4 + 100 * 3 + (units - 300) * 2;
    END IF;
END //

DELIMITER ;

SET @bill = 0;

CALL CalBill(250, @bill);

SELECT @bill AS Electricity_Bill;

DELIMITER //
 
CREATE FUNCTION CheckVoting90(age INT)

RETURNS VARCHAR(30)

DETERMINISTIC

BEGIN
 
    IF age >= 18 THEN

        RETURN 'Eligible to Vote';

    ELSE

        RETURN 'Not Eligible';

    END IF;
 
END //
 
DELIMITER ;
 
SELECT CheckVoting90(14) AS Voting_Status;
DELIMITER //
 
CREATE PROCEDURE loops()

BEGIN
 
  declare i int default 1;
 
  while(i<=10)   do

  select i;

  set i=i+1;

  END while;
 
END //
 
DELIMITER ;
 
call loops();
 DELIMITER //

CREATE PROCEDURE natural()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 10 DO
        SELECT i;
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

CALL natural();
DELIMITER //

CREATE PROCEDURE factorial()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE fact INT DEFAULT 1;

    WHILE i <= 5 DO
        SET fact = fact * i;
        SET i = i + 1;
    END WHILE;

    SELECT fact AS Factorial;
END //

DELIMITER ;

CALL factorial();
DELIMITER //

CREATE PROCEDURE sumNatural()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE total INT DEFAULT 0;

    WHILE i <= 10 DO
        SET total = total + i;
        SET i = i + 1;
    END WHILE;

    SELECT total AS Sum;
END //

DELIMITER ;

CALL sumNatural();
DELIMITER //

CREATE PROCEDURE multiplication()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 10 DO
        SELECT 5 * i AS Result;
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

CALL multiplication();
 DELIMITER //
 
CREATE PROCEDURE loops1()

BEGIN
 
  declare i int default 1;
 
 
repeat
 
select i ;

set i=i+1;

until i<5

END repeat;

 
END //
 
DELIMITER ;
 
call loops();
 DELIMITER //

CREATE PROCEDURE table5()
BEGIN
    DECLARE i INT DEFAULT 1;

    REPEAT
        SELECT 5 * i AS Result;
        SET i = i + 1;
    UNTIL i > 10
    END REPEAT;

END //

DELIMITER ;

CALL table5();
 
 
 



 
 
 



 
 