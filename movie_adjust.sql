insert into customers(first_name,last_name)
values
('Elton', 'Brand'),
('Vince', 'Carter'),
('Allen', 'Iverson'),
('Carlos', 'Boozer');
insert into employees(first_name,last_name)
values 
('Al', 'Horford'),
('James', 'Harden'),
('Carmelo', 'Anthony'),
('PJ', 'Tucker');
insert into movies(movie_title,movie_rating)
values 
('Space Jam', 'PG'),
('White Men Can''t Jump', 'R'),
('Semi-Pro', 'R'),
('Like Mike', 'PG');
insert into concession_inventory(concession_name, concession_type)
values 
('Sour Patch Kids', 'Gummies'),
('Cookie Dough Bites', 'Chocolate'),
('Twix', 'Chocolate'),
('Reese''s', 'Chocolate');
insert into tickets(customer_id, employee_id, movie_id)
values 
(1,2,2),
(3,1,4),
(2,3,3),
(4,4,1);
insert into concession_receipts(receipt_price,customer_id,employee_id)
values 
(10.99,2,2),
(20.44,1,4),
(121.97,3,3),
(2.55,4,1);
insert into inventory_receipt(receipt_id,concession_id)
values 
(1,1),
(2,4),
(2,3),
(3,3),
(3,2),
(3,1),
(3,4),
(4,3);

--    QUESTIONS TO ANSWER    --

--Who watched space jam?--
select * 
from customers
join tickets 
on customers.customer_id = tickets.customer_id
join movies 
on tickets.movie_id = movies.movie_id 
where tickets.movie_id = '1';

--What did Vince Carter eat?--
select * 
from concession_inventory 
join inventory_receipt 
on concession_inventory.concession_id = inventory_receipt.concession_id 
join concession_receipts 
on inventory_receipt.receipt_id = concession_receipts.receipt_id 
where concession_receipts.customer_id = '2';


