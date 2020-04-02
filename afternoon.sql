-- table-person
CREATE TABLE person ( person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) );
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'Mel Lam', 25, 182, 'Dallas', 'Purple' ), ( 'Chez Chang', 2, 50, 'Dallas', 'Blue' ), ( 'Jo Jo', 20, 160, 'Austin', 'Red' ), ( 'Mo Mo', 35, 182, 'SF', 'Pink' ),( 'Bo Bo', 15, 189, 'Houston', 'Black' );
SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height ASC;
SELECT * FROM person ORDER BY age DESC;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age < 20 OR age > 30;
SELECT * FROM person WHERE age != 27;
SELECT * FROM person WHERE favorite_color != 'Red';
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';
SELECT * FROM person WHERE favorite_color IN ( 'Orange', 'Green', 'Blue' );
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' );

-- table-orders
CREATE TABLE orders ( order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Apple', 1.50, 5 ),( 1, 'Banana', 5.50, 15 ),( 2, 'Strawberries', 20.50, 10 ),( 3, 'Blueberry', .50, 5 ),( 4, 'Watermelon', 11.50, 4 );
SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;

-- table-employee
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';
SELECT MAX(birth_date) from employee;
SELECT MIN(birth_date) from employee;
SELECT * FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

-- table-invoice
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE total < 5;
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;
SELECT SUM(total) FROM invoice;