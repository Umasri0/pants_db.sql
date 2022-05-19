"""creating a pants table with LIKE operator by using MYSQL"""


CREATE DATABASE pants_db;
USE pants_db;
CREATE TABLE pants_db(
    pant_id INT NOT NULL AUTO_INCREMENT,
    Article VARCHAR(100),
    pant_size VARCHAR(100),
    color VARCHAR(100),
    last_worn INT,
    PRIMARY KEY (pant_id)
);
INSERT INTO pants_db(Article ,pant_size ,color ,last_worn)
VALUES('Jeans','S','white',10),
('Bell-bottom','L','Blue',20),
('Cargo pants','M','black',12),
('Jeans','XS','peach',200),
('Cargo pants','XL','green',34),
('Bell-bottom','XXL','brown',54);
DESC pants_db;
SELECT* FROM pants_db;

#starting with specified letter
SELECT * FROM pants_db WHERE Article LIKE 'J%';

#ending with specified letter
SELECT 
    *
FROM
    pants_db
WHERE
    color LIKE '%e';

#finding a value in any position
SELECT * FROM pants_db WHERE Article LIKE '%a%';

#finding the value which is in 2nd postion
SELECT * FROM pants_db WHERE color LIKE '_e%';
SELECT * FROM pants_db WHERE color LIKE '_l%';

#starting with a letter and atleast have 2 characters in length
SELECT * FROM pants_db WHERE Article LIKE 'B_%';

#starting with a letter and atleast have 3 characters in length
SELECT * FROM pants_db WHERE color LIKE 'b__%';

#starts with a letter and ends with another letter
SELECT * FROM pants_db WHERE Article LIKE 'C%s';
SELECT * FROM pants_db WHERE Article LIKE 'J%s';

SELECT * FROM pants_db WHERE color LIKE '___e%';

SELECT * FROM pants_db WHERE color LIKE 'B____%';

SELECT * FROM pants_db WHERE Article LIKE '%n%';

SELECT * FROM 	pants_db WHERE color LIKE 'p%h';

SELECT * FROM pants_db WHERE Article LIKE 'r%s';

