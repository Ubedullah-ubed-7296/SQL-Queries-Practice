CREATE DATABASE collegepq;
USE collegepq;

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
SELECT city, avg(marks) FROM student GROUP BY city ORDER BY city ASC;

SELECT city, avg(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC; # if we not write ASC also it will be fine bcz it will take ASC as by default.

