# SQL  sub queries
# A subquery (or) inner query (or) a nested query is a query within another SQL query
# it involves 2 select statements
# we can write sub query in 3 different way
# 1. select
# 2. from
# 3. where  // mostly used command

CREATE DATABASE college13;
USE college13;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Ubedullah", 98, "A", "Hyderabad"),
(102, "Mohd Rizwan", 78, "C", "Mumbai"),
(103, "Abdul Rahman", 85, "B", "Mumbai"),
(104, "Arhan", 96, "A", "Delhi"),
(105, "Farah", 12, "F", "Delhi"),
(106, "Abaad", 82, "B", "Delhi");

SELECT * FROM student;

# 3. here we are writing  inside the "where"
# 1. step
SELECT AVG(marks) FROM student;

# 2. step
SELECT name FROM student WHERE marks > 75.1667;
SELECT name, marks FROM student WHERE marks > 75.1667;

# by using sub queries we are combining both steps and sub queries is used in brackets
# in case of any students increase/decrease it will effect our average so in place "75.1667" we will write 1.step
SELECT name, marks FROM student WHERE marks > (SELECT AVG(marks) FROM student);


SELECT rollno FROM student WHERE rollno % 2 = 0;   # here we use "=" in palce of "=="

SELECT name FROM student WHERE rollno IN (102, 104, 106);
SELECT rollno, name FROM student WHERE rollno IN (102, 104, 106);

SELECT rollno, name FROM student WHERE rollno IN (SELECT rollno FROM student WHERE rollno % 2 = 0);


# 2. here we are writing  inside the "from"
SELECT * FROM student WHERE city = "Delhi";

# when we are writing sub query inside "FROM" then it is necessary to use alias
SELECT MAX(marks) FROM (SELECT * FROM student WHERE city = "Delhi") AS temp;
SELECT MAX(marks) FROM (SELECT * FROM student WHERE city = "Mumbai") AS temp;

SELECT MAX(marks) FROM student WHERE city = "Mumbai";     # it is also correct only but we are using sub queries


# 1. here we are writing  inside the "select"
SELECT (SELECT MAX(marks) FROM student);
SELECT (SELECT MAX(marks) FROM student), name FROM student;

 # "it can't return multiple rows" so, error will occur 
 #  and we will not use this mostly
SELECT (SELECT marks FROM student), name FROM student;