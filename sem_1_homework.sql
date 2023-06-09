# создаём новую базу данных
CREATE DATABASE My_homeworks;

# переходим к использованию созданной базы (делаем ее активной)
USE My_homeworks;

# создаём в новой базе таблицу, задаём список полей и их тип данных
CREATE TABLE mobile_phones
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR (30) NOT NULL,
    manufacturer VARCHAR (20) NOT NULL,
    product_count INT DEFAULT 0,
    price DECIMAL
);

# заполняем таблицу данными
INSERT INTO mobile_phones
(product_name, manufacturer, product_count, price)
VALUES
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

# выводим название, производителя и цену товаров, количество которых превышает 2
SELECT product_name, manufacturer, price
FROM mobile_phones
WHERE product_count > 2;

# выводим весь ассортимент товаров марки "Samsung"
SELECT * FROM mobile_phones
WHERE manufacturer = 'Samsung';

# выводим товары, в которых есть упоминание "iPhone"
SELECT * FROM mobile_phones
WHERE product_name LIKE '%iPhone%';

# выводим товары, в которых есть упоминание "Samsung"
SELECT * FROM mobile_phones
WHERE product_name LIKE '%Samsung%' OR manufacturer LIKE '%Samsung%';

# выводим товары, в котовых есть цифры
SELECT * FROM mobile_phones
WHERE product_name RLIKE '[0-9]' OR manufacturer RLIKE '[0-9]';

# выводим товары, в котовых есть цифра 8
SELECT * FROM mobile_phones
WHERE product_name RLIKE '[8]' OR manufacturer RLIKE '[8]';
