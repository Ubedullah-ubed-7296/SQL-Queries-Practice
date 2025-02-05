CREATE DATABASE college7;
USE college7;

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
#UPDATE
SET SQL_SAFE_UPDATES = 0; # 0 means off and 1 means on

UPDATE student SET grade = "O" WHERE grade = "A";
SELECT * FROM student;

UPDATE student SET marks = 82 WHERE marks = 12;
UPDATE student SET marks = 82 WHERE rollno = 105;
SELECT * FROM student;

UPDATE student SET grade = "B" WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student;

#If the college given one wrong MCQ then we have to increase all the student marks by 1
UPDATE student SET marks = marks + 1;
SELECT * FROM student;

#DELETE
# now we are going to delete the student details who got less then 33 marks. So, again we are making farah marks equal to 12
UPDATE student SET marks = 12, grade = "F" WHERE rollno = 105;
SELECT * FROM student;

DELETE FROM student WHERE marks < 33;
SELECT * FROM student;

# If we write this command it will delete complete to of student. So, be carefull while using delete command
DELETE FROM student;