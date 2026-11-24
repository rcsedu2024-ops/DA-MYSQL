USE DA09_DB;
DROP TABLE EMPLOYEES;
CREATE TABLE EMPLOYEES(
EMP_ID CHAR(6),
EMP_NAME VARCHAR(60),
DEPARTMENT VARCHAR(60),
JOB_ROLL VARCHAR(60),
SALARY DECIMAL(10,2),
JOINING_DATE DATE,
CITY VARCHAR(120)
);
DESC EMPLOYEES;


INSERT INTO EMPLOYEES(EMP_ID,EMP_NAME,DEPARTMENT,JOB_ROLL,SALARY,JOINING_DATE,CITY) VALUES
(101, 'Ravi Kumar', 'IT', 'Developer', 45000, '2023-01-15', 'Vizag'),
(102, 'Priya Sharma', 'HR', 'HR Manager', 55000, '2022-06-20', 'Hyderabad'),
(103, 'Kiran Reddy', 'IT', 'Tester', 40000, '2023-03-10', 'Vizag'),
(104, 'Sneha Rao', 'Finance', 'Accountant', 48000, '2021-11-25', 'Chennai'),
(105, 'Arun Kumar', 'IT', 'Developer', 60000, '2020-08-18', 'Bangalore'),
(106, 'Divya Reddy', 'HR', 'Recruiter', 35000, '2024-01-05', 'Vizag'),
(107, 'Suresh Babu', 'Sales', 'Executive', 42000, '2022-09-12', 'Hyderabad'),
(108, 'Anjali Devi', 'IT', 'Developer', 70000, '2019-05-30', 'Chennai'),
(109, 'Mahesh Kumar', 'Sales', 'Manager', 65000, '2020-02-14', 'Bangalore'),
(110, 'Lakshmi Rao', 'Finance', 'Analyst', 52000, '2023-07-22', 'Hyderabad');
select * FROM EMPLOYEES;
-- Update the salary of Ravi Kumar to 50000.
UPDATE EMPLOYEES SET SALARY='50000' WHERE EMP_NAME='Ravi Kumar';

-- Increase the salary by 10% for all IT employees.
UPDATE EMPLOYEES SET SALARY=SALARY*1.10 WHERE DEPARTMENT='IT';

-- Change Priya Sharma's city to Vizag.
UPDATE EMPLOYEES SET CITY='VIZAG' WHERE EMP_NAME='Priya Sharma';

-- Change Kiran Reddy's job role to Senior Tester.
UPDATE EMPLOYEES SET JOB_ROLL='SENIOR TESTER' WHERE EMP_NAME='Kiran Reddy';

-- Increase the salary by 5000 for all HR employees.
UPDATE EMPLOYEES SET SALARY=SALARY+5000 WHERE DEPARTMENT='HR';

-- Change the city of all employees working in Vizag to Hyderabad.

UPDATE EMPLOYEES SET CITY='HYDERABAD' WHERE CITY='Vizag';

-- Change Arun Kumar's department to Development.

UPDATE EMPLOYEES SET DEPARTMENT='DEVELOPMENT' WHERE EMP_NAME='Arun Kumar';

-- Increase the salary by 15% for employees earning less than 45000.
UPDATE EMPLOYEES SET SALARY=SALARY*1.15 WHERE SALARY<45000;

-- Change Anjali Devi's job role to Senior Developer.
UPDATE EMPLOYEES SET JOB_ROLL='SENIOR DEVLOPER' WHERE EMP_NAME='Anjali Devi';

-- Update the city of all Finance employees to Bangalore.
UPDATE EMPLOYEES SET CITY='BANGLORE' WHERE DEPARTMENT='Finance';


-- Delete the employee whose ID is 106.
DELETE FROM EMPLOYEES WHERE EMP_ID='106';
-- Delete all employees from the Finance department.
DELETE FROM EMPLOYEES WHERE DEPARTMENT='FINANCE';
-- Delete employees earning less than 40000.
DELETE FROM EMPLOYEES WHERE SALARY<40000;
-- Delete all employees working in Vizag.
DELETE FROM EMPLOYEES WHERE CITY='Vizag';
-- Delete the employee named Suresh Babu.
DELETE FROM EMPLOYEES WHERE EMP_NAME='Suresh Babu';
-- Delete employees who joined before January 1, 2020.
DELETE FROM EMPLOYEES WHERE JOINING_DATE='2020-01-01';
-- Delete all employees working as Recruiters.
DELETE FROM EMPLOYEES WHERE JOB_ROLL='Recruiter';
-- Delete employees from the Sales department earning less than 50000.
DELETE FROM EMPLOYEES WHERE DEPARTMENT='SALES' AND SALARY<50000;
-- Delete the employee or employees who have the lowest salary.
DELETE FROM EMPLOYEES WHERE SALARY<50000;
-- Delete all employees whose city is Chennai.
DELETE FROM EMPLOYEES WHERE CITY='Chennai';

-- Display all employees from the employees table.
SELECT * FROM EMPLOYEES;
-- Display employees working in the IT department.
SELECT * FROM EMPLOYEES WHERE DEPARTMENT='IT';
-- Display employees earning more than 50000.
SELECT * FROM EMPLOYEES WHERE SALARY>50000;
-- Display only employee names and salaries.
SELECT EMP_NAME, SALARY FROM EMPLOYEES;
-- Display employees who are from Vizag.
SELECT * FROM EMPLOYEES WHERE CITY='Vizag';
-- Display employees who joined after January 1, 2022.
SELECT * FROM EMPLOYEES WHERE JOINING_DATE>'2022-01-01';
-- Display employees earning between 40000 and 60000.
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 40000 AND 50000;
-- Display employees whose names end with Kumar.
SELECT * FROM EMPLOYEES WHERE EMP_NAME LIKE '%Kumar';
-- Display all employees in descending order of salary.
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC;
-- Display the highest-paid employee.
SELECT * FROM EMPLOYEES WHERE SALARY=(SELECT MAX(SALARY));