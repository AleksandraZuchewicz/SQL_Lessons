-- LEFT()
-- MIN()
-- MAX()
-- How many rentals we have hd each month ?

SELECT left(r.rental_date,7), count(r.rental_id)
FROM rental r
GROUP BY 1
ORDER BY 2
;

-- Min rental date and max rental date for each movie?
SELECT
    f.title as "Film Title",
    max(r.rental_date) as "Last Rental Date",
    min(r.rental_date) as "First Rental Date"
FROM
    rental r,
    inventory i
WHERE
  r.inventory_id = i.inventory_id
    and i.film_id = f.film_id
GROUP BY
  f.film_id;
;

--Every customer's last rental date 
SELECT
    concat(c.first_name, " ", c.last_name) as Name,
    c.email as email,
    max(r.rental_date) as "Last Rental Date"
FROM
    rental r,
    customer c
WHERE
  r.customer_id = c.customer_id
GROUP BY
  c.customer_id;
