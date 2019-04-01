-- customer id, name(first and last), mail adress;

SELECT customer.customer_id, customer.last_name,
    address.address
FROM customer, address
Where customer.address_id = address.address_id;

-- list of every film, category of that film, language of that film, 
Select f.title, l.name, c.name
From film f, film_category fc, language l , category c
WHERE f.film_id = fc.film_id and c.category_id = fc.category_id and
    l.language_id = f.language_id ; 

-- nicknems for tables names - after table category use space and e.g first letter 