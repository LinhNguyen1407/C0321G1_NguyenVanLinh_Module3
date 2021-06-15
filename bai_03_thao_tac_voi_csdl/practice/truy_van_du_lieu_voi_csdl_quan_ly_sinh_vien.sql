use quan_ly_sinh_vien;

SELECT * 
FROM student;

SELECT *
FROM student
WHERE Status = true;

SELECT *
FROM subject
WHERE credit < 10;

select student_id, student_name, class.class_name
from student
join class on student.class_id = class.class_id;

select student_id, student_name, class.class_name
from student
join class on student.class_id = class.class_id
where class_name = 'A1';

SELECT student.student_id, student_name, subject.sub_id, sub_name, mark
FROM student join mark on student.student_id = mark.student_id 
join subject on mark.sub_id = subject.sub_id;

SELECT S.student_id, S.student_name, Sub.sub_name, M.mark
FROM student S join mark M on S.student_id = M.student_id 
join subject Sub on M.sub_id = Sub.sub_id
WHERE Sub.sub_name = 'CF';