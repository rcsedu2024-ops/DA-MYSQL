USE DA09_DB;
CREATE TABLE Products (
id INT,
name VARCHAR(100),
price DECIMAL(10,2),
qty INT
);
INSERT INTO Products VALUES
(1, 'Pen', 10.00, 100),
(2, 'Notebook', 25.00, 50),
(3, 'Pencil', 5.00, 200),
(4, 'Eraser', 3.00, 300),
(5, 'Marker', 15.00, 80),
(6, 'Scale', 20.00, 150),
(7, 'Sharpener', 8.00, 120),
(8, 'Geometry Box', 120.00, 40),
(9, 'Sketch Pen', 60.00, 75),
(10, 'Crayons', 90.00, 55);
-- Select Queries

-- Q6. Add ₹20 to the price of every product.
SELECT id,name,price+20 AS new_price FROM Products;
-- Q7. Display half of each product's quantity.
SELECT name,qty/2 AS half_quantity FROM Products;
-- Q8. Display double the quantity of every product.
SELECT name, qty*2 AS double_quantity FROM Products;
-- Q9. Find the remaining quantity after selling 10 units.
SELECT name, qty-10 AS remaining_qty FROM Products;
-- Q10. Divide the price equally among 5 people.
SELECT name,price/5 AS price_per_person FROM Products;
-- Q11. Display products whose price is an even number.
SELECT * FROM Products WHERE price%2=0;
-- Q12. Display products whose quantity is divisible by 5.
SELECT * FROM Products WHERE qty % 5 = 0;
-- Q13. Calculate the price after giving a 10% discount.
SELECT name,price-(price* 10/100) AS discounted_price FROM Products;
-- Q14. Calculate the price after adding ₹15 and then 18% GST.
SELECT name,(price + 15)*1.18 AS final_price FROM Products;
-- Q15. Display the remaining quantity after selling half the stock.
SELECT name,qty-(qty/2) AS remaining_qty FROM Products;
-- Update Queries

-- Q6. Increase the quantity of Pen by 50.
UPDATE ProductS SET qty=qty+50 WHERE name='Pen';
-- Q7. Reduce the quantity of Pencils by 25.
UPDATE Products SET qty = qty-25 WHERE name='Pencil';
-- Q8. Increase the price of Scale by 10%.
UPDATE Products SET price=price+(price*10/100) WHERE name='Scale';
-- Q9. Double the quantity of Sharpener.
UPDATE Products SET qty=qty*2 WHERE name='Sharpener';
-- Q10. Reduce the price of Crayons by ₹15.
UPDATE Products SET price=price-15 WHERE name='Crayons';
-- Delete Queries

-- Q2. Delete products whose price is less than ₹10.
DELETE FROM Products WHERE price<10;
-- Q3. Delete the Marker record.
DELETE FROM Products WHERE name='Marker';
-- Q4. Delete products whose quantity is greater than 300.
DELETE FROM Products WHERE qty>300;
-- Q5. Delete products whose price is greater than ₹100.
DELETE FROM Products WHERE price>100;



-- Relational Operators

CREATE TABLE StudentScores (
id INT,
name VARCHAR(100),
subject VARCHAR(50),
marks INT
);
INSERT INTO StudentScores VALUES
(1, 'Alice', 'Math', 95),
(2, 'Bob', 'Math', 76),
(3, 'Charlie', 'Math', 59),
(4, 'Diana', 'Math', 88),
(5, 'Eve', 'Math', 40),
(6, 'Frank', 'Math', 95),
(7, 'Grace', 'Science', 67),
(8, 'Henry', 'Science', 82),
(9, 'Ivy', 'English', 91),
(10, 'Jack', 'English', 55),
(11, 'Kevin', 'Math', 73),
(12, 'Lily', 'Science', 48),
(13, 'Mia', 'English', 100),
(14, 'Noah', 'Math', 64),
(15, 'Olivia', 'Science', 79);
-- Select Queries
---------------
-- Q6. Display students who scored 60 or less.
SELECT * FROM StudentScores WHERE marks<=60;
-- Q7. Display students who scored more than 70.
SELECT * FROM StudentScores WHERE marks>70;
-- Q8. Display students who scored less than or equal to 75.
SELECT * FROM StudentScores WHERE marks<=75;
-- Q9. Display students who scored exactly 100.
SELECT * FROM StudentScores WHERE marks=100;
-- Q10. Display students who did not score 40.
SELECT * FROM StudentScores WHERE marks!=40;
-- Q11. Display students who scored more than or equal to 90.
SELECT * FROM StudentScores WHERE marks>=90;
-- Q12. Display students who scored less than 65.
SELECT * FROM StudentScores WHERE marks<65;

-- Update Queries

-- Q6. Set marks to 100 for students who scored exactly 95.
UPDATE StudentScores SET marks=100 WHERE marks=95;
-- Q7. Increase marks by 15 for students scoring below 60.
UPDATE StudentScores SET marks=marks+15 WHERE marks<60;
-- Q8. Add 5 marks for students scoring above 75.
UPDATE StudentScores SET marks=marks+5 WHERE marks>75;
-- Q9. Reduce 3 marks for students scoring above 95.
UPDATE StudentScores SET marks=marks-3 WHERE marks>95;
-- Q10. Set marks to 75 for students scoring below 50.
UPDATE StudentScores SET marks=75 WHERE marks<50;
-- Q11. Increase marks by 8 for students scoring exactly 64.
UPDATE StudentScores SET marks=marks+8 WHERE marks=64;
-- Q12. Reduce 5 marks for students scoring 100.
UPDATE StudentScores SET marks=marks-5 WHERE marks=100;
-- Delete Queries

-- Q6. Delete students who scored exactly 76.
DELETE FROM StudentScores WHERE marks=76;
-- Q7. Delete students who scored exactly 100.
DELETE FROM StudentScores WHERE marks=100;
-- Q8. Delete students who scored less than 65.
DELETE FROM StudentScores WHERE marks<65;
-- Q9. Delete students who scored greater than or equal to 90.
DELETE FROM StudentScores WHERE marks>=90;
-- Q10. Delete students who scored exactly 73.
DELETE FROM StudentScores WHERE marks=73;
-- Q11. Delete students who scored exactly 48.
DELETE FROM StudentScores WHERE marks=48;
-- Q12. Delete students who scored between 70 and 80 (using comparison operators).
DELETE FROM StudentScores WHERE marks>=70 AND marks<=80;


-- Logical Operators

CREATE TABLE Employees (
id INT,
name VARCHAR(100),
department VARCHAR(100),
salary INT,
isactive BOOLEAN
);
INSERT INTO Employees VALUES
(1, 'Rahul Sharma', 'IT', 50000, TRUE),
(2, 'Priya Reddy', 'HR', 30000, TRUE),
(3, 'Amit Kumar', 'Finance', 45000, FALSE),
(4, 'Sneha Patel', 'IT', 35000, TRUE),
(5, 'Vikram Singh', 'Finance', 28000, TRUE),
(6, 'Anjali Mehta', 'HR', 32000, FALSE),
(7, 'Kiran Rao', 'IT', 60000, TRUE),
(8, 'Pooja Verma', 'Marketing', 27000, TRUE),
(9, 'Ramesh Naidu', 'Sales', 38000, TRUE),
(10, 'Deepika Joshi', 'Finance', 52000, TRUE),
(11, 'Suresh Babu', 'Marketing', 29000, FALSE),
(12, 'Neha Kapoor', 'HR', 41000, TRUE),
(13, 'Arjun Reddy', 'IT', 55000, FALSE),
(14, 'Lakshmi Devi', 'Sales', 33000, TRUE),
(15, 'Nikhil Jain', 'IT', 47000, TRUE);
-- Select Queries

-- Q6. Display inactive employees or employees earning less than 30000.
SELECT * FROM Employees WHERE isactive=FALSE OR salary<30000;
-- Q7. Display Marketing employees with salary greater than 25000.
SELECT * FROM Employees WHERE department='Marketing' AND salary>25000;
-- Q8. Display employees who are not in the Finance department.
SELECT * FROM Employees WHERE NOT department='Finance';
-- Q9. Display active employees earning more than 50000.
SELECT * FROM Employees WHERE isactive=TRUE AND salary>50000;
-- Q10. Display employees from Sales or HR departments.
SELECT * FROM Employees WHERE department='Sales' OR department='HR';
-- Q11. Display employees who are inactive and belong to the IT department.
SELECT * FROM Employees WHERE isactive=FALSE AND department='IT';
-- Q12. Display employees whose salary is less than 40000 and are active.
SELECT * FROM Employees WHERE salary<40000 AND isactive=TRUE;
-- Update Queries

-- Q6. Activate all inactive Marketing employees.
UPDATE Employees SET isactive=TRUE WHERE isactive=FALSE AND department='Marketing';
-- Q7. Reduce salary by 2000 for inactive employees.
UPDATE Employees SET salary=salary-2000 WHERE isactive=FALSE;
-- Q8. Increase salary by 15% for active employees earning more than 50000.
UPDATE Employees SET salary=salary+(salary*15/100) WHERE isactive=TRUE AND salary>50000;
-- Q9. Make all Finance employees active.
UPDATE Employees SET isactive=TRUE WHERE department='Finance';
-- Q10. Increase salary by 1000 for IT or Sales employees.
UPDATE Employees SET salary=salary+1000 WHERE department='IT' OR department='Sales';
-- Delete Queries
-- Q6. Delete Sales employees or inactive employees.
DELETE FROM Employees WHERE department='Sales' OR isactive=FALSE;
-- Q7. Delete active employees earning more than 55000.
DELETE FROM Employees WHERE isactive=TRUE AND salary>55000;
-- Q8. Delete employees who are not in the IT or HR departments.
DELETE FROM Employees WHERE NOT (department='IT' OR department='HR');
-- Q9. Delete employees whose salary is below 30000 and are inactive.
DELETE FROM Employees WHERE salary<30000 AND isactive=FALSE;
-- Q10. Delete employees from the Marketing department or whose salary is greater than 50000.
DELETE FROM Employees WHERE department='Marketing' OR salary>50000; 
