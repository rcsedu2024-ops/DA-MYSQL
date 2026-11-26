-- Constraints
-- unique:-Dont allow duplicate values.
USE DA9;
SHOW TABLES;
CREATE TABLE STUDENT1(
STD INT NOT NULL,
SNAME VARCHAR(20),
SEMAIL VARCHAR(30) UNIQUE);

INSERT INTO STUDENT1(STD,SNAME,SEMAIL) VALUES('1','AVISH','AVISH@GMAIL.COM');
SELECT*FROM STUDENT1;
INSERT INTO STUDENT1(STD,SNAME,SEMAIL)VALUES('3','MALLI','NULL');
INSERT INTO STUDENT1(STD,SNAME)VALUES('4','NANDU');

Create table Students(
student_id int primary key,
student_name varchar(50) not null,
email varchar(30) unique,
age int check(age>=18),
course varchar(60) DEFAULT 'JAVA FULL STACK');

insert into students
values
('1','Ravi','Ravi@gmail.com',22,'python');
insert into students(student_id,student_name,email,age)values
(2,'kiran','kiran@gnmail.com',23);
insert into students values(3,'ARJUN','arjun@gmail.com',21,DEFAULT);
select * from students;
-- not null violation
insert into students values('4',NULL,'abc@gmail.com',22,'SQL');
-- unique violation
insert into students values('4','raj','Ravi@gmail.com',22,'SQL');
-- check violation
insert into students values('4','raj','raj@gmail.com',17,'SQL');

CREATE TABLE CATEGORIES(
CATEGORY_ID INT PRIMARY KEY,
CATEGORY_NAME VARCHAR(50));

INSERT INTO CATEGORIES VALUES
(1,'ELECTRONICS'),(2,'CLOTHING'),(3,'FURNITURE'),(4,'GROCERIES');

INSERT INTO PRODUCT VALUES
(101,'LAPTOP','