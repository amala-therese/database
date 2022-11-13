


create table products(
id int primary key auto_increment,
name varchar(50) not null,
price int not null default 0
);

drop  table products;
alter table orders add
column products_id int;

alter table orders 
add constraint fk_orders_products_id foreign key (products_id)
references products(id);

alter table orders modify column product_id int ;
create view viewalldata
as
select
customer.id as customer_id,
customer.name as customer_name,
customer.email,
products.name as product_name,
products.price,
orders.id as order_id,
orders.amount,
orders.quantity
from customer inner join orders
on customer .id = orders.customer_id
inner join products
on products.id = orders.product_id; 
select * from viewalldata where id = 9;


select @id:=id from customers where email = 'user1@mail.com';
select * from orders where customer_id =@id;








 