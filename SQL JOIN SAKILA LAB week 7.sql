use sakila;

#List the number of films per category.

SELECT * FROM film_category;

#Display the first and the last names, as well as the address, of each staff member. 

## to retrie the first, last name and the address id

SELECT first_name, last_name, address_id FROM staff;

### to join the address_id with the address tothe corresponding address table

SELECT staff_id.staff, address_id.staff
FROM staff
INNER JOIN address ON address.address_id=address.staff_id;

#Display the total amount rung up by each staff member in August 2005.

SELECT amount, staff_id, payment_date
FROM payment
WHERE payment_date BETWEEN '01-08-2005' AND '31-08-2005';

#List all films and the number of actors who are listed for each film.

SELECT actor_id, film_id FROM film_actor
GROUP BY actor_id
ORDER BY film_id;

#Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.

SELECT amount.payment, customer_id FROM payment
INNER JOIN customer_id ON customer.customer_id=payment.payment_id;