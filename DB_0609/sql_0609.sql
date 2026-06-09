select current_database();

-- select [필드명] from [테이블명];
select * from customer;

select first_name from customer;

select first_name, last_name, email from customer;

select first_name || ' ' || last_name, email from customer;

-- Alias 필드명 재정의.
select
	first_name || ' ' || last_name as full_name,
	email
from
	customer;

-- Alias 생략
select 
	first_name || ' ' || last_name full_name2,
	email 
from 
	customer;

-- Alias "빈칸 적"
select 
	first_name || ' ' || last_name "full name3",
	email 
from 
	customer;

-- 현재시간
select  now();

select first_name, last_name, email
from customer
order by first_name;

select first_name, last_name, email
from customer
order by first_name desc;

select first_name, last_name, email
from customer
order by first_name asc, last_name desc; 

select first_name, length(first_name) len
from customer
order by len desc;

-- 테이블 생성
create table sort_demo(num INT);
-- 확인
select * from sort_demo;
-- row 값 추가
insert into sort_demo(num)
values (1), (2), (3), (null);
-- 확인
select * from sort_demo;

-- sort할때 null의 위치
select * from sort_demo
order by num DESC;

-- null을 맨 아래로
select * from sort_demo
order by num desc nulls last;

-- null을 맨 위로
select * from sort_demo
order by num nulls first;


