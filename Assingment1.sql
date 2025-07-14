-- task2 -- All the employees who are working in the IT department
select * from Employees where Department = 'IT';
select * from Employees;
select * from Projects;

-- task3 -- list of names of employees who joined after 1 january ,2020
select Name from Employees where JoinDate> '2020-01-01';

-- task4 -- Write a query to calculate the total project budget for each department.
select Department, sum(Budget) as Total_Budget from Projects group by Department;

-- task 5 -- : List Employees with a Salary Above the Average
select * from Employees where 
Salary>( select avg(Salary) from Employees);

-- task 6 -- Write a query to find departments in the Employees table that have no associated projects in 
-- the Projects table.
SELECT DISTINCT Department
FROM Employees
WHERE Department NOT IN (SELECT DISTINCT Department FROM Projects);

-- task 7 -- : Add a Column for Performance Rating
-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Run your update statement
UPDATE employees 
SET PerformanceRating = 7
WHERE department = 'Finance';

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;

-- task 7 -- 
-- Join the Employees and Projects tables to display each employee’s name, department, and 
-- the project(s) associated with their department
SELECT e.Name, e.Department, p.ProjectName, p.Budget
FROM Employees e
LEFT JOIN Projects p ON e.Department = p.Department;

-- task 8 --
-- Create a View for High Earners Create a view HighEarners that contains the 
-- details of employees earning more than 60,000.
create view  HighEarners as
select  * from Employees where Salary> 60000;

-- Arithematic Operators
select 30+20;
select 30-20;
select 30*20;
select 30/10;
select 30%10;

-- SQL Comparison Operators
-- = Equal to
select * from accounts  where amount = 45;

-- Greater than >
select * from accounts where amount > 45;

-- Less than <
select * from accounts where amount <45;

-- Greater than or equal to 
select * from accounts where amount >= 45;

-- Less than or equal to
select * from accounts where amount <= 45;

-- <> Not equal to
select * from accounts where amount <> 45;


-- Logical Operators
-- AND
select * from accounts;
select * from accounts where amount = 45 and mode = 'cash';

-- OR
select * from accounts where amount >45 or mode = 'Debit Card';

-- NOT
select * from accounts where not (amount>45 or mode = 'Debit Card');

-- Between
select * from accounts where amount  between 45 and 80;

-- iN
select * from accounts where mode in ('Credit Card','Cash');

