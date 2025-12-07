SELECT * FROM vishal_mall.customer_info;
create database  vishal_mall;
use vishal_mall;


create table customer_info(
    item_id int primary key,
    customer_name varchar(20) not null,
    email varchar(50) not null unique,
    phone_number bigint not null,
    city varchar(30),
    gender varchar(20) check(gender in ("male", "female", "others")) not null,
    age int check(age>18)
);


insert into customer_info (item_id,customer_name,email,phone_number,city,gender,age) values
(1,"Rahul","abcd@gmail.com",2345678901,"BNG","female",20),
(2,"Sudeep","gh2@gmail.com",817868364,"SMG","male",25),
(3,"Ramesh","hjh@gmail.com",89997868364,"SMG","male",29),
(4,"Lohith","g@gmail.com",827868364,"SHG","male",25),
(5,"Gopi","gkk@gmail.com",828868364,"SHG","male",35),
(6,"Jon","gr@gmail.com",827968364,"SHG","male",28),
(7,"Arpitha","gy@gmail.com",827868364,"SHG","female",25),
(8,"Anu","gjuy@gmail.com",8278868364,"SHG","female",33),
(9,"Ramya","gyy@gmail.com",827868364,"ASDG","female",25),
(10,"Arpitha","guy@gmail.com",827868364,"SHG","female",25);




create table product(
    product_id int primary key,
    product_name varchar(20),
    category varchar(50) check(category in ("electromic","foodItems","detergents","cloths")),
    price int check(price between 100 and 50000),
    mfd date check(mfd between '2025-01-01' and '2025-12-31'),  
    exd date check(exd between '2027-01-01' and '2027-12-30')
);

insert into product (product_id,product_name,category,price,mfd,exd) values
(1,"Sugar","foodItems",450,'2025-02-02','2027-02-01'),
(2,"Popcorn","foodItems",250,'2025-03-02','2027-03-01');

drop table if exists product;


create table order_info(
    order_Id int primary key,
    product_id int,
    foreign key (product_id) references product(product_id),
    item_id int,
    foreign key (item_id) references customer_info(item_id)
);

-- Insert values into order_info table
insert into order_info (order_Id, product_id, item_id) values
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4),
(5, 1, 5);


select * from order_info;
select * from customer_info;
select * from product;

use vishal_mart;

create table Dmart_products (
id int primary key,
products_name varchar(43) not null,
products_price bigint not null,
Product_quantity bigint not null,
location varchar(35),
expiry_date date,
category varchar(50)
);
desc Dmart_products;

select * from Dmart_products;

insert into Dmart_products(id, products_name, products_price, Product_quantity, location,expiry_date,category) values
(11, 'milk', 15, 50, 'Bangalore','2025-11-12',"Dairy"),
(12,'bread', 30, 20, 'mysore','2026-11-11',"Bread"),
(13, 'eggs', 25, 15, 'tumkuru','2027-5-5',"Food"),
(14, 'apple', 45, 85, 'hassan','2028-7-8',"Fruits"),
(15, 'chips', 45, 37, 'kolar','2029-11-9',"Ietams"),
(16, 'butter', 33, 8,'tiptur','2027-11-7',"Fat");
select * from Dmart_products;


use  vishal_mall;
create table Warehouse_product (
id int primary key,
food_products varchar(43) not null,
products_price bigint not null,
available_products bigint not null,
category varchar(35),
supplier varchar(30),
price float,
stock_quantity double
);


desc Warehouse_product;

select * from Warehouse_product;

insert into Warehouse_product (id, food_products, products_price, available_products, category,supplier,price,stock_quantity) values 
(1, 'milk', 30, 3, 'Dairy', "Bekery Com: " ,2.05,100),
(2, 'bread', 20, 2, 'Bakery', "Hotel A ",3.05,200),
(3, 'chicken', 50, 7, 'Meat',"Hotel B ",9.55,300),
(4, 'apple', 80, 5, 'fruits',"Hotel A ",5.55,400),
(5, 'fruits', 70, 1, 'fruits',"Hotel C ",6.66,500),
(6, 'chocolate', 18, 2, 'Choco',"Hotel A ",7.7,600),
(7, 'toothpaste', 19, 5, 'Personal Care',"health.com ",7.7,600);

select * from Warehouse_product;




select * from Dmart_products d1 inner join Dmart_products d2 on d1. products_name = d2.products_name and d1.id<>d2.id;

select * from Dmart_products d left join Warehouse_product w on d. products_name= w.food_products
union
select * from Dmart_products d2 right join Warehouse_product w2 on d2.products_name= w2.food_products;


select * from Dmart_products d left join Warehouse_product w on d.products_price= w.products_price
union
select * from Dmart_products d2 left join Warehouse_product w2 on d2.products_price= w2. products_price;

select * from Dmart_products d right join Warehouse_product w on d.products_name= w. food_products
union
select * from Dmart_products d2 left join Warehouse_product w2 on d2.products_name= w2. food_products;

select * from Dmart_products d right join Warehouse_product w on d.products_name= w. food_products
union
select * from Dmart_products d2 right join Warehouse_product w2 on d2.products_name= w2. food_products;


select * from Dmart_products d left join Warehouse_product w on d.products_price= w.products_price
union
select * from Dmart_products d2 left join Warehouse_product w2 on d2.products_price= w2. products_price;

select * from Dmart_products d right join Warehouse_product w on d.products_name= w. food_products
union
select * from Dmart_products d2 left join Warehouse_product w2 on d2.products_name= w2. food_products;

select * from Dmart_products d right join Warehouse_product w on d.products_name= w. food_products
union
select * from Dmart_products d2 right join Warehouse_product w2 on d2.products_name= w2. food_products;