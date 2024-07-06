drop table products

create table products(
	product_id int,
	product_name varchar,
	price int,
	stock int
)

select * from products

insert into products (product_id,product_name,price,stock)
values ('1','iPhone 12','799','50'
),('2','Samsung Galaxy S2','999','30'
),('3','Google Pixel 5','699','20'
),('4','OnePlus 9 Pro','899','40'
),('5','Xiaomi Mi 11','649','35'),('6','Realme 10' , '555','86')


create table sales(
	transaction_id int,
	product_id int,
	sale_date date,
	quantity int
)

select * from sales

select * from products
	

insert into sales (transaction_id,product_id,sale_date,quantity)
values ('101','1','2023-01-05','3'
),('102','3','2023-01-07','2'
),('103','2','2023-01-10','1'
),('104','1','2023-01-15','2'
),('105','4','2023-01-20','1'
),('106','5','2023-01-25','4')



--inner join 
select p.product_id as, p.product_name, s.sale_date, s.quantity
from products p
inner join sales s on p.product_id = s.product_id;


--inner join left

select p.product_id, p.product_name, s.sale_date, s.quantity
from products p
left join sales s on p.product_id = s.product_id;

select  products.product_id, products.product_name, products.stock, sales.sale_date, sales.quantity from products 
left join sales on products.product_id = sales.product_id
group by products.product_id, products.product_name, products.stock, sales.sale_date, sales.quantity
having products.stock >40


--right

select p.product_id, p.product_name, s.sale_date, s.quantity
from products p
right join sales s on p.product_id = s.product_id;

select * from products  
right join sales on products.product_id = sales.product_id
where stock >25

select p.product_id, p.product_name, p.stock, s.sale_date, s.quantity
from products p
right join sales s on p.product_id = s.product_id
group by p.product_id, p.product_name, p.stock, s.sale_date, s.quantity
having p.stock >40


--full

select p.product_id, p.product_name, s.sale_date, s.quantity
from products p
left join sales s on p.product_id = s.product_id
UNION
select p.product_id, p.product_name, s.sale_date, s.quantity
from products p
right join sales s on p.product_id = s.product_id;


select * from products
full outer join sales on products.product_id = sales.product_id;



