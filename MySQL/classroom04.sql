CREATE DATABASE college4;
USE college4;

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

SELECT name, marks, city FROM student;
SELECT * FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city = "Delhi";
SELECT * FROM student WHERE marks > 80 AND city = "delhi";

SELECT * FROM student WHERE marks+10 > 100;

SELECT * FROM student WHERE marks = 96;
SELECT * FROM student WHERE marks > 80 AND city = "Mumbai";
SELECT * FROM student WHERE marks > 80 OR city = "Mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Delhi", "Mumbai", "Faridabad"); # it match any values in the list
SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");

SELECT * FROM student LIMIT 3;
SELECT * FROM student WHERE marks > 75  LIMIT 3;

SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY grade ASC;
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY name ASC;
SELECT * FROM student ORDER BY rollno ASC;

SELECT * FROM student ORDER BY city DESC;
SELECT * FROM student ORDER BY grade DESC;
SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY name DESC;
SELECT * FROM student ORDER BY rollno DESC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3; #to get top 3 student marks