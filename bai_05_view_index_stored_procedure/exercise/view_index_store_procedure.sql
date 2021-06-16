/* Bước 1, 2: Tạo database, table, insert dữ liệu */
create database demo;
use demo;

create table products(
	id int primary key auto_increment,
    product_code varchar(50),
    product_name varchar(100),
    product_price double,
    product_amount int,
    product_description varchar(255),
    product_status varchar(50)
);

insert into products
values
(1, 'aaa111', 'iphone1', 10, 2, 'iphone1_123', 'còn'),
(2, 'aaa112', 'iphone2', 9, 1, 'iphone1_123', 'còn'),
(3, 'aaa113', 'iphone3', 8, 0, 'iphone1_123', 'hết'),
(4, 'aaa114', 'iphone4', 7, 3, 'iphone1_123', 'còn'),
(5, 'aaa115', 'iphone5', 15, 4, 'iphone1_123', 'còn'),
(6, 'aaa116', 'iphone6', 20, 10, 'iphone1_123', 'còn');


/* Bước 3: Tạo Unique */
SELECT * FROM products WHERE product_code = 'aaa115';
EXPLAIN SELECT * FROM products WHERE product_code = 'aaa115';
ALTER TABLE products ADD INDEX idx_product_code(product_code);
EXPLAIN SELECT * FROM products WHERE product_code = 'aaa115'; 
ALTER TABLE products ADD INDEX idx_full_product(product_name, product_price);
EXPLAIN SELECT * FROM products WHERE product_name = 'iphone3' or product_price = 8;


/* Bước 4: Tạo view */
create view products_view as
select product_code, product_name, product_price, product_status
from products;

select * from products_view;

update products_view 
set product_price = 12
where product_name = 'iphone2';

drop view products_view;

/* Bước 5: Tạo store procedure */
delimiter //
create procedure get_all_information_product()
begin 
	select * from products;
end//
delimiter ;

call get_all_information_product();

delimiter //
create procedure insert_product(in product_code varchar(50), in product_name varchar(100), in product_price double, in product_amount int, in product_description varchar(255), in product_status varchar(50))
begin 
	insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
    values
    (product_code, product_name, product_price, product_amount, product_description, product_status);
end//
delimiter ;

call insert_product('aaa117', 'iphone7', 14, 11, 'iphone1_456', 'còn');

delimiter //
create procedure update_product(in id_in int, in product_code_in varchar(50))
begin 
	update products
    set product_code = product_code_in
    where id = id_in;
end//
delimiter ;

call update_product(6, 'aaa118');

delimiter //
create procedure delete_product(in id_in int)
begin 
	delete from products
    where id = id_in;
end//
delimiter ;

call delete_product(7);
