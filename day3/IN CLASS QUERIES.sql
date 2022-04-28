-- --
-- -- Presidents database
-- --

-- CREATE TABLE customer(
--     customer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(100),
--     last_name VARCHAR(100),
--     email VARCHAR(200),
--     address VARCHAR(150),
--     city VARCHAR(150),
--     customer_state VARCHAR(100),
--     zip_code VARCHAR(50)
-- );

-- CREATE TABLE "order"(
--     order_id SERIAL PRIMARY KEY,
--     order_date date DEFAULT CURRENT_DATE,
--     amount NUMERIC(4, 2),
--     customer_id INTEGER,
--     FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
-- );


-- INSERT INTO customer(first_name, last_name, email, address, city, customer_state, zip_code)
-- VALUES
-- ('George','Washington','gwash@usa.gov', '3200 Mt Vernon Hwy','Mt Vernon','VA','22121'),
-- ('John','Adams','jadamas@usa.gov', '1200 Hancock Ave', 'Quincy', 'MA','02169'),
-- ('Thomas','Jefferson','tjeff@usa.gov','931 Thomas Jefferson Pkway', 'Charlottesville', 'VA','02169'),
-- ('James','Madison','jmad@usa.gov','11350 Conway', 'Orange', 'VA','02169'),
-- ('James', 'Monroe','jmonroe@usa.gov','2050 James Monroe Parkway', 'Charlottesville','VA','02169

-- -- Inner Join
-- SELECT customer.first_name, customer.last_name, "order".order_date, "order".amount
-- FROM customer
-- INNER JOIN "order"
-- ON customer.customer_id = "order".customer_id

-- -- Left Join
-- SELECT customer.first_name, customer.last_name, "order".order_date, "order".amount
-- FROM customer
-- LEFT JOIN "order"
-- ON customer.customer_id = "order".customer_id

-- -- Right Join
-- SELECT customer.first_name, customer.last_name, "order".order_date, "order".amount
-- FROM customer
-- RIGHT JOIN "order"
-- ON customer.customer_id = "order".customer_id



-- -- Left Join only nulls
-- SELECT customer.first_name, customer.last_name, "order".order_date, "order".amount
-- FROM customer
-- LEFT JOIN "order"
-- ON customer.customer_id = "order".customer_id
-- WHERE "order".customer_id IS NULL

-- -- Right Join only nulls
-- SELECT customer.first_name, customer.last_name, "order".order_date, "order".amount
-- FROM customer
-- RIGHT JOIN "order"
-- ON customer.customer_id = "order".customer_id
-- WHERE "order".customer_id IS NULL

-- -- Right Join only nulls
-- SELECT customer.first_name, customer.last_name, "order".order_date, "order".amount
-- FROM customer
-- RIGHT JOIN "order"
-- ON customer.customer_id = "order".customer_id
-- WHERE "order".customer_id IS NULL

-- -- Right Join only nulls
-- SELECT customer.first_name, customer.last_name, "order".order_date, "order".amount
-- FROM customer
-- RIGHT JOIN "order"
-- ON customer.customer_id = "order".customer_id
-- WHERE "order".customer_id IS NULL



-- ---
-- ---DVD DATABASE
-- ---

-- -- MULTI JOINS
-- -- Join the Actors with the film they are in

-- SELECT first_name, last_name, title
-- FROM actor
-- JOIN film_actor
-- ON actor.actor_id = film_actor.actor_id
-- JOIN film
-- ON film.film_id = film_actor.film_id
-- WHERE first_name = 'Tom' 

-- -- first and last names of all actors 
-- -- that appeared in films in 2006 and 
-- -- the count of the those films

-- SELECT actor.actor_id,first_name, last_name, COUNT(release_year)
-- FROM actor
-- JOIN film_actor 
-- ON actor.actor_id = film_actor.actor_id
-- JOIN film
-- ON film_actor.film_id = film.film_id
-- WHERE release_year = 2006
-- GROUP BY actor.actor_id
-- ORDER BY COUNT(release_year) DESC;

-- -- Customer info for people from Angola
-- SELECT customer.first_name, customer.last_name, customer.email, country
-- FROM customer
-- JOIN address
-- ON address.address_id = customer.address_id
-- JOIN city
-- ON address.city_id = city.city_id
-- JOIN country
-- ON city.country_id = country.country_id
-- WHERE country.country = 'Angola'



-- -- Basic SubQuery
-- -- Subquery to find the 6 customers that have
-- -- A total amount of payments greater than 175

-- SELECT *
-- FROM customer
-- WHERE customer_id IN (
-- 	SELECT customer_id
-- 	FROM payment
-- 	GROUP BY customer_id
-- 	HAVING SUM(amount) >= 175
-- 	ORDER BY SUM(amount)
	
-- );


-- --Find all films with a language of 'English'

-- SELECT * 
-- FROM film
-- WHERE language_id IN (
-- SELECT language_id 
-- FROM language 
-- WHERE name ='English'
-- )
