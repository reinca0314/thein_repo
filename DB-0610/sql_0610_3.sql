select current_database();
select * from customer;
select * from payment;

-- inner join
select c.customer_id, c.first_name, p.amount, p.payment_date
from customer c
inner join payment p
	on c.customer_id = p.customer_id
order by p.payment_date desc;

select * from film;
-- self join
select f1.title, f2.title, f1.length
from film f1
inner join film f2
	on f1.film_id <> f2.film_id and f1.length = f2.length ;

-- 테이블 3개 조인
select
	c.customer_id, c.first_name||'-'|| c.last_name customer_name,
	p.amount, p.payment_date,
	s.first_name||'-'||s.last_name staff_name
from customer c
inner join payment p using(customer_id)
inner join staff s using(staff_id)
order by p.payment_date;

-- drop table

drop table if exists t1;

create table tt1(
	label char(1) primary key
);
create table tt2(
	score int primary key
);

insert into tt1
values('A'),
	  ('B');
insert into tt2
values(1),
	  (2),
	  (3);

select * from tt1;
select * from tt2;

select * from tt1
cross join tt2
order by tt1.label;

