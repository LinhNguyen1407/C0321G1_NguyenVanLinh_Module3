create database quan_ly_ban_hang;

use quan_ly_ban_hang;

create table customer(
	customer_id int primary key auto_increment,
    customer_name varchar(255) not null,
    age int not null
);

create table orders(
	order_id int primary key auto_increment,
    order_date date not null,
    order_total_price int
);

create table product(
	product_id int primary key auto_increment,
    product_name varchar(100) not null,
    product_price int not null
);

create table order_detail(
	order_id int not null,
    product_id int not null,
    order_quanlity int not null,
	primary key(order_id, product_id),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references product(product_id)
);

alter table orders
add column customer_id int not null;

alter table orders
add foreign key (customer_id) references customer(customer_id);

select * from customer;
select * from orders;
select * from product;
select * from order_detail;
