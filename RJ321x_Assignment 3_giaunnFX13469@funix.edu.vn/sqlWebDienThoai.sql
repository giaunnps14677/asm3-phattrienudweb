create database ShoppingDB;
use ShoppingDB;
create table users(
email varchar(50) primary key,
password varchar(10)
);
create table Products(
product_idproducts int AUTO_INCREMENT primary key,
product_name text not null,
product_des text not null,
product_price float not null,
product_img_source varchar(255) not null,
product_type varchar(100) not null,
product_brand varchar(100) not null
);
drop table Products;
create table Account(
user_mail varchar(100) primary key,
password varchar(64) not null,
account_role int not null,
user_name text not null,
user_address text not null,
user_phone varchar(10) not null
);
select * from Account;
select * from Orders;
select * from Orders_detail;
drop table Orders;
create table Orders(
order_id int AUTO_INCREMENT primary key,
order_price float,
order_status int not null,
order_date date not null,
order_address text not null,
order_phoneNumber text,
user_mail varchar(100) not null,
receiveDate date,
order_discount_code varchar(8) not null
);
insert into Orders (order_price, order_status, order_date, order_address, order_phoneNumber, user_mail, receiveDate, order_discount_code) values
(12, 1, '2000-03-02', 'hcm', '081232442', 'abc@gmail.com', '2000-03-05', '102d');

drop table Orders;
drop table Orders_detail;
create table Orders_detail(
order_id int,
product_id int,
amount_product int not null,
name_product text not null,
primary key(order_id, product_id),
FOREIGN KEY (product_id) REFERENCES Products(product_id),
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
select * from Orders;

select * from Account;
-- D:\CANHAN\FUNIX\webdong\deployments\asm3\src\main\webapp
delete from Products;
insert into users values
('giaunnfx13469@edu.com.vn', 123);
-- ${sessionScope.user} 
select * from users;
delete from products where product_idproducts = 5;
insert into Products(product_name,product_des,product_price,product_img_source,product_type,product_brand) values
('iPhone Xs Max 256GB','Màn hình: 6.5", Super Retina HĐH: iOS 12 CPU: Apple A12 Bionic 6 nhân RAM: 4 GB, ROM: 256 GB Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',32.990,
'image/iphone.png','cellphone','apple'),
('iPhone X 256GB','Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',27.990,'image/iphone2.png','cellphone',
'apple'),
('iPhone Xs 64GB','Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 4 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',24.990,'image/realme.png','cellphone',
'apple'),
('iPhone Xs Max 256GB','Màn hình: 6.1", Liquid Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',17.990,'image/realme2.png','cellphone',
'apple'),
('iPhone Xr 128GB','Màn hình: 6.1", Liquid Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',17.990,'image/samsum.png','cellphone',
'apple'),
('iPhone 8 Plus 64GB','Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',16.590,'image/iphone.png','cellphone',
'apple'),
('iPhone 7 Plus 32GB','Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 3 GB, ROM: 32 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',12.490,'image/iphone2.png','cellphone',
'apple'),
('iPhone 7 32GB','Màn hình: 4.7", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 2 GB, ROM: 32 GB
Camera: 12 MP, Selfie: 7 MP',10.490,'image/realme.png','cellphone',
'apple');
select * from Products;
select * from Account;
insert into Account values
('duongdt@fpt.com.vn', '123', 1, 'Đinh Tùng Dương', 'Đại học FPT', '0765870407'),
('duydt@fpt.com.vn', '123', 1, 'Dao Trong Duy', 'Đại học FPT', '1234567');
insert into Account values
('giaunn@fpt.com.vn', '123', 0, 'Nguyễn Ngọc Giàu', 'Đại học FPT', '0765870407');
