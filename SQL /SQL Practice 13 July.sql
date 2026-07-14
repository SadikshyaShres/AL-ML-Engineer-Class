#SQL Joins 
------------------------------------------------
#Inner Join - Display only the record that have matching value in both tables : One to Many 
#---One address may  be connected multiple customers----
Select c.customer_id, c.first_name, c.last_name, a.address
From sakila.customer As c 
Inner Join sakila.address As a 
On c.address_id = a.address_id;

#Inner join with three tables -- Customer, Address and City : One to Many 
Select c.customer_id,c.first_name, c.last_name, a.address, ci.city
From sakila.customer As c
Inner join sakila.address AS a
On c.address_id = a.address_id
Inner Join sakila.city As ci 
On a.city_id = ci.city_id;

#Inner Join -- Customer and Rental : One to many 
Select c.customer_id, c.first_name, c.last_name, r.rental_id, r.rental_date
FROM sakila.customer AS c 
Inner Join sakila.rental as r 
On c.customer_id = r.customer_id;

#One to One relationship - means one record in the first table is connected to only one record in the second table and vice versa
#Store and manager in staff 
SELECT
    st.store_id,
    s.staff_id,
    CONCAT(s.first_name, ' ', s.last_name) AS manager_name
FROM sakila.store AS st
INNER JOIN sakila.staff AS s
ON st.manager_staff_id = s.staff_id;

#Many to one relationship- means many record in the first table are connected to one record in the second table 
#film and inventory 
Select f.film_id, f.title, i.inventory_id, i.store_id
From sakila.film as f 
Inner join sakila.inventory as i 
On f.film_id = i.film_id;

#many to many relationship --means many records in the first table can be connected to many records in the second table
#film and actor 
Select f.film_id, f.title, a.actor_id, a.first_name, a.last_name
From sakila.film as f 
Inner join sakila.film_actor as fa
On f.film_id = fa.film_id
Inner join sakila.actor As a
On fa.actor_id = a.actor_id;

#catory and film - many to many relationship
Select f.film_id, f.title, c.category_id,c.name as 
category_name 
From sakila.film as f
Inner Join sakila.film_category as fc
On f.film_id = fc.film_id
Inner join sakila.category as c
On fc.category_id = c.category_id;

#customer rental history
Select c.customer_id, concat(c.first_name,'',c.last_name)as customer_name,
f.title, r.rental_date, r.return_date
From sakila.customer as c
Inner join sakila.rental as r
On c.customer_id = r.customer_id
Inner join sakila.inventory as i 
On r.inventory_id = i.inventory_id
Inner join sakila.film as f
on i.film_id = f.film_id;

---------------------------------------------------------------------------------------------------------
#left Join - display all records from the left table and matching record from the right table when there no match SQL displays null
#Display all film and their inventory- one to many 
Select f.film_id, f.title, i.inventory_id
From sakila.film as f
Left join sakila.inventory as i
on f.film_id = i.film_id;

#find film that are not in inventory
Select f.film_id, f.title 
From sakila.film as f
Left Join sakila.inventory as i 
On f.film_id = i.film_id
Where i.inventory_id is null;

-----------------------------------------------------------------------
#Right join- display all records from the right table and matching records from left table 
Select r.rental_id,  c.customer_id, c.first_name
From sakila.rental as r
Right Join sakila.customer as c
On r.customer_id = c.customer_id;
-----------------------------------------------------------------------------------
#Full-Outer join -returns all rows from both tables. If there is no match, the missing side contains NULL values.
#my sql does not support full outer join directly.It can be simulated using Left join , right join and Union
SELECT f.film_id, f.title, i.inventory_id, i.store_id
FROM sakila.film AS f
LEFT JOIN sakila.inventory AS i
ON f.film_id = i.film_id
UNION
SELECT f.film_id, f.title, i.inventory_id, i.store_id
FROM sakila.film AS f
RIGHT JOIN sakila.inventory AS i
ON f.film_id = i.film_id;
-------------------------------------------------------------------------------------------
#Cross join - combines every row from the first table with every row from the second table. called cartesian product
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, s.store_id
FROM sakila.customer AS c
CROSS JOIN sakila.store AS s;
---------------------------------------------------------------------------------
#Self Join -joins a table with itself. Aliases are used to treat the same table as two separate tables.
SELECT s1.staff_id, CONCAT(s1.first_name, ' ', s1.last_name) AS staff_name, s2.staff_id AS coworker_id,
CONCAT(s2.first_name, ' ', s2.last_name) AS coworker_name,
s1.store_id
FROM sakila.staff AS s1
INNER JOIN sakila.staff AS s2
ON s1.store_id = s2.store_id
AND s1.staff_id < s2.staff_id;
----------------------------------------------------------------------------------------

#SUBQUERY-query written inside another SQL query. It is also called an inner query or nested query.
#Subquery in where condition
SELECT film_id, title, rental_rate 
FROM sakila.film 
WHERE rental_rate > 
( SELECT AVG(rental_rate) 
FROM sakila.film );
#Customer who made a payment greater than $10
SELECT customer_id, first_name, last_name 
FROM sakila.customer 
WHERE customer_id 
IN 
( SELECT customer_id 
FROM sakila.payment WHERE amount > 10 );

#Subquery in select - returns a value that is displayed as an additional column in the result.
#subquery should usually return only one value for each row.
SELECT c.customer_id, c.first_name, c.last_name, 
(SELECT SUM(p.amount) 
FROM sakila.payment AS p 
WHERE p.customer_id = c.customer_id ) 
AS total_payment FROM sakila.customer AS c;
#example- display film and number of inventory copies
SELECT f.film_id, f.title, 
( SELECT COUNT(*) 
FROM sakila.inventory 
AS i WHERE i.film_id = f.film_id ) 
AS inventory_count FROM sakila.film AS f;

#Derived table - subquery written inside the FROM clause.
#result of the subquery acts like a temporary table that the outer query can use.
SELECT customer_id, total_payment 
FROM ( SELECT customer_id, SUM(amount) AS total_payment 
FROM sakila.payment GROUP BY customer_id ) 
AS customer_payments WHERE total_payment > 100;

#example- average payment by customer
SELECT AVG(total_payment) AS average_customer_payment 
FROM ( SELECT customer_id, SUM(amount) AS total_payment 
FROM sakila.payment GROUP BY customer_id ) AS payment_summary;

#Correlated Subquery-subquery that depends on the outer query.
#inner query uses a value from the outer query and runs once for each row processed by the outer query.
SELECT f1.film_id, f1.title, f1.rating, f1.rental_rate 
FROM sakila.film AS f1 WHERE f1.rental_rate > 
( SELECT AVG(f2.rental_rate) 
FROM sakila.film AS f2 WHERE f2.rating = f1.rating );
#example-Films That Are Available in Inventory
SELECT f.film_id, f.title FROM sakila.film 
AS f WHERE EXISTS 
( SELECT 1 FROM sakila.inventory AS i 
WHERE i.film_id = f.film_id );
