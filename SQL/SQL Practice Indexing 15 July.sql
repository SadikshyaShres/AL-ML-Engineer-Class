#indexing -special data structure that helps the database find rows much faster without scanning the entire table
#Clustered Indexing -A clustered index determines the physical order of data rows in a table
#Non Clustered Indexing -is a separate structure from the actual table data.

DROP TABLE IF EXISTS sakila.employee_data;

CREATE TABLE sakila.employee_data(
employee_id INT AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
job_title VARCHAR(50),
salary DECIMAL(10,2),
hire_date DATE, 
City VARCHAR(50)
);

INSERT INTO sakila.employee_data 
(first_name, last_name, department, job_title,salary, hire_date, City)
VALUES
('John', 'Smith', 'Sales', 'Sales Executive', 55000.00, '2022-01-15', 'New York'),
('Emma', 'Johnson', 'HR', 'HR Manager', 68000.00, '2021-05-20', 'Chicago'),
('Michael', 'Brown', 'IT', 'Software Engineer', 82000.00, '2023-02-10', 'Dallas'),
('Sophia', 'Davis', 'Finance', 'Accountant', 61000.00, '2022-09-18', 'Boston'),
('Daniel', 'Wilson', 'IT', 'Database Administrator', 79000.00, '2020-12-01', 'Seattle'),
('Olivia', 'Miller', 'Marketing', 'Marketing Analyst', 60000.00, '2023-03-22', 'Miami'),
('James', 'Taylor', 'Sales', 'Sales Manager', 75000.00, '2019-08-12', 'New York'),
('Ava', 'Anderson', 'Finance', 'Financial Analyst', 64000.00, '2021-11-05', 'Chicago'),
('William', 'Thomas', 'IT', 'System Administrator', 70000.00, '2022-06-30', 'Dallas'),
('Mia', 'Jackson', 'Marketing', 'Content Specialist', 58000.00, '2024-01-10', 'Los Angeles'),
('Noah', 'White', 'HR', 'Recruiter', 52000.00, '2023-07-18', 'Boston'),
('Charlotte', 'Harris', 'IT', 'Data Analyst', 72000.00, '2022-10-25', 'Seattle'),
('Liam', 'Martin', 'Sales', 'Sales Associate', 50000.00, '2024-02-14', 'Miami'),
('Amelia', 'Thompson', 'Finance', 'Auditor', 67000.00, '2021-04-09', 'Dallas');

#Display all record 
SELECT * FROM sakila.employee_data;

#Search using primary key 
SELECT * FROM sakila.employee_data
WHERE employee_id=5;

#check the execution plan 
EXPLAIN SELECT *
FROM sakila.employee_data
WHERE employee_id = 5;

#Search without INDEX
SELECT *
FROM sakila.employee_data
WHERE department = 'IT'
AND city = 'Seattle';

#check the execution plan 
EXPLAIN
SELECT *
FROM sakila.employee_data
WHERE department = 'IT'
AND city = 'Seattle';

#Create index on department
CREATE INDEX idx_department
ON sakila.employee_data(department);

#Create index on city 
CREATE INDEX idx_city
ON sakila.employee_data(city);

#after indexing 
EXPLAIN
SELECT *
FROM sakila.employee_data
WHERE department = 'IT'
AND city = 'Seattle';

-- Create a composite index (better for this query)
CREATE INDEX idx_department_city
ON sakila.employee_data(department, city);

-- Check the execution plan again
EXPLAIN
SELECT *
FROM sakila.employee_data
WHERE department = 'IT'
AND city = 'Seattle';

-- Remove the indexes
DROP INDEX idx_department
ON sakila.employee_data;

DROP INDEX idx_city
ON sakila.employee_data;

DROP INDEX idx_department_city
ON sakila.employee_data;
---------------------------------------------------------------------
#Natural key : is a column that already exists in the real world and naturaly identified a record like SSN and adhar card 
#Surrogate key : artifical key created by the database

drop table if exists sakila.employee_natural ;

CREATE TABLE sakila.employee_natural (
    ssn CHAR(11) PRIMARY KEY,  
    name VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO sakila.employee_natural (ssn, name, department) VALUES
('123-45-6789', 'Alice', 'Finance'),
('234-56-7890', 'Bob', 'IT'),
('345-67-8901', 'Carol', 'HR');

elect * from sakila.employee_natural;

-- This will fail: duplicate primary key
INSERT INTO sakila.employee_natural (ssn, name, department) VALUES
('123-45-6789', 'Eve', 'Marketing');

drop table if exists sakila.employee_surrogate;

CREATE TABLE sakila.employee_surrogate (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,  -- surrogate key
    ssn CHAR(11),
    name VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO sakila.employee_surrogate (ssn, name, department) VALUES
('123-45-6789', 'Alice', 'Finance'),
('234-56-7890', 'Bob', 'IT'),
('345-67-8901', 'Carol', 'HR');

select * from sakila.employee_surrogate;

-- This will succeed: ssn is not primary key
INSERT INTO sakila.employee_surrogate (ssn, name, department) VALUES
('123-45-6789', 'ruchik', 'Data science');

SET SQL_SAFE_UPDATES = 0;
delete from sakila.employee_surrogate where name = 'carol';



