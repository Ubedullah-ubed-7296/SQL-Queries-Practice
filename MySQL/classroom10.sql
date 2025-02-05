#ALTER (to change the schema) or (to add one more column in the table)
CREATE DATABASE college10;
USE college10;

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

# To "add" one more column in the existing table
ALTER TABLE student ADD COLUMN age INT;
ALTER TABLE student ADD COLUMN age INT NOT NULL;
ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 19;

# to "drop" a column in the existing table
ALTER TABLE student DROP COLUMN age;

# to "rename" the table name
ALTER TABLE student RENAME TO students;
ALTER TABLE students RENAME TO student;

# to "change" the column name of existing table
ALTER TABLE student CHANGE COLUMN rollno  stu_id INT;

# to "modify" the column name of existing table
ALTER TABLE student MODIFY city VARCHAR(15);