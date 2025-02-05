CREATE DATABASE college6;
USE college6;

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

SELECT grade FROM student GROUP BY grade;

SELECT grade FROM student GROUP BY grade ORDER BY grade;

SELECT grade, count(rollno) FROM student GROUP BY grade ORDER BY grade;

# Having Clause
SELECT city FROM student GROUP BY city;
SELECT city, count(rollno) FROM student GROUP BY city;
SELECT city, count(rollno) FROM student GROUP BY city HAVING max(marks) > 90;

# GENERAL ORDER
# SELECT column(s)
# FROM table_name
# WHERE condition       WHERE is use to put the condition in row(S)
# GROUP BY column(S)    WHERE is written before GROUP BY and HAVING is written after GROUP BY
# HAVING condition      HAVING is use to put the condition in column(S)
# ORDER BY column(S) ASC;

SELECT city FROM student WHERE grade = "A" GROUP BY city;
SELECT city FROM student WHERE grade = "A" GROUP BY city HAVING max(marks) > 90;
SELECT city, count(rollno) FROM student WHERE grade = "A" GROUP BY city HAVING  max(marks) > 90;
SELECT city FROM student WHERE grade = "A" GROUP BY city HAVING max(marks) > 90 ORDER BY city ASC;
SELECT city FROM student WHERE grade = "A" GROUP BY city HAVING max(marks) > 90 ORDER BY city DESC;