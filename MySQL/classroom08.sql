# Foreign Keys
CREATE DATABASE college8;
USE college8;

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

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);