# SQL BUILT IN FUNCTION -
#String function-: used to work with text values such as titles, addresss and email address 

SELECT title FROM sakila.film;

#Lpad adds the characters to the left side of the string 

SELECT title, LPAD(title, 25, '*') AS left_padded FROM sakila.film LIMIT 5;

#Rpad adds the characters to the right of the string 

SELECT title, RPAD(title, 25, '*') AS right_padded FROM sakila.film LIMIT 5;

SELECT title, LPAD(RPAD(title, 20, '*'), 25, '*') AS padded_title FROM sakila.film LIMIT 5;

#Substring- extracts part of string

SELECT title, SUBSTRING(title, 5, 9) AS short_title FROM sakila.film;

#Substr-works the same way as Substring 

SELECT title, SUBSTR(title, 1, 5) AS first_five_characters FROM sakila.film LIMIT 10;

#Concat-combines two or more string 

SELECT first_name, last_name, CONCAT(first_name, ' ', last_name) AS full_name FROM sakila.actor;

#Concat_WS- means concatenate with separator 

SELECT CONCAT_WS(' - ', first_name, last_name) AS actor_name FROM sakila.actor;

#Reverse - reverse the character of the string 

SELECT title, REVERSE(title) AS reversed_title FROM sakila.film LIMIT 10;

#Length
SELECT title, LENGTH(title) AS title_length FROM sakila.film WHERE LENGTH(title) >= 8;

#Charlength 
SELECT title, CHAR_LENGTH(title) AS character_count FROM sakila.film LIMIT 10;

#Locate- finds the position of a substring inside another string '

SELECT email, LOCATE('@', email) AS at_position FROM sakila.customer;

#Substring with locate- this can be used to extract the domain with email address
SELECT email, SUBSTRING(email, LOCATE('@', email) + 1) AS domain FROM sakila.customer;

#Substring index-returns part of string before or after a delimeter

SELECT email, SUBSTRING_INDEX(email, '@', 1) AS email_username FROM sakila.customer; #extract the username from an email

SELECT email, SUBSTRING_INDEX(email, '@', -1) AS email_domain FROM sakila.customer; #extract the domain 

#positive 1 return the part before @
#Negative -1 return the part before @

#UPPER- converts text to uppercase 
SELECT title, UPPER(title) AS uppercase_title FROM sakila.film LIMIT 10;

#LOWER -converts text to lowercase
SELECT email, LOWER(email) AS lowercase_email FROM sakila.customer LIMIT 10;

#Left- returns a specified number of characters from the left side
SELECT title, LEFT(title, 5) AS first_five_characters FROM sakila.film LIMIT 10;

#Right- returns a specified number of characters from the right side
SELECT title, RIGHT(title, 5) AS last_five_characters FROM sakila.film LIMIT 10;

#Replace-replace one part of a string with another value
SELECT title, REPLACE(title, 'A', '@') AS changed_title FROM sakila.film LIMIT 10;

#Case statement- creates conditional result 
-- IF ELSE Statement -- 
#using film length 
SELECT title, length, CASE WHEN length < 60 THEN 'Short Film' WHEN length BETWEEN 60 AND 120 THEN 'Medium Film' ELSE 'Long Film' END AS film_category FROM sakila.film;
#using film rating 
SELECT title, rating, CASE WHEN rating = 'G' THEN 'General Audience' WHEN rating = 'PG' THEN 'Parental Guidance' WHEN rating = 'PG-13' THEN 'Parents Strongly Cautioned' WHEN rating = 'R' THEN 'Restricted' ELSE 'Adults Only' END AS rating_description FROM sakila.film;

#REGEXP- Searches for a pattern inside text 
#finding title beginning with A
SELECT title FROM sakila.film WHERE title REGEXP '^A'; #^A means the title must start w

#finding titles ending with R 
SELECT title FROM sakila.film WHERE title REGEXP 'R$'; #R$ means the title must ends with R 

#finding title containing three consecutive words
SELECT title FROM sakila.film WHERE LOWER(title) REGEXP '[aeiou]{3}';

#find titles that do not contain three consecutive vowels 
SELECT title FROM sakila.film WHERE LOWER(title) NOT REGEXP '[aeiou]{3}';

#Count with REGEXP 
SELECT COUNT(*) AS films_starting_with_a FROM sakila.film WHERE title REGEXP '^A'; #Counts films that starts with A 
SELECT COUNT(*) AS film_count FROM sakila.film WHERE LOWER(title) REGEXP '[aeiou]{3}'; #Count films containing three consecutive word

#Math Operation 

#Round - rounds a number to a specific number of decimal places 
SELECT amount, ROUND(amount, 0) AS rounded_amount FROM sakila.payment LIMIT 10;

#CEIL or CELING- rounds a number upwards to the nearest whole number 
SELECT amount, CEIL(amount) AS rounded_up FROM sakila.payment LIMIT 10;

#Floor- rounds a number downwards to the nearest number
SELECT amount, FLOOR(amount) AS rounded_down FROM sakila.payment LIMIT 10;

#ABS- returns the absolute or postive value of a number
SELECT ABS(-25) AS positive_value;

#Power- raises one number to the poweer of another 
SELECT film_id, POWER(rental_duration, 2) AS duration_squared FROM sakila.film LIMIT 10;

#MOD- returns the remainder after divison 

SELECT film_id, title FROM sakila.film WHERE MOD(film_id, 2) = 0; #find even film ID 
SELECT film_id, title FROM sakila.film WHERE MOD(film_id, 2) = 1; #find odd Film ID

#RAND- generate a random decimal value between 0 and 1

SELECT title FROM sakila.film ORDER BY RAND() LIMIT 5;

#date and time function 
#date- strores data only 
SELECT payment_date, DATE(payment_date) AS payment_day FROM sakila.payment LIMIT 10;

#Time - extract only the time portion 
SELECT payment_date, TIME(payment_date) AS payment_time FROM sakila.payment LIMIT 10;

#Year- return the year 
SELECT payment_date, YEAR(payment_date) AS payment_year FROM sakila.payment LIMIT 10;

#Month- returns the month number 
SELECT payment_date, MONTH(payment_date) AS payment_month FROM sakila.payment LIMIT 10;

#Monthname-returns the full month name 
SELECT payment_date, MONTHNAME(payment_date) AS month_name FROM sakila.payment LIMIT 10;

#Day- returns the day of the month 
SELECT payment_date, DAY(payment_date) AS payment_day FROM sakila.payment LIMIT 10;

#Dayname- returns the name of the day 
SELECT payment_date, DAYNAME(payment_date) AS payment_day_name FROM sakila.payment LIMIT 10;

#hour- return the hour portion 
SELECT payment_date, HOUR(payment_date) AS payment_hour FROM sakila.payment LIMIT 10;

#datediff- caluclates the number of days between two dates
#it only calculates compelete date difference in day- it ignores the time portion
SELECT rental_id, rental_date, return_date, DATEDIFF(return_date, rental_date) AS rental_days FROM sakila.rental WHERE return_date IS NOT NULL LIMIT 20;

#timestam diff- calculates the difference using a specific unit 
SELECT rental_id, rental_date, return_date, TIMESTAMPDIFF(HOUR, rental_date, return_date) AS rental_hours FROM sakila.rental WHERE return_date IS NOT NULL LIMIT 20;

#finding rentals returned within 24 hours
SELECT rental_id, customer_id, rental_date, return_date, 
TIMESTAMPDIFF(HOUR, rental_date, return_date) AS hours_taken 
FROM sakila.rental WHERE return_date 
IS NOT NULL AND TIMESTAMPDIFF(HOUR, rental_date, return_date) <= 24;











