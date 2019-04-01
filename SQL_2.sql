-- customer id, name(first and last), mail adress;

SELECT customer.customer_id, customer.last_name, customer.first_name;
customer.adress
FROM customer, address
Where customer.adress_id = adress.adress.id;

