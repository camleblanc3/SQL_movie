create table customers(
customer_id serial primary key,
first_name VARCHAR(120),
last_name VARCHAR(120)
);
create table employees(
employee_id serial primary key,
first_name VARCHAR(120),
last_name VARCHAR(120)
);
create table movies(
movie_id serial primary key,
movie_title VARCHAR(120),
movie_rating VARCHAR(20)
);
create table concession_inventory(
concession_id serial primary key,
concession_name VARCHAR(120),
concession_type VARCHAR(120)
);
create table tickets(
ticket_id serial primary key,
customer_id integer,
foreign key(customer_id) references customers(customer_id),
employee_id integer,
foreign key(employee_id) references employees(employee_id),
movie_id integer,
foreign key(movie_id) references movies(movie_id)
);
create table concession_receipts(
receipt_id serial primary key,
receipt_price numeric(7,2),
customer_id integer,
foreign key(customer_id) references customers(customer_id),
employee_id integer,
foreign key(employee_id) references employees(employee_id)
);
create table inventory_receipt(
receipt_id integer,
foreign key(receipt_id) references concession_receipts(receipt_id),
concession_id integer,
foreign key(concession_id) references concession_inventory(concession_id)
);


