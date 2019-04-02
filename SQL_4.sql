-- Arithemtic and Order By
-- Revenue (price * number of rentals) per video title 
SELECT f.title as "Film Title", count(r.rental_id) as "rental Price", f.rental_rate, count(r.rental_id) * f.rental_rate as Revenue
FROM film f, rental r, inventory i
WHERE f.film_id = i.film_id and i.inventory_id = r.inventory_id
GROUP BY 1
ORDER BY 4 desc;
-- desc form the biggest to the smallest, just ORDER BY form the smallest to the biggest value



-- What customer has paid us the most money 
SELECT p.customer_id, SUM(p.amount)
FROM payment p
GROUP BY 1
ORDER BY 2 desc;

-- What Store has historically Brought the most Revenue?
SELECT i.store_id as "Store ID", SUM(p.amount) as Revenue
FROM rental r, inventory i, payment p
WHERE p.rental_id = r.rental_id and r.inventory_id = i.inventory.id
GROUP BY 1
ORDER BY 2 desc;
