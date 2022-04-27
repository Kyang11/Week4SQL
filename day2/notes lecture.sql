-- -- change the c_order to order
-- ALTER TABLE c_order
-- RENAME TO "order";

-- -- add emailt ot he customer table
-- ALTER TABLE customer
-- ADD email VARCHAR(150);

-- --add email to kevin

-- UPDATE customer
-- SET email = 'kevinb@codingtemple.com'
-- WHERE customer_id = 1;


-- -- Delete all Kevin's from the customer table
-- DELETE FROM customer
-- WHERE name = 'Kevin';



-- ----------Other stuff we didn't do--------

-- -- Changing database structure (When needed)
-- -- Is done using the following commands/clauses, which are also apart of the DDL statement family
-- -- The statements we use to change the database tables are:
-- -- ALTER, UPDATE/SET, DELETE/WHERE, ADD(used with an ALTER statment), DROP

-- ALTER TABLE c_order
-- ALTER COLUMN cart_id
-- DROP NOT NULL;

-- -- Check the structure of order_date data
-- SELECT order_date
-- FROM c_order;

-- -- Update order_date
-- UPDATE c_order
-- SET order_date = '2021-04-07'
-- WHERE order_date = '2021-04-06' AND cart_id = 1;

-- -- DELETE statment for brand where the seller_id is 2
-- DELETE FROM c_order
-- WHERE order_id = 1;



-- SELECT *
-- FROM c_order;

-- -- ADD statment for the customer table
-- -- Adding an email column for customers
-- -- Usually used with an Alter statment

-- ALTER TABLE customer
-- ADD email VARCHAR(150);

-- UPDATE customer
-- SET email = 'joelc@codingtemple.com'
-- WHERE customer_id = 1;

-- SELECT *
-- FROM customer;

-- -- DROP statement for removing a table from the database
-- DROP TABLE inventory CASCADE;

-- DDL Clauses: Data Definition Language
-- SQL CREATE STATEMENTS
-- name data_type column-constraint (if available)

-- CREATE TABLE customer(
-- 	customer_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(100),
-- 	last_name VARCHAR(100),
-- 	address VARCHAR(150),
-- );

-- -- Brand Table Creation
-- CREATE TABLE brand(
-- 	seller_id SERIAL PRIMARY KEY,
-- 	brand_name VARCHAR(150),
-- 	contact_number VARCHAR(15),
-- 	address VARCHAR(150)
-- );

-- CREATE TABLE cart(
-- 	cart_id SERIAL PRIMARY KEY,
-- 	customer_id INTEGER NOT NULL,
-- 	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE --optional but recommended if you don't do this you get orphans which is no beuno
-- );

-- CREATE TABLE c_order(
--     order_id SERIAL PRIMARY KEY,
--     order_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
--     sub_total NUMERIC(8,2),
--     total_cost NUMERIC(10,2),
--     upc INTEGER NOT NULL,
--     FOREIGN KEY (upc) REFERENCES inventory(upc) ON DELETE CASCADE
-- )

-- CREATE TABLE inventory(
-- 	upc SERIAL PRIMARY KEY,
-- 	product_amount INTEGER,
-- 	order_id INTEGER NOT NULL,
-- 	FOREIGN KEY(order_id) REFERENCES c_order(order_id) ON DELETE CASCADE 
-- );

-- CREATE TABLE product(
-- 	item_id SERIAL PRIMARY KEY,
-- 	amount NUMERIC(5,2),
-- 	prod_name VARCHAR(100),
-- 	upc INTEGER NOT NULL,
-- 	seller_id INTEGER NOT NULL,
-- 	FOREIGN KEY(upc) REFERENCES inventory(upc) ON DELETE CASCADE,
-- 	FOREIGN KEY(seller_id) REFERENCES brand(seller_id) ON DELETE CASCADE 
-- );


-- Insertion of data into Database Tables

-- Insert for customer table




-- INSERT INTO customer(
--     first_name,
--     last_name,
--     address
-- ) VALUES(
--     'Kevin',
--     'Beier',
--     '123 Mocking Bird Lane'
-- )
-- -- Insert statement for brand
-- INSERT INTO brand(
--     brand_name,
--     contact_number,
--     address
-- )
-- VALUES(
--     'Coding Temple llc',
--     '773-555-4490',
--     '222 W Ontario ST Chicago, IL'
-- )

-- -- Insert into cart
-- INSERT INTO cart(
--     customer_id
-- )VALUES(1)



-- -- Insert statement for inventory
-- INSERT INTO inventory(

-- ) VALUES (
-- 	25,
-- );


-- -- Insert statement for c_order
-- INSERT INTO c_order(
--     sub_total,
--     total_cost,
--     upc
-- ) VALUES(
--     20.99,
--     25.95,
--     1
-- )

-- -- Insert statement for product
-- INSERT INTO product(
--     amount,
--     prod_name,
--     upc,
--     seller_id
-- ) VALUES(
--     20.00,
--     'Python 101',
--     1,
--     1
-- )

-- SELECT *
-- -- FROM product;