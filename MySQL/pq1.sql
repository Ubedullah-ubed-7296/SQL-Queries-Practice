CREATE DATABASE XYZ_company;
USE XYZ_company;

CREATE TABLE employee_info(
	Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT NOT NULL
);

INSERT INTO employee_info
(Id, Name, Salary)
VALUES
(1, "Ubedullah Ubaidi", 100000),
(2, "Saniya", 50000),
(3, "Rabiya", 40000);

SELECT * FROM employee_info;