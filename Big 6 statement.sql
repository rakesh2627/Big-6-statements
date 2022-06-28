Big 6 statement assignment solution


-- 1.
select 
staff_id,
first_name,
last_name,
email
from staff;

-- 2. 
select
store_id,
count(inventory_id) as inventory_count
from inventory
group by store_id;

-- 3.
select 
active as Store1_Active_Status,
count(customer_id) as Store1_Active_Customers_Count
from customer
where store_id = 1 and active = 1
group by active;

select 
active as Store2_Active_Status,
count(customer_id) as Store2_Active_Customers_Count
from customer
where store_id = 2 and active = 1
group by active;
-- 4.
select 
count(email)
from customer;

-- 5.
select 
store_id,
count(distinct title) as count_of_unique_film_title,
count(distinct category.name) as unique_categories
from category,inventory
left join film 
on film.film_id = inventory.film_id
group by store_id;

-- 6.
select 
min(replacement_cost) as Minimum_Replacement_Cost,
max(replacement_cost) as Maximum_Replacement_Cost,
avg(replacement_cost) as Average_Replacement_Cost
from film;

-- 7.
select
max(amount) as maximum_payment,
avg(amount) as average_payment
from payment;

-- 8.
select
rental_id,
count(rental_id) as counts_of_rentals
from rental
group by rental_id
order by counts_of_rentals desc ;
