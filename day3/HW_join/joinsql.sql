-- Week 5 - Wednesday
-- Questions

-- 1. List all customers who live in Texas (use
-- JOINs)

select concat(first_name,' ', last_name), district
from address
join customer
on address.address_id = customer.address_id
where district like 'Texas'

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name
select concat(first_name, '  ', last_name), amount
from payment
join customer
on customer.customer_id = payment.customer_id
where amount > 6.99
order by amount


-- 3. Show all customers names who have made payments over $175(use
-- subqueries)

SELECT concat( first_name, last_name) as full_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) >=175
    ORDER BY SUM(amount)
    )


-- 4. List all customers that live in Nepal (use the city
-- table)

select concat(first_name,' ' ,last_name) as full_name
from customer
join address 
on address.address_id = customer.address_id
join city
on city.city_id = address.city_id
join country 
on country.country_id = city.country_id
where country like 'Nepal'




-- 5. Which staff member had the most
-- transactions?

select concat(first_name,' ', last_name) as full_name, sum(amount)
from staff 
join payment
on payment.staff_id = staff.staff_id
GROUP BY full_name
having sum(amount) >=0



-- 6. How many movies of each rating are
-- there?
SELECT *
FROM (SELECT COUNT(rating) as cnt_rate, rating
from film
GROUP BY rating) as cnts


-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

SELECT *
From customer
where customer_id in (
    select customer_id
    from payment
    group by customer_id
    having sum(amount) >= 6.99
    order by sum(amount)
    )


-- 8. How many free rental did our store  give away?
 select store_id, sum(store_id)
 from inventory
 join rental 
 on inventory.inventory_id= rental.inventory_id
 join payment
 on rental.customer_id = payment.customer_id
 where amount =0
 group by store_id
 


