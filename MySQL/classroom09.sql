# Foreign Keys update and delete concept, it will automatically update or delete child table if we change any thing in parent table
CREATE DATABASE college9;
USE college9;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "english"),
(102,"IT");
 
SELECT * FROM dept;

UPDATE dept SET id = 103 WHERE id = 102;
UPDATE dept SET id = 111 WHERE id = 101;

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name varchar(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;


INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "Ubedullah", 98, "A", "Hyderabad"),
(102, "Mohd Rizwan", 78, "C", "Mumbai"),
(103, "Abdul Rahman", 85, "B", "Mumbai"),
(104, "Arhan", 96, "A", "Delhi"),
(105, "Farah", 12, "F", "Delhi"),
(106, "Abaad", 82, "B", "Delhi");