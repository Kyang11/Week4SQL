-- Monday Questions
-- How many actors are there with the last name ‘Wahlberg’?
SELECT count(LAST_NAME)
FROM actor
WHERE LAST_NAME ='Wahlberg';


-- How many payments were made between $3.99 and $5.99?
SELECT PAYMENT_ID,(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99


-- What film does the store have the most of? (search in inventory)
SELECT STORE_ID
FROM inventory



-- How many customers have the last name ‘William’?


SELECT COUNT(customer_id), LAST_NAME
FROM customer
WHERE LAST_NAME LIKE 'William%'
GROUP BY LAST_NAME
HAVING COUNT(customer_id) >= 0;

-- What store employee (get the id) sold the most rentals?
SELECT address_id
FROM store


-- How many different district names are there?
SELECT district, count(district)
from address
group by district

-- What film has the most actors in it? (use film_actor table and get film_id)
select film_id, max(actor_id)
from film_actor
group by film_id
order by film_id

-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select store_id, last_name
from customer
where last_name LIKE '%es'

-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

select amount, count(payment_id)
from payment
where rental_id> 250 and rental_id between 380 and 430
group by payment_id
having count(rental_id) > 250

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?


select rating, count(rating)
from film
group by rating




