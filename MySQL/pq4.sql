# 1. change the name of column "name" to "full_name" 
# 2. delete all the students who scored marks less than 80
# 3. delete the column for grades
CREATE DATABASE collegepq4;
USE collegepq4;

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

ALTER TABLE student CHANGE name full_name VARCHAR(50);

DELETE FROM student WHERE marks < 80;

ALTER TABLE student DROP COLUMN grade;