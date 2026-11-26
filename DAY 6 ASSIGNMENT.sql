USE DA09_DB;
CREATE TABLE DEPARTMENTS(
dept_id int primary key,
dept_name varchar(50) not null unique,
location varchar(50) default 'Hyderabad',
budget decimal(10,2) check (budget>0)
);
desc departments;
CREATE TABLE students(
student_id int primary key,
student_name varchar(100) not null,
email varchar(100) unique,
age int check(age>=18),
gender varchar(10) not null,
city varchar(50) default 'Hyderabad',
fees decimal(10,2) check(fees>=0),
dept_id int,
foreign key (dept_id) references DEPARTMENTS(dept_id)
);
desc students;
insert into DEPARTMENTS values
(1011,'AIML','Mumbai',100000.2525),
(1012,'DA','VSP',45000.00),
(1013,'B.Sc','VJA',120000.000),
(1014,'CSE',default,5500000.000),
(1015,'BCA',default,652000.00);
select * from departments;
DELETE FROM students;
INSERT INTO students VALUES
(1, 'Rahul', 'rahul@gmail.com', 19, 'Male',default, 25000, 1011),
(2, 'Priya', 'priya@gmail.com', 20, 'Female', 'Chennai', 30000, 1012),
(3, 'Arun', 'arun@gmail.com', 18, 'Male', 'Vijayawada', 20000, 1013),
(4, 'Sneha', 'sneha@gmail.com', 21, 'Female', 'Bangalore', 35000, 1014),
(5, 'Kiran', 'kiran@gmail.com', 19, 'Male', 'Vizag', 28000, 1015),
(6, 'Anjali', 'anjali@gmail.com', 22, 'Female',default, 32000, 1011),
(7, 'Ravi', 'ravi@gmail.com', 20, 'Male', 'Chennai', 27000, 1012),
(8, 'Divya', 'divya@gmail.com', 18, 'Female', 'Vizag', 22000, 1013),
(9, 'Suresh', 'suresh@gmail.com', 23, 'Male', 'Bangalore', 40000, 1014),
(10, 'Meena', 'meena@gmail.com', 19, 'Female', 'Vijayawada', 26000, 1015);

select * from students;

INSERT INTO students VALUES
(11, 'Ramesh', 'ramesh@gmail.com', 20, 'Male', 'Hyderabad', 25000, 1011);

INSERT INTO students VALUES
(11, 'Suresh', 'suresh@gmail.com', 21, 'Male', 'Chennai', 30000, 1012);

INSERT INTO students VALUES
(NULL, 'Priya', 'priya@gmail.com', 19, 'Female', 'Vizag', 25000, 1013);

INSERT INTO students values
(12,'raju','raju@gmail.com',21,'Male','Vij',250000,1011),
(13,'lakshman','raju@gmail.com',21,'Male','Vij',250000,1012);

update students set email='rahul12@gmail.com' where student_name='Rahul';

insert into students values
(14,'rani@gmail.com',22,'Female','Vizag',2555555,1013),
(14,'madhuri','madhuri@gmail.com',22,null,'Vizag',2555555,1013);


INSERT INTO students
(student_id, student_name, email, age, gender, fees, dept_id)
VALUES
(16, 'Anil', 'anil@gmail.com', 20, 'Male', 25000, 1013);


INSERT INTO students VALUES
(17, 'Divya', 'divya17@gmail.com', 21, 'Female', 'Vizag', 30000, 1014);


INSERT INTO students VALUES
(18, 'Arjun', 'arjun18@gmail.com', 15, 'Male', 'Hyderabad', 25000, 1011);


INSERT INTO students VALUES
(19, 'Manoj', 'manoj19@gmail.com', 20, 'Male', 'Chennai', -5000, 1012);


INSERT INTO students VALUES
(20, 'Sanjay', 'sanjay@gmail.com', 21, 'Male', 'Vizag', 25000, 9999);


DELETE FROM departments
WHERE dept_id = 1011;

ALTER TABLE students
ADD mobile_number VARCHAR(15) UNIQUE;


ALTER TABLE students
ADD CONSTRAINT chk_min_fees
CHECK (fees >= 1000);


ALTER TABLE students
DROP INDEX email;


UPDATE students
SET fees = fees * 1.10;



SELECT
    s.student_id,
    s.student_name,
    s.email,
    s.age,
    s.gender,
    s.city,
    s.fees,
    d.dept_name
FROM students s
INNER JOIN departments d
ON s.dept_id = d.dept_id;



SELECT
    d.dept_id,
    d.dept_name,
    COUNT(s.student_id) AS total_students
FROM departments d
INNER JOIN students s
ON d.dept_id = s.dept_id
GROUP BY d.dept_id, d.dept_name;