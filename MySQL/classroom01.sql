CREATE DATABASE college1;
USE college1;

CREATE TABLE student1(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT  INTO student1
(rollno, name)
VALUES
(101, "Abdullah"),
(102, "Ateeq"),
(103, "Kareem");

INSERT INTO student1 VALUES (104, "Raheem");

SELECT * FROM student1;