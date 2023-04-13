CREATE DATABASE My_homeworks;

USE My_homeworks;

CREATE TABLE mobile_phones
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR (30) NOT NULL,
    manufacturer VARCHAR (20) NOT NULL,
    product_count INT DEFAULT 0,
    price DECIMAL
);

INSERT INTO mobile_phones
(product_name, manufacturer, product_count, price)
VALUES
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

SELECT product_name, manufacturer, price
FROM mobile_phones
WHERE product_count > 2;

SELECT * FROM mobile_phones
WHERE manufacturer = 'Samsung';

SELECT * FROM mobile_phones
WHERE product_name LIKE '%iPhone%';

SELECT * FROM mobile_phones
WHERE product_name LIKE '%Samsung%' OR manufacturer LIKE '%Samsung%';

SELECT * FROM mobile_phones
WHERE product_name RLIKE '[0-9]' OR manufacturer RLIKE '[0-9]';


SELECT * FROM mobile_phones
WHERE product_name RLIKE '[8]' OR manufacturer RLIKE '[8]';



git remote add origin https://github.com/katy2904/DataBase-and-MySQL.git
git branch -M main
git push -u origin main