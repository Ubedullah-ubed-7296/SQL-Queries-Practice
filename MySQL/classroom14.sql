# Views in mysql
# table stored real data
# veiws stored virtual data
# it is used to show some amount of data to other person 
CREATE DATABASE college14;
USE college14;

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

CREATE VIEW view1 AS SELECT rollno, name, marks FROM student;   # to create virtual table
SELECT * FROM view1;   # to see the data of virtual table

SELECT * FROM view1 WHERE marks > 90;

DROP VIEW view1;

SELECT * FROM view1;