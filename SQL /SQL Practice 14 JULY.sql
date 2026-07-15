#CTE- Common table expression is a temporary result set created a inside a SQL statement 
#Total rentals by customer 

WITH customer_rental AS (
SELECT customer_id, 
COUNT(rental_id) AS total_rental
FROM rental
GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, cr.total_rental
FROM customer AS c
INNER JOIN customer_rental AS cr
ON c.customer_id= cr.customer_id
ORDER BY cr.total_rental DESC;

#Example 2 : Total Payments by Customer 
WITH customer_payment AS (
SELECT customer_id, 
COUNT(payment_id) AS total_payment 
FROM payment
GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, cp.total_payment
FROM customer AS c
INNER JOIN customer_payment AS cp
ON c.customer_id=cp.customer_id
ORDER BY cp.total_payment DESC;

#Example 3: Number of film in each catgory
WITH category_film_count AS (
SELECT category_id,
COUNT(film_id) AS total_film
FROM sakila.film_category
GROUP BY category_id
)
SELECT c.category_id,
c.name AS category_name,
cf.total_film
FROM sakila.category AS c
INNER JOIN category_film_count AS cf
ON c.category_id = cf.category_id
ORDER BY cf.total_film DESC;

#Reusing a CTE Multiple times 
WITH rental_count AS (
SELECT customer_id, 
COUNT(rental_id) AS total_rentals
FROM sakila.rental
GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, r1.total_rentals
FROM sakila.customer AS c
INNER JOIN rental_count AS r1
ON c.customer_id = r1.customer_id
WHERE r1.total_rentals >(
SELECT AVG (r2.total_rentals)
FROM rental_count AS r2
);

#MULTIPLE CTE 
WITH rental_summary AS(
SELECT customer_id,
COUNT(rental_id) AS total_rentals
FROM sakila.rental
GROUP BY customer_id
),
payment_summary AS(
SELECT customer_id, 
SUM(amount) AS total_payment
FROM sakila.payment
GROUP BY customer_id
)
SELECT c.customer_id, c.first_name, c.last_name, r.total_rentals,p.total_payment 
FROM sakila.customer AS c
INNER JOIN rental_summary AS r
ON c.customer_id = r.customer_id
INNER JOIN payment_summary AS p
ON c.customer_id = p.customer_id 
ORDER BY p.total_payment DESC;
------------------------------------------------------------------------------------------
#Recursive CTE: is a CTE that references itself. two main part - Anchor Query and Recursive Query
WITH RECURSIVE rental_dates AS 
( SELECT MIN(DATE(rental_date)) AS rental_day FROM sakila.rental
 UNION ALL 
 SELECT DATE_ADD(rental_day, INTERVAL 1 DAY) 
 FROM rental_dates 
 WHERE rental_day < ( 
   SELECT MAX(DATE(rental_date)) FROM sakila.rental 
      )
   ) 
   SELECT rental_day 
   FROM rental_dates;
---------------------------------------------------------------------------------
#temoprary table - table created temporarily for the current database session.
#It is automatically deleted when the database connection is closed.
CREATE TEMPORARY TABLE customer_payment_summary 
 SELECT customer_id, SUM(amount) AS total_payment 
 FROM sakila.payment GROUP BY customer_id;

#view the temporary table 
SELECT * FROM customer_payment_summary;
SELECT c.customer_id, c.first_name, c.last_name, cps.total_payment 
FROM sakila.customer AS c 
INNER JOIN customer_payment_summary AS cps 
ON c.customer_id = cps.customer_id 
ORDER BY cps.total_payment DESC;
----------------------------------------------------------------------------
#VIEW -virtual table based on a stored SQL query.
CREATE VIEW sakila.customer_payment_view AS 
SELECT c.customer_id, c.first_name, c.last_name, c.email, SUM(p.amount) AS total_payment 
FROM sakila.customer AS c 
INNER JOIN sakila.payment AS p
 ON c.customer_id = p.customer_id 
 GROUP BY c.customer_id, c.first_name, c.last_name, c.email;
 
 #Query the view
 SELECT * FROM sakila.customer_payment_view;

#filter the view
SELECT * FROM sakila.customer_payment_view WHERE total_payment > 100;

#Replace an existing view

CREATE OR REPLACE VIEW sakila.customer_payment_view AS 
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) 
AS customer_name, SUM(p.amount) AS total_payment 
FROM sakila.customer AS c 
INNER JOIN sakila.payment AS p 
ON c.customer_id = p.customer_id 
GROUP BY c.customer_id, c.first_name, c.last_name;

DROP VIEW sakila.customer_payment_view;
----------------------------------------------------------------------------------
#Data security with view : A view can improve data security by showing only selected columns or rows.
CREATE VIEW sakila.customer_public_information 
AS SELECT customer_id, first_name, last_name, email 
FROM sakila.customer WHERE active = 1;

SELECT * FROM sakila.customer_public_information;
--------------------------------------------------------------------
#Stored Procedure:  prepared collection of one or more SQL statements that is compiled and saved directly on the database server so it can be reused repeatedly.
#display all actors
DELIMITER //
CREATE PROCEDURE get_all_actors()
BEGIN
    SELECT
        actor_id,
        first_name,
        last_name
    FROM actor;
END //
DELIMITER ;
CALL get_all_actors();
#Input parameter - passes value into stored procedure 
#find films by rating 
DELIMITER //
CREATE PROCEDURE get_films_by_rating(
    IN p_rating VARCHAR(10)
)
BEGIN
    SELECT
        film_id,
        title,
        rating,
        rental_rate
    FROM sakila.film
    WHERE rating = p_rating;
END //
DELIMITER ;
CALL get_films_by_rating('PG');

#find customer by ID
DELIMITER //
CREATE PROCEDURE get_customer_by_id(
    IN p_customer_id INT
)
BEGIN
    SELECT
        customer_id,
        first_name,
        last_name,
        email
    FROM sakila.customer
    WHERE customer_id = p_customer_id;
END //
DELIMITER ;
CALL get_customer_by_id(15);

#Out parameter -returns a value from the stored procedure 
DELIMITER //
CREATE PROCEDURE total_customers(
    OUT customer_count INT
)
BEGIN
    SELECT COUNT(*)
    INTO customer_count
    FROM sakila.customer;
END //
DELIMITER ;

CALL total_customers(@count);
SELECT @count AS total_customers;

#Example-Total Payment of a Customer
DELIMITER //
CREATE PROCEDURE customer_payment(
    IN p_customer_id INT,
    OUT total_payment DECIMAL(10,2)
)
BEGIN
    SELECT SUM(amount)
    INTO total_payment
    FROM sakila.payment
    WHERE customer_id = p_customer_id;
END //
DELIMITER ;

CALL customer_payment(1, @payment);
SELECT @payment AS total_payment;

#Dynamic SQL Procedure- is a stored procedure that builds an SQL statement as a string while it is running and then executes it.
DELIMITER //
CREATE PROCEDURE display_table(
    IN p_table_name VARCHAR(50)
)
BEGIN
    SET @sql_query = CONCAT(
        'SELECT * FROM sakila.',
        p_table_name,
        ' LIMIT 10'
    );

    PREPARE stmt FROM @sql_query;

    EXECUTE stmt;

    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
CALL display_table('actor');
----------------------------------------------------------------------------------------
#Cursor- database object that retrieves the result of a query one row at a time.
DELIMITER //

CREATE PROCEDURE actor_cursor()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE fname VARCHAR(45);
    DECLARE lname VARCHAR(45);

    DECLARE actor_cur CURSOR FOR
        SELECT first_name, last_name
        FROM sakila.actor;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET done = TRUE;

    OPEN actor_cur;

    read_loop: LOOP

        FETCH actor_cur INTO fname, lname;

        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT CONCAT(fname,' ',lname) AS Actor_Name;

    END LOOP;

    CLOSE actor_cur;

END //

DELIMITER ;
CALL actor_cursor();