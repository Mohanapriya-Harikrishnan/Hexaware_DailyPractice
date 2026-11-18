CREATE DATABASE office;
 
USE office;
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    City VARCHAR(50)
);
INSERT INTO Employee VALUES
(1, 'Amit', 'IT', 30000, 'Delhi'),
(2, 'Neha', 'HR', 45000, 'Mumbai'),
(3, 'Ravi', 'IT', 60000, 'Delhi'),
(4, 'Priya', 'Sales', 25000, 'Pune'),
(5, 'Rahul', 'HR', 50000, 'Delhi'),
(6, 'Sneha', 'Sales', 35000, 'Mumbai'),
(7, 'Karan', 'IT', 70000, 'Pune'),
(8, 'Pooja', 'HR', 40000, 'Delhi');
select * from Employee;
select Name,salary from Employee where Salary>40000;
select Name,salary from Employee where salary<(select AVG(salary) from Employee);
select Name,salary from Employee where salary=(select MAX(salary) from Employee);
select Name,salary from Employee where salary=(select MIN(salary) from Employee);
select Name,Department from Employee where Department=(select department from Employee where name="Amit");
select Name,Department,salary from Employee where salary IN(select Department from Employee where salary>45000);
select Name,salary,Department from Employee where salary>ALL(select salary from Employee where Department="HR");
 select Name,salary,Department from Employee where salary>ANY(select salary from Employee where Department="Sales");
 select department,AVG(Salary) from Employee 
 group by department
 having AVG(Salary)>(select AVG(Salary) from Employee);
 select Name,Department from Employee
 where Emp_ID NOT IN(select Emp_ID from Employee where Department="IT");