use quan_ly_sinh_vien;

select *
from student;

select *
from student
where student_name like 'h%';

select *
from class;

select *
from class
where start_time like '%-12-%';

select *
from subject;

select *
from subject
where credit >= 3 and credit <= 5;

update student
set class_id = 2
where student_name = 'Hung';

update mark
set mark = 12
where student_id = 2;

select student_name, sub_name, mark
FROM student join mark on student.student_id = mark.student_id 
join subject on subject.sub_id = mark.sub_id
order by mark desc, student_name;