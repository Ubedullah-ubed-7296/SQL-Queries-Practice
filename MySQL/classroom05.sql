CREATE DATABASE college5;
USE college5;

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
(105, "Dhruv", 12, "F", "Delhi"),
(106, "Abaad", 82, "B", "Delhi");

SELECT marks FROM student;
# Aggregate Function
SELECT COUNT(name) FROM student;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT AVG(marks) FROM student;

SELECT city FROM student GROUP BY city;

SELECT city, COUNT(rollno) FROM student GROUP BY city;

SELECT city, name, COUNT(rollno) FROM student GROUP BY city, name;
# in above if vr including name column than we have include in GROUP BY also otherwise it will show error
# and for aggregate function no need to include in GROUP BY ex: COUNT, MAX, MIN, SUM, AVG.

SELECT city, AVG(marks) FROM student GROUP BY city;
