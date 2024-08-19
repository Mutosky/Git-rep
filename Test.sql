SELECT *
FROM table
name
unit price
new price(unit price * 1.1)


SELECT *
FROM order
WHERE order_date = "2024"

SELECT *
FROM order_items
WHERE items = '6' AND total_price > '30' 

SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72)

SELECT *
FROM Date_of_birth
WHERE customers BETWEEN '1990-01-01' AND '2000-01-01'

SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR 
      address LIKE '%AVENUE%'
      AND
      LIKE phone_number '%9'  

 SELECT *
 FROM customers
 WHERE first_names REGEXP '^ELKA|^AMBUR'
       last_name REGEXP 'EY$|ON$'
       last_name REGEXP '^MY |SE'
       last_name REGEXP 'B[RU]'

SELECT *
FROM shipment
WHERE orders IS NULL       

SELECT *,
quantity * unit_price AS total_price 
FROM order_items
WHERE order_id = 2
ORDER BY total_price

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3



CREATE DATABASE notes_app;
USE notes_app;

CREATE TABLE notes {
      id integer PRIMARY KEY AUTO_INCREAMENT,
      title VARCHAR(255) NOT NULL,
      contents TEXT NOT NULL,
      created TIMESTAMP NOT NULL DEFAULT NOW()
};

INSERT INTO notes (title, contents)
VALUES
('My fisrt note', 'I had a lot of struggles trying to set up this sql'),
('My secong note', 'Finally i did it');