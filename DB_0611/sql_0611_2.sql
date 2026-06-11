select current_database();

CREATE TABLE products_3 (
    product_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE,
    price DECIMAL(10,2),
    stock INTEGER,
    status TEXT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products_3 (name, price, stock, status) VALUES
    ('Laptop', 999.99, 50, 'active'),
    ('Keyboard', 79.99, 100, 'active'),
    ('Mouse', 29.99, 200, 'active');

CREATE TABLE products_3_updates (
    name TEXT,
    price DECIMAL(10,2),
    stock INTEGER,
    status TEXT
);

INSERT INTO products_3_updates VALUES
    ('Laptop', 1099.99, 75, 'active'),      -- Update: price and stock change
    ('Monitor', 299.99, 30, 'active'),      -- Insert: new product
    ('Keyboard', NULL, 0, 'discontinued'),  -- Delete: mark as discontinued
    ('Headphones', 89.99, 50, 'active');    -- Insert: another new product

select * from products_3;
select * from products_3_updates;
--
MERGE INTO products_3 p
USING products_3_updates u
ON p.name = u.name
WHEN MATCHED AND u.status = 'discontinued' THEN
    DELETE
WHEN MATCHED AND u.status = 'active' THEN
    UPDATE SET
        price = COALESCE(u.price, p.price),
        stock = u.stock,
        status = u.status,
        last_updated = CURRENT_TIMESTAMP
WHEN NOT MATCHED AND u.status = 'active' THEN
    INSERT (name, price, stock, status)
    VALUES (u.name, u.price, u.stock, u.status);

CREATE TABLE shape (
    shape_id INT NOT NULL,
    shape_name VARCHAR NOT NULL
);
select * from shape;
--
create table customers(
	id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
);
select * from customers;

alter table customers
add column phone varchar(25);

alter table customers
add column fax varchar(25);
add column email varchar(400);

insert into customers (customer_name)
VALUES
   ('Apple'),
   ('Samsung'),
   ('Sony')
RETURNING *;

ALTER TABLE customers
ADD COLUMN contact_name VARCHAR(255);

UPDATE customers
SET contact_name = 'John Doe'
WHERE id = 1;

UPDATE customers
SET contact_name = 'Mary Doe'
WHERE id = 2;

UPDATE customers
SET contact_name = 'Lily Bush'
WHERE id = 3;

select * from customers;

alter table customers
alter column contact_name
set not null;

--
select * from pg_indexes
where tablename = 'employees';

CREATE TABLE publishers (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE categories_2 (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(255) NOT NULL,
    published_date DATE NOT NULL,
    description VARCHAR,
    category_id INT NOT NULL,
    publisher_id INT NOT NULL,
    FOREIGN KEY (publisher_id)
    REFERENCES publishers (publisher_id),
    FOREIGN KEY (category_id)
    REFERENCES categories_2 (category_id)
);
select * from publishers;
select * from categories_2;
select * from books;

CREATE TABLE assets (
    id serial PRIMARY KEY,
    name TEXT NOT NULL,
    asset_no VARCHAR NOT NULL,
    description TEXT,
    location TEXT,
    acquired_date DATE NOT NULL
);
select * from assets;

INSERT INTO assets(name,asset_no,location,acquired_date)
VALUES('Server','10001','Server room','2017-01-01'),
      ('UPS','10002','Server room','2017-01-01')
RETURNING *;

ALTER TABLE assets
ALTER COLUMN name TYPE VARCHAR(255);

ALTER TABLE assets
    ALTER COLUMN location TYPE VARCHAR(255),
    ALTER COLUMN description TYPE VARCHAR(255);

ALTER TABLE assets
ALTER COLUMN asset_no TYPE INT
USING asset_no::integer; 