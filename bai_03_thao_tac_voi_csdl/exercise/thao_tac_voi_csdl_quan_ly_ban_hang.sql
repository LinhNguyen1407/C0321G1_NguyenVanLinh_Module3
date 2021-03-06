use quan_ly_ban_hang;

insert into customer
values
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

insert into orders
values
(1, '2006-03-21', null, 1),
(2, '2006-03-23', null, 2),
(3, '2006-03-16', null, 1);

insert into product
values
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

insert into order_detail
values
(1 , 1, 3),
(1 , 3, 7),
(1 , 4, 2),
(2 , 1, 1),
(3 , 1, 8),
(2 , 5, 4),
(2 , 3, 3);

select order_id, order_date, order_total_price
from orders;

select customer_name, product_name, order_quanlity
from customer
join orders on orders.customer_id = customer.customer_id
join order_detail on order_detail.order_id = orders.order_id
join product on product.product_id = order_detail.product_id;

select customer_name
from customer
left join orders on orders.customer_id = customer.customer_id
where orders.customer_id is null;

select orders.order_id, order_date, sum(order_quanlity*product_price) as order_total_price
from orders
join order_detail on order_detail.order_id = orders.order_id
join product on product.product_id = order_detail.product_id
group by order_id
