/* Create a table called NAMES */
-- CREATE TABLE NAMES(Id integer PRIMARY KEY, Name text);

/* Create few records in this table */
/*
INSERT INTO NAMES VALUES(1,'Tom');
INSERT INTO NAMES VALUES(2,'Lucy');
INSERT INTO NAMES VALUES(3,'Frank');
INSERT INTO NAMES VALUES(4,'Jane');
INSERT INTO NAMES VALUES(5,'Robert');


CREATE TABLE Products(Id integer PRIMARY KEY, Desc text, Price float, Buyer text);

INSERT INTO Products VALUES(1,'pen',1.1,'Tom');
INSERT INTO Products VALUES(2,'ball',98.09,'Lucy');
INSERT INTO Products VALUES(3,'lolipop',1.6,'Frank');
INSERT INTO Products VALUES(4,'Maciek',1000000,'Jane');
INSERT INTO Products VALUES(5,'Circle',10.56,'Jane');
*/

/* Display all the records from the table */
-- SELECT * FROM NAMES;

SELECT * FROM NAMES;
SELECT * FROM Products;
SELECT * FROM NAMES LEFT JOIN Products ON NAMES.Name = Products.Buyer;