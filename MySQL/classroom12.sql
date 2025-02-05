# joins : join is used to combine rows from two or more tables, based on a related column between them

# types of join
# 1. inner join
# 2. left join  |--> outer join
# 3. right join |-->   "    " 
# 4. full join  |-->   "    "

CREATE DATABASE college12;
USE college12;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(id, name)
VALUES
(101, "fakhar"),
(102, "gulbano"),
(103, "kashif");

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course
(id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

SELECT * FROM student;
SELECT * FROM course;

# 1. inner join
# it is not necessary to have same name of both the table like id
# means :  student.id = course.course_id
SELECT * FROM student INNER JOIN course ON student.id = course.id;

# alias is also called as alternate name
SELECT * FROM student as s INNER JOIN course as c ON s.id = c.id;
SELECT * FROM student as a INNER JOIN course as b ON a.id = b.id;

# 2. left join
SELECT * FROM student as a LEFT JOIN course as b ON a.id = b.id;

# 3. right join
SELECT * FROM student as a RIGHT JOIN course as b ON a.id = b.id;

# 4. full join
# in my sql we can't write full join directly, because this command is not exist. so, we use union here
SELECT * FROM student as a LEFT JOIN course as b ON a.id = b.id 
UNION
SELECT * FROM student as a RIGHT JOIN course as b ON a.id = b.id;


# here three more type
# 1. left exclusive join
# 2. right exclusive join
# 3. full exclusive join

# 1. left exclusive join
SELECT * FROM student as a LEFT JOIN course as b ON a.id = b.id WHERE b.id IS NULL;

# 2. right exclusive join
SELECT *FROM student as a RIGHT JOIN course as b ON a.id = b.id WHERE a.id IS NULL;

# 3. full exclusive join
SELECT * FROM student as a LEFT JOIN course as b ON a.id = b.id WHERE b.id IS NULL
UNION
SELECT * FROM student as a RIGHT JOIN course as b ON a.id = b.id WHERE a.id IS NULL;


# self join
# self join : it is regular join but the table is joined with itself
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "Bilal", 103),
(102, "sara", 104),
(103, "Abdulla", NULL),
(104, "kashif", 103);

SELECT * FROM employee;

SELECT * FROM employee as a JOIN employee as b ON a.id = b.manager_id;

SELECT a.name, b.name FROM employee as a JOIN employee as b ON a.id = b.manager_id;
SELECT a.name as manager_name, b.name FROM employee as a JOIN employee as b ON a.id = b.manager_id;

# union
# it give unique records
SELECT name FROM employee
UNION
SELECT name FROM employee;

# union all
# it also gives duplicate records
SELECT name FROM employee
UNION ALL
SELECT name FROM employee;