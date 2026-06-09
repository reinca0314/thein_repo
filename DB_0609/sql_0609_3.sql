select current_database();

select film_id, title, release_year
from film
order by film_id
limit 5;

select film_id, title, release_year
from film
order by film_id
limit 4 offset 3;

select film_id, title, rental_rate 
from film
order by rental_rate desc
limit 10;

--fetch
select film_id, title
from film
order by title
fetch first 1 row only;

select film_id, title
from film
order by title
fetch first 5 row only;

select film_id, title
from film
order by title
offset 5 rows
fetch first 5 row only;

select payment_date
from payment
where payment_date::date in('2007-02-15', '2007-02-16');

select count(*)
from payment;

select count(*)
from payment
where payment_date::date in('2007-02-15', '2007-02-16');

select film_id, title
from film
where film_id <> 1
  and film_id <> 2
  and film_id <> 3
order by film_id;

--between
select payment_id, amount
from payment
where payment_id between 17503 and 17505
order by payment_id ;

--not between
select payment_id, amount
from payment
where payment_id between 17503 and 17505
order by payment_id ;

--between 날짜
select payment_id, amount, customer_id, payment_date
from payment
where payment_date
	between '2007-02-15' and '2007-02-20' and amount > 10
order by payment_date ;

--like
select first_name, last_name
from customer
where first_name like 'Jen%';

select first_name, last_name
from customer
where first_name like '%er'
order by first_name ;

select first_name, last_name
from customer
where first_name like '_her%'
order by first_name ;

