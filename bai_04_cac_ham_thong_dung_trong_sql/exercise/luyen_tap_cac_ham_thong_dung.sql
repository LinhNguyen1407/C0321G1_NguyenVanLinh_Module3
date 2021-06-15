use quan_ly_sinh_vien;

select *
from subject
where credit = (select max(credit) from subject);

select subject.sub_id, sub_name, mark
from subject
join mark on mark.sub_id = subject.sub_id
where mark = (select max(mark) from mark);

select student_name, avg(mark)
from student 
join mark on student.student_id = mark.student_id 
group by student.student_id
order by avg(mark) desc;
