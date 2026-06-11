select current_database();

CREATE TABLE categories (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR (255) NOT NULL
);
select * from categories;

CREATE TABLE products (
  product_id serial PRIMARY KEY,
  product_name VARCHAR (255) NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES categories (category_id)
);
select * from products;

INSERT INTO categories (category_name)
VALUES
  ('Smartphone'),
  ('Laptop'),
  ('Tablet'),
  ('VR')
RETURNING *;

INSERT INTO products (product_name, category_id)
VALUES
  ('iPhone', 1),
  ('Samsung Galaxy', 1),
  ('HP Elite', 2),
  ('Lenovo Thinkpad', 2),
  ('iPad', 3),
  ('Kindle Fire', 3)
RETURNING *;

select* from products
natural join categories;

--GROUP BY
select * from payment;

select customer_id from payment;

select customer_id from payment
order by customer_id;

select customer_id from payment
group by customer_id
order by customer_id;

select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc;

SELECT
  payment_date::date payment_date,
  SUM(amount) sum
FROM
  payment
GROUP BY
  payment_date::date
ORDER BY
  payment_date DESC;

select
	customer_id,
	SUM (amount) sum_amount
from
	payment
group by
	customer_id
having sum(amount) > 200
order by
	sum_amount desc;

select store_id, count(customer_id)
from customer
group by store_id
having count(customer_id) > 300;

drop table if exists sales;

create table sales(
	brand VARCHAR NOT NULL,
    segment VARCHAR NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (brand, segment)
);
select * from sales;

INSERT INTO sales (brand, segment, quantity)
VALUES
    ('ABC', 'Premium', 100),
    ('ABC', 'Basic', 200),
    ('XYZ', 'Premium', 100),
    ('XYZ', 'Basic', 300)
RETURNING *;

SELECT
    brand,
    segment,
    SUM (quantity)
FROM
    sales
GROUP BY
    brand,
    segment;

SELECT
    brand,
    SUM (quantity)
FROM
    sales
GROUP BY
    brand;

SELECT
    segment,
    SUM (quantity)
FROM
    sales
GROUP BY
    segment;

select sum(quantity) from sales;

--UNION ALL
SELECT
    brand,
    segment,
    SUM (quantity)
from sales
GROUP BY
    brand,
    segment

UNION ALL

SELECT
    brand,
    NULL,
    SUM (quantity)
FROM
    sales
GROUP BY
    brand

UNION ALL

SELECT
    NULL,
    segment,
    SUM (quantity)
FROM
    sales
GROUP BY
    segment

UNION ALL

SELECT
    NULL,
    NULL,
    SUM (quantity)
FROM
    sales;
