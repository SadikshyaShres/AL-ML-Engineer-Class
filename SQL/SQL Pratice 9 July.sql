#Select -Reterive data from table
SELECT *
FROM sakila.actor;

#When you need to retrieve only specific columns 
SELECT first_name,
       last_name
FROM sakila.actor;

#DISTINCT- removing the duplicates values 
SELECT DISTINCT first_name
FROM sakila.actor;

#COUNT- count number of rows
SELECT COUNT(*)
FROM sakila.actor;

SELECT COUNT(first_name)
FROM sakila.actor;

#COUNT(DISTINCT)- Count unique values
SELECT COUNT(DISTINCT first_name)
FROM sakila.actor;

#Limit-Display only a certain number of rows
SELECT first_name,last_name 
FROM sakila.actor limit 200;

#Where -filter rows 
SELECT *
FROM sakila.film
WHERE rating='PG';

#where using and - both conditions must be true
SELECT * FROM
 sakila.film WHERE rating= 'R' and length >=92;
 
SELECT *FROM sakila.film
WHERE rating='PG'
AND rental_duration=5;
 
#where using OR
SELECT *
FROM sakila.film
WHERE rating='PG'
OR rental_duration=5;

#NOT-reverse a condition 
SELECT *
FROM sakila.film
WHERE rental_duration NOT IN (3,6,7);

#not equal to 6
SELECT *
FROM sakila.film
WHERE rental_duration !=6; #! act as not

#Order by-sort data 
#ascending 
SELECT title,rental_rate
FROM sakila.film
ORDER BY rental_rate ASC;

#descending 
SELECT title,rental_rate
FROM sakila.film
ORDER BY rental_rate DESC;

#Wildcard 
#like - used for searched pattern 
#the underscore sign_represent one single character
#% means zero or no characters 

#cities starting with AS
SELECT city
FROM sakila.city
WHERE city LIKE 'As%';

#Ratings containing PG 

SELECT rating
FROM sakila.film
WHERE rating LIKE 'P%G%';

SELECT city
FROM sakila.city
WHERE city LIKE '_a__s%';

#NULL-find missing values
#Rentals that have not been returned 
SELECT rental_id,
       customer_id,
       return_date
FROM sakila.rental
WHERE return_date IS NULL;

#is not null
#rentals that have been returned 

SELECT rental_id,
       customer_id,
       return_date
FROM sakila.rental
WHERE return_date IS NOT NULL;

#Between -used to filter ranges
SELECT rental_id,rental_date FROM sakila.rental
WHERE rental_date
BETWEEN '2005-05-06'
AND '2005-05-30';

# Movies between 90 and 120 minutes

SELECT title, length FROM sakila.film
WHERE length
BETWEEN 90
AND 120;

#Group by- Group similar values together
#Count movies in each rating 
SELECT rating, COUNT(*) AS total_movies
FROM sakila.film
GROUP BY rating;

#average movie length

SELECT rating,
    AVG(length) AS average_length
FROM sakila.film
GROUP BY rating;

#Longest movie 
SELECT rating,
       MAX(length) AS longest_movie
FROM sakila.film
GROUP BY rating;

#shortest movie
SELECT rating,
       MIN(length) AS shortest_movie
FROM sakila.film
GROUP BY rating;

#total movie length
SELECT rating,
       SUM(length) AS total_length
FROM sakila.film
GROUP BY rating;

#having -filter grouped result 
# Ratings having more than 200 movies
SELECT rating,
       COUNT(*) AS total_movies
FROM sakila.film
GROUP BY rating
HAVING COUNT(*)>200;

SELECT rating,
       COUNT(*) AS total_movies
FROM sakila.film
GROUP BY rating
ORDER BY total_movies DESC;

SELECT customer_id,
       COUNT(rental_id) AS count_rentals
FROM sakila.rental
GROUP BY customer_id
HAVING COUNT(rental_id) >= 30
ORDER BY count_rentals DESC
LIMIT 50;

