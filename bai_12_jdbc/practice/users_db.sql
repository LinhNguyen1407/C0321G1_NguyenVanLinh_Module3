CREATE DATABASE user_manager;
USE user_manager;

create table users (
 id  int(3) AUTO_INCREMENT,
 name varchar(120),
 email varchar(220),
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Nam','nam@codegym.vn','Viet Nam');
insert into users(name, email, country) values('An','an@codegym.vn','Viet Nam');