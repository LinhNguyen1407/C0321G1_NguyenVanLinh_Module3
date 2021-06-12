create database student_management;

use student_management;

create table student(
	id int not null,
    name varchar(255),
    age int,
    country varchar(100)
);

select * from student;

insert into student
values(1, 'A', 20, 'vietnam');

alter table student
add primary key(id);

