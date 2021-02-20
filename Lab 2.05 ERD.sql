-- 2.05 Lab
-- 1
use sakila;
alter table staff
drop column picture;
select * from staff;

-- 2
insert into staff values
(3, 'Tammy', 'Sanders', 5, 'Tammy.Sanders@sakilastaff.com', 2, 1, 'Tammy', 'contra', '2006-02-15 03:57:16');
select * from staff;

-- 3
select * from rental
order by rental_id desc;

insert into rental values
(16050, '2005-08-23 22:50:12', 1, 130, '2005-08-24 22:50:12', 1, '2006-02-15 21:30:53');

-- customer_id 130, film_id 1, inventory_id 4, store_id 1, staff_id 1

select title, film_id from film
where title = 'Academy Dinosaur';
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
select film_id, inventory_id from inventory
where film_id ='1';
select first_name, staff_id from staff
where first_name ='Mike';

select * from rental
order by rental_id desc;

-- 4
select customer_id, email, active from customer
where active =0;

create table deleted_users (
customer_id int unique not null,
email varchar (50) default null,
date int (11) default null,
constraint primary key (customer_id)
);

drop table if exists deleted_users;

insert into deleted_users values
(16, 'SANDRA.MARTIN@sakilacustomer.org', '060215'),
(64, 'JUDITH.COX@sakilacustomer.org', '060215'),
(124, 'SHEILA.WELLS@sakilacustomer.org', '060215'),
(169, 'ERICA.MATTHEWS@sakilacustomer.org', '060215'),
(241, 'HEIDI.LARSON@sakilacustomer.org', '060215'),
(271, 'PENNY.NEAL@sakilacustomer.org', '060215'),
(315, 'KENNETH.GOODEN@sakilacustomer.org', '060215'),
(368, 'HARRY.ARCE@sakilacustomer.org', '060215'),
(406, 'NATHAN.RUNYON@sakilacustomer.org', '060215'),
(446, 'THEODORE.CULP@sakilacustomer.org', '060215'),
(482, 'MAURICE.CRAWLEY@sakilacustomer.org', '060215'),
(510, 'BEN.EASTER@sakilacustomer.org', '060215'),
(534, 'CHRISTIAN.JUNG@sakilacustomer.org', '060215'),
(558, 'JIMMIE.EGGLESTON@sakilacustomer.org', '060215'),
(592, 'TERRANCE.ROUSH@sakilacustomer.org', '060215');

select * from deleted_users;

delete from customer where active ='0';