use quan_ly_sinh_vien;

SELECT address, COUNT(student_id) AS 'Số lượng học viên'
FROM student
GROUP BY address;

SELECT S.student_id, student_name, AVG(mark)
FROM student S join mark M on S.student_id = M.student_id
GROUP BY S.student_id, S.student_name;

SELECT S.student_id, student_name, AVG(mark)
FROM student S join mark M on S.student_id = M.student_id
GROUP BY S.student_id, S.student_name
HAVING AVG(mark) > 10;

SELECT S.student_id, student_name, AVG(mark)
FROM student S join mark M on S.student_id = M.student_id
GROUP BY S.student_id, S.student_name
HAVING AVG(mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY mark.student_id);
