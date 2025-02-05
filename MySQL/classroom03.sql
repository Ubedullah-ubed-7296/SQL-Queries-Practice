CREATE DATABASE college3;
USE college3;

CREATE TABLE temp2(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY(id)
    # here id will be unique
);

CREATE TABLE temp3(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY(id, name)
    # in id & name one will be unique not both
);


CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;