CREATE DATABASE college2;
USE college2;

CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (102);

SELECT * FROM temp1;