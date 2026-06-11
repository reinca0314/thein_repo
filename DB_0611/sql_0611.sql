select current_database();

create table courses(
	  course_id serial PRIMARY KEY,
	  course_name VARCHAR(255) NOT NULL,
	  price DECIMAL(10,2) NOT NULL,
	  description VARCHAR(500),
	  published_date date
);

SELECT * FROM courses;

INSERT INTO courses( course_name, price, description, published_date)
VALUES
('PostgreSQL for Developers', 299.99, 'A complete PostgreSQL for Developers', '2020-07-13'),
('PostgreSQL Administration', 349.99, 'A PostgreSQL Guide for DBA', NULL),
('PostgreSQL High Performance', 549.99, NULL, NULL),
('PostgreSQL Bootcamp', 777.99, 'Learn PostgreSQL via Bootcamp', '2013-07-11'),
('Mastering PostgreSQL', 999.98, 'Mastering PostgreSQL in 21 Days', '2012-06-30');

SELECT * FROM courses order by course_id;

-- 데이터 수정
UPDATE courses
SET published_date = '2020-08-01'
WHERE course_id = 3;

UPDATE courses
SET published_date = '2020-07-01'
WHERE course_id = 2;

--
CREATE TABLE product_segment (
    id SERIAL PRIMARY KEY,
    segment VARCHAR NOT NULL,
    discount NUMERIC (4, 2)
);

SELECT * from product_segment;

INSERT INTO
    product_segment (segment, discount)
VALUES
    ('Grand Luxury', 0.05),
    ('Luxury', 0.06),
    ('Mass', 0.1);

CREATE TABLE product(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    price NUMERIC(10,2),
    net_price NUMERIC(10,2),
    segment_id INT NOT NULL,
    FOREIGN KEY(segment_id) REFERENCES product_segment(id)
);

INSERT INTO
    product (name, price, segment_id)
VALUES
    ('diam', 804.89, 1),
    ('vestibulum aliquet', 228.55, 3),
    ('lacinia erat', 366.45, 2),
    ('scelerisque quam turpis', 145.33, 3),
    ('justo lacinia', 551.77, 2),
    ('ultrices mattis odio', 261.58, 3),
    ('hendrerit', 519.62, 2),
    ('in hac habitasse', 843.31, 1),
    ('orci eget orci', 254.18, 3),
    ('pellentesque', 427.78, 2),
    ('sit amet nunc', 936.29, 1),
    ('sed vestibulum', 910.34, 1),
    ('turpis eget', 208.33, 3),
    ('cursus vestibulum', 985.45, 1),
    ('orci nullam', 841.26, 1),
    ('est quam pharetra', 896.38, 1),
    ('posuere', 575.74, 2),
    ('ligula', 530.64, 2),
    ('convallis', 892.43, 1),
    ('nulla elit ac', 161.71, 3);

UPDATE product
SET net_price = price - price * discount
FROM product_segment
WHERE product.segment_id = product_segment.id;

SELECT * FROM product order by id; 

update product p
set net_price = net_price + 1000
from product_segment s
where p.segment_id = s.id;

CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    completed BOOLEAN NOT NULL DEFAULT false
);

INSERT INTO todos (title, completed)
VALUES
    ('Learn basic SQL syntax', true),
    ('Practice writing SELECT queries', false),
    ('Study PostgreSQL data types', true),
    ('Create and modify tables', false),
    ('Explore advanced SQL concepts', true),
    ('Understand indexes and optimization', false),
    ('Backup and restore databases', true),
    ('Implement transactions', false),
    ('Master PostgreSQL security features', true),
    ('Build a sample application with PostgreSQL', false);

SELECT * from todos order by id;

DELETE FROM todos
WHERE id = 1;

DELETE FROM todos
WHERE id = 100;

delete from todos where id = 10;
delete from todos where id = 2 returning *;

DELETE FROM todos
WHERE completed = true
RETURNING *;

DELETE FROM todos;

--
create table member(
	id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	phone varchar(15) not null
);

CREATE TABLE denylist(
    phone VARCHAR(15) PRIMARY KEY
);

INSERT INTO member(first_name, last_name, phone)
VALUES ('John','Doe','(408)-523-9874'),
       ('Jane','Doe','(408)-511-9876'),
       ('Lily','Bush','(408)-124-9221');

INSERT INTO denylist(phone)
VALUES ('(408)-523-9874'),
       ('(408)-511-9876');

SELECT * FROM member;
SELECT * FROM denylist;

-- delete using
DELETE FROM member
USING denylist
WHERE member.phone = denylist.phone;

DELETE FROM member
WHERE phone IN (
    		select phone FROM denylist
);

select phone FROM denylist;

-- delete cascade
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY(department_id)
       REFERENCES departments(id)
       ON DELETE cascade
);

SELECT * FROM departments;
SELECT * FROM employees;

INSERT INTO departments (name)
VALUES
    ('Engineering'),
    ('Sales')
RETURNING *;

INSERT INTO employees (name, department_id)
VALUES
    ('John Doe', 1),
    ('Jane Smith', 1),
    ('Michael Johnson', 2)
RETURNING *;

DELETE FROM departments
WHERE id = 1;

SELECT * FROM employees;

CREATE TABLE basket(
    id SERIAL PRIMARY KEY,
    fruit VARCHAR(50) NOT NULL
);
INSERT INTO basket(fruit)
VALUES
  ('apple'),
  ('apple'),
  ('orange'),
  ('orange'),
  ('orange'),
  ('banana');

select fruit, COUNT(fruit)
from basket
GROUP BY fruit
having COUNT(fruit)> 1
ORDER by fruit;

delete from basket a
using basket b
where a.id < b.id and a.fruit = b.fruit;

delete from basket a
using basket b
where a.id > b.id and a.fruit = b.fruit;

select * from basket;

--SELECT id,
--        ROW_NUMBER() OVER( PARTITION BY fruit
--        ORDER by id DESC ) AS row_num
--        fruit
--FROM basket;


DELETE FROM basket
WHERE id IN
    (SELECT id
    FROM
        (SELECT id,
         ROW_NUMBER() OVER( PARTITION BY fruit
        ORDER BY  id ) AS row_num
        FROM basket ) t
        WHERE t.row_num > 1 );
