--- MULTI JOINS

-- I want to see what actors are in what films
-- SELECT first_name, last_name, title
-- FROM actor
-- JOIN film_actor
-- ON actor.actor_id = film_actor.actor_id
-- JOIN film
-- ON film.film_id = film_actor.film_id
-- WHERE first_name LIKE 'Tom' and last_name = 'Miranda'


-- SELECT CONCAT(first_name,' ', last_name), title
-- FROM actor
-- JOIN film_actor
-- ON actor.actor_id = film_actor.actor_id
-- JOIN film
-- ON film.film_id = film_actor.film_id

-- First and last names of all 
-- actors that appeared in films in 2006
-- and the count of those films

-- SELECT CONCAT(actor.first_name,' ', actor.last_name) as full_name, COUNT(film.film_id)
-- FROM actor
-- JOIN film_actor
-- ON actor.actor_id = film_actor.actor_id
-- JOIN film
-- ON film_actor.film_id = film.film_id
-- WHERE release_year = 2006
-- GROUP BY full_name
-- ORDER BY COUNT(film.film_id) DESC;

-- SELECT actor.actor_id, actor.first_name, actor.last_name, COUNT(film.film_id)
-- FROM actor
-- JOIN film_actor
-- ON actor.actor_id = film_actor.actor_id
-- JOIN film
-- ON film_actor.film_id = film.film_id
-- WHERE release_year = 2006
-- GROUP BY actor.actor_id
-- ORDER BY COUNT(film.film_id) DESC;

-- Customer info first, last, email, country for all the people in Angola
-- SELECT first_name, last_name, email, country
-- FROM customer
-- JOIN address
-- ON address.address_id = customer.address_id
-- JOIN city 
-- ON address.city_id = city.city_id
-- JOIN country
-- ON city.country_id = country.country_id
-- WHERE country = 'Angola'

-- SELECT *
-- FROM customer
-- WHERE customer_id IN (
--     SELECT customer_id
--     FROM payment
--     GROUP BY customer_id
--     HAVING SUM(amount) >=175
--     ORDER BY SUM(amount)
--     )

-- find all the films with a language of English
-- SELECT *
-- FROM film
-- WHERE language_id IN
-- (SELECT language_id
-- FROM language
-- WHERE name = 'English');

-- find all the ratings that have over 100 films with that rating
-- SELECT *
-- FROM (SELECT COUNT(rating) as cnt_rate, rating
-- from film
-- GROUP BY rating) as cnts
-- WHERE cnts.cnt_rate >200;


-- I want to match customers first/last name pair
-- to the counts of actor appearence in films they rented

-- SELECT CONCAT(customer.first_name, ' ', customer.last_name) as customer_name, actor_full_name, COUNT(actor_full_name) as number_of_rental_appearences
-- FROM customer
-- JOIN rental ON customer.customer_id = rental.customer_id
-- JOIN inventory ON inventory.inventory_id = rental.inventory_id
-- JOIN film ON inventory.film_id = film.film_id
-- JOIN film_actor ON film_actor.film_id = film.film_id
-- JOIN (SELECT DISTINCT CONCAT(actor.first_name, ' ', actor.last_name) as actor_full_name, actor_id FROM actor) as a_names
-- ON a_names.actor_id = film_actor.actor_id
-- GROUP BY customer_name, actor_full_name
-- ORDER BY customer_name, number_of_rental_appearences DESC
-- ;


-- SELECT first_name, last_name, email, country
-- FROM customer
-- JOIN address
-- ON address.address_id = customer.address_id
-- JOIN city 
-- ON address.city_id = city.city_id
-- JOIN country
-- ON city.country_id = country.country_id
-- WHERE country = 'Angola'








