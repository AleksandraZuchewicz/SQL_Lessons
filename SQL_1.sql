
SELECT title, rental_rate
FROM film
WHERE rental_rate = .99;

SELECT first_name, last_name, email, store_id
FROM customer
WHERE store_id = 2;

SELECT count (title), rental_rate
FROM film
WHERE rental_rate = .99;

SELECT COUNT(title) rental_rate
FROM film
group by rental_rate;
#or group by 2 - grouo by secound colummn

SELECT COUNT(title), rating
FROM film
group by 2;

SELECT COUNT(film_id), rating
FROM film
group by 2;

SELECT COUNT(film_id), rating, rental_rate
FROM film
group by 2,3;
 