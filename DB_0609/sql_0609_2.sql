select current_database();

create table colors(
	id serial primary key,
	bcolor varchar,
	fcolor varchar
);

select * from colors;
-- 레코드 데이터 입력
insert into colors(bcolor, fcolor)
values ('red', 'red');

insert into colors(bcolor, fcolor)
values ('yellow', 'yellow');

insert into colors(bcolor, fcolor)
values ('blue', 'blue');

insert into colors(bcolor, fcolor)
values ('red', null),
		(null, 'red'),
		('green', 'green'),
		('green', null),
		('blue', null),
		('black', 'black');

-- distinct: 중복제
select distinct bcolor
from colors
order by bcolor;

--
create table student_scores(
	id serial primary key,
	name varchar(50) not null,
	subject varchar(50) not null,
	score integer not null 
);
select * from student_scores;

insert into student_scores(name, subject, score)
values
  ('Alice', 'Math', 90),
  ('Bob', 'Math', 85),
  ('Alice', 'Physics', 92),
  ('Bob', 'Physics', 88),
  ('Charlie', 'Math', 95),
  ('Charlie', 'Physics', 90);

select
	distinct on (name) name,
	subject,
	score
from student_scores
order by
	name, score desc;

--where 조건
select * from customer;

select last_name, first_name
from customer
where first_name = 'Jamie';

select last_name, first_name
from customer
where first_name = 'Jamie' and last_name = 'Rice';

select last_name, first_name
from customer
where last_name = 'Rodriguez' or first_name = 'Adam';

select first_name, last_name
from customer
where first_name in ('Ahn', 'Anne', 'Annie');

select first_name, last_name
from customer
where first_name like 'Ann%';

select first_name, length(first_name) name_length
from customer
where first_name like 'A%'
	and length(first_name) between 3 and 5
order by name_length DESC;

select first_name, last_name
from customer
where first_name like 'Bra%' and last_name <> 'Motley';

select 1 = 1 as result;
select true and true as result2;
select true and false as result3;
select true and null as result4;
select false and false as result5;
select false and null as result6;
select null and null as result7;

select title, length, rental_rate
from film
where length > 180 and rental_rate < 1;

select 1 <> 1 as result;
select true or true as result;
select true or false as result;
select true or null as result;
select false or false as result;
select false or null as result;
select null or null as result;
