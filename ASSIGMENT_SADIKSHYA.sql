#SQL Assign 
# 1. Get all customers whose first name starts with 'J' and who are active.
SELECT * FROM customer 
WHERE first_name Like 'J%'
and active = 1; 
------------------------------------------------------------------------------------
#2. Find all films where the title contains 'ACTION' -- or the description contains 'WAR'.
SELECT * From sakila.film
WHERE  title like '%ACTION%'
OR description like '%WAR%';
------------------------------------------------------------------------------------------
#3. List all customers whose last name is not 'SMITH' and whose first name ends with 'a'.
SELECt * FROM customer
WHERE last_name <> 'SMITH'
and first_name like '%A';
------------------------------------------------------------------------------------------------
#4. Get all films where the rental rate is greater than 3.0 and the replacement cost is not null.
SELECT * FROM sakila.film
WHERE rental_rate > 3.0
and replacement_cost IS NOT NULL;
-------------------------------------------------------------------------------------------------------
#5. Count how many customers exist in each store who have active status = 1.
SELECT store_id, COUNT(customer_id) AS active_customer_count 
FROM customer 
WHERE active= 1
GROUP BY store_id;
-----------------------------------------------------------------------------------------------
#6.Show distinct film ratings available in the film table.
SELECT DISTINCT rating FROM film;
-----------------------------------------------------------------------------------------------
#7. Find the number of films for each rental duration where the average length is more than 100 minutes
SELECT rental_duration, 
COUNT(film_id) as film_count,
AVG(length) as average_length
FROM sakila.film
GROUP BY rental_duration
HAVING avg(length)>100;
-----------------------------------------------------------------------------------------
#8. List payment dates and total amount paid per date, but only include days where more than 100 payments were made.
SELECT DATE(payment_date) AS payment_date,
COUNT(payment_id) AS payment_count,
SUM(amount) as total_amount
FROM sakila.payment
GROUP BY DATE(payment_date)
HAVING COUNT(payment_id) > 100
ORDER BY payment_date;
--------------------------------------------------------------------------------------------
#9. Find customers whose email address is null or ends with '.org'.
SELECT * FROM customer
WHERE email IS NULL
or email LIKE '%org';
-----------------------------------------------------------------------------------------
#10. List all films with rating 'PG' or 'G', and order them by rental rate in descending order.
SELECT * FROM sakila.film
WHERE rating IN('PG','G')
ORDER BY rental_rate DESC;
#---------------------------------------------------------------------------------------------------
#11. Count how many films exist for each length where the film title starts with 'T' and the count is more than 5.
SELECT length,
       COUNT(film_id) AS film_count
FROM sakila.film
WHERE title LIKE 'T%'
GROUP BY length
HAVING COUNT(film_id) > 5;
--------------------------------------------------------------------------------------------------------
#12. List all actors who have appeared in more than 10 films.
SELECT actor_id,
COUNT(film_id) AS film_count
FROM film_actor
GROUP BY actor_id
HAVING COUNT(film_id) >10;
---------------------------------------------------------------------------------------------------
#Find the top 5 films with the highest rental rates and longest lengths combined, ordering by rental rate first and length second.
SELECT film_id, title, rental_rate, LENGTH 
FROM film
ORDER BY rental_rate DESC,
LENGTH DESC LIMIT 5;
------------------------------------------------------------------------------------------------
#14.Show all customers along with the total number of rentals they have made, ordered from most to least rentals.
SELECT customer_id,
COUNT(rental_id)AS total_rental
FROM rental
GROUP BY customer_id
ORDER BY total_rental DESC;
---------------------------------------------------------------------------------------------------
#15. List the film titles that have never been rented.
SELECT title
FROM film
WHERE film_id NOT IN ( SELECT inventory.film_id
FROM inventory 
JOIN  rental ON inventory.inventory_id = rental.inventory_id);
-------------------------------------------------------------------------------------------
#BUILT IN FUNCTION
-------------------------------------------------------------------------------------------------
#1. Identify if there are duplicates in Customer table. Don't use customer id to check the duplicates
SELECT first_name,last_name, email,
COUNT(*) AS duplicate_count
FROM customer
GROUP BY first_name,last_name, email
HAVING COUNT(*)>1;
---------------------------------------------------------------------------------------------
#2.Number of times letter 'a' is repeated in film descriptions
SELECT 
SUM(CHAR_LENGTH(LOWER(description)) - CHAR_LENGTH(REPLACE(LOWER(description), 'a', ''))) 
AS total_a_count_in_descriptions
FROM film;
-----------------------------------------------------------------------------------------------
#3. Number of times each vowel is repeated in film descriptions 
SELECT
SUM(LENGTH(description) - LENGTH(REPLACE(description,'a',''))) AS total_a,
SUM(LENGTH(description) - LENGTH(REPLACE(description,'e',''))) AS total_e,
SUM(LENGTH(description) - LENGTH(REPLACE(description,'i',''))) AS total_i,
SUM(LENGTH(description) - LENGTH(REPLACE(description,'o',''))) AS total_o,
SUM(LENGTH(description) - LENGTH(REPLACE(description,'u',''))) AS total_u
FROM sakila.film;
------------------------------------------------------------------------------------------------
# Display the payments made by each customer-Month wise, Year wise, Week wise 
SELECT customer_id,
YEAR(payment_date) AS payment_year,
MONTH(payment_date) AS payment_month,
WEEK(payment_date) AS payment_week,
SUM(amount) AS total_payment
FROM sakila.payment
GROUP BY customer_id, YEAR(payment_date), MONTH(payment_date),WEEK(payment_date)
ORDER BY customer_id, payment_year, payment_month, payment_week;
---------------------------------------------------------------------------------------
#Check if any given year is a leap year or not. You need not consider any table from sakila database. Write within the select query with hardcoded date
SELECT 2024 AS year_checked,
CASE WHEN (2024 % 4 = 0 AND 2024 % 100 != 0) OR (2024 % 400 = 0) 
THEN 'Leap Year' 
ELSE 'Not a Leap Year' end as  result;
------------------------------------------------------------------------------------------------------
#6. Display number of days remaining in the current year from today.
SELECT DATEDIFF(
CONCAT(YEAR(CURDATE()),'-12-31'),
CURDATE()) as day_remaining;
----------------------------------------------------------------------------------------------------
#7 Display quarter number(Q1,Q2,Q3,Q4) for the payment dates from payment table.
SELECT payment_date,
CONCAT('Q', QUARTER(payment_date)) AS quarter
FROM payment;