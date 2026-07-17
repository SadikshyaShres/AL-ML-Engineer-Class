-------- USING SUBQUERY -----------------
#1. display all customer details who have made more than 5 payments. using subquery 
SELECT * FROM sakila.customer 
WHERE customer_id IN (
 SELECT customer_id FROM sakila.payment
GROUP BY customer_id 
HAVING COUNT(payment_id) > 5 );
-----------------------------------------------------------------------------------------------------------------------
#2. Find the names of customers who never made a payment.
SELECT customer_id, first_name, last_name 
FROM sakila.customer 
WHERE customer_id NOT IN (
SELECT customer_id 
FROM sakila.payment);
-----------------------------------------------------------------------------------------------------------------------
# 3.List all films whose rental rate is higher than the average rental rate of all films. Using Subquery 
Select film_id, title, rental_rate 
FROM sakila.film 
WHERE rental_rate > (
SELECT AVG(rental_rate)
FROM sakila.film );
-------------------------------------------------------------------------------------------------------------------
#4.Find all staff members who handled a payment greater than the average payment amount. using Subquery 
SELECT DISTINCT s.staff_id, s.first_name, s.last_name
FROM sakila.staff AS s
INNER JOIN sakila.payment AS p
ON s.staff_id = p.staff_id
WHERE p.amount > (
SELECT AVG(amount)
FROM sakila.payment );
---------------------------------------------------------------------------------------------------------------------------
#5. Find all customers who have the same address as customer with ID 1  using subquery
SELECT customer_id, first_name , last_name, address_id
FROM sakila.customer 
WHERE address_id = (
SELECT address_id 
FROM sakila.customer 
WHERE customer_id =1 
)
AND customer_id <> 1;
--------------------------------------------------------------------------------------------------------------------
#USING CTE
#6. Find the names of actors who have acted in more than 10 films. using CTE
WITH actor_films AS (
SELECT actor_id, 
COUNT(film_id) AS total_films
FROM sakila.film_actor
GROUP BY actor_id
HAVING COUNT(film_id) > 10
)
SELECT a.actor_id, a.first_name , a.last_name , af.total_films
FROM sakila.actor AS a
INNER JOIN actor_films AS af
ON a.actor_id = af.actor_id;
-------------------------------------------------------------------------------------------------------------
#7.Display the customers who rented films in the same month as customer with ID 5. Using CTE
WITH customer_month AS (
SELECT MONTH(rental_date) AS rental_month
FROM sakila.rental 
WHERE customer_id = 5 )
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM sakila.customer c
JOIN sakila.rental r
ON c.customer_id = r.customer_id
JOIN customer_month m 
ON MONTH (r.rental_date) = m.rental_month 
WHERE c.customer_id <>5;
---------------------------#USING VIEW--------------------------------------------------------------------------
#5.List the titles of films that were never rented. 
CREATE VIEW sakila.film_never_rented AS 
SELECT f.film_id, f.title 
FROM sakila.film AS f
WHERE f.film_id NOT IN (
SELECT i.film_id 
FROM sakila.inventory AS i 
INNER JOIN sakila.rental AS r
ON i.inventory_id = r.inventory_id );

SELECT * FROM sakila.film_never_rented;
-------------------------------------------------------------------------------------------------------------------
#8 Show the title and rental duration of films whose rental duration is greater than the average. Using VIEW
CREATE OR REPLACE VIEW film_above_average AS 
SELECT film_id, title, rental_duration FROM sakila.film
WHERE rental_duration > (
SELECT AVG(rental_duration)
FROM sakila.film);

SELECT * FROM film_above_average;
--------------------------#Using Temporary Table----------------------------------------------------------------------
#10 List all payments that are greater than the average of all payments.
CREATE TEMPORARY TABLE average_payment AS
SELECT AVG(amount) AS avg_amount
FROM sakila.payment;

SELECT * FROM average_payment;

SELECT p.payment_id, p.customer_id, p.staff_id, p.amount, p.payment_date
FROM sakila.payment AS p
INNER JOIN average_payment AS ap
ON p.amount > ap.avg_amount;





