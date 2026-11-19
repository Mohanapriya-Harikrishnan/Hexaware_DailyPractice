create database ss;
use ss;
CREATE TABLE Items (
    item_code INT PRIMARY KEY,
    item_name VARCHAR(50),
    price INT,
    quantity INT
);

INSERT INTO Items VALUES
(101, 'Pen', 10, 100),
(102, 'Book', 50, 40),
(103, 'Pencil', 5, 80);
DELIMITER //

CREATE PROCEDURE PurchaseItem(
    IN code INT,
    IN qty INT
)
BEGIN
    DECLARE p INT;
    DECLARE stock INT;

    SELECT price, quantity INTO p, stock
    FROM Items
    WHERE item_code = code;

    IF p IS NULL THEN
        SELECT 'Item Not Found' AS Message;

    ELSEIF qty <= 0 THEN
        SELECT 'Invalid Quantity' AS Message;

    ELSEIF stock < qty THEN
        SELECT 'Insufficient Stock' AS Message;

    ELSE
        SELECT p * qty AS TotalBill;

        UPDATE Items
        SET quantity = quantity - qty
        WHERE item_code = code;
    END IF;

END //

DELIMITER ;
CALL PurchaseItem(101, 5);
SELECT * FROM Items;