-- Write a query to display the names (first_name, last_name) using an alias 
-- name “First Name", "Last Name".

SELECT FIRST_NAME AS "First Name", LAST_NAME AS "Last name"
FROM employees;

-- Write a query to get a unique department ID from employee table.

SELECT DISTINCT department_id
FROM employees;

-- Write a query to get the details of all employees from the employee table 
-- in descending order by their first name.

SELECT *
FROM employees
ORDER BY first_name DESC;

-- Write a query to get the names (first_name, last_name), salary and 
-- 15% of salary as PF for all the employees.

SELECT first_name, last_name, salary, salary*.15 AS "pf"
FROM employees;

--  Write a query to get the employee ID, names (first_name, last_name) and salary 
-- in ascending order according to their salary.

SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary ASC;

-- Write a query to get the total salaries payable to employees.

SELECT SUM(salary)
FROM employees;

-- Write a query to get the maximum and minimum salary paid to the employees.

SELECT max(salary), min(salary)
FROM employees;

-- Write a query to get the average salary and number of employees are working.

SELECT AVG(salary), COUNT(*)
FROM employees;

-- Write a query to get the number of employees working with the company.

SELECT COUNT(*)
FROM employees;

-- Write a query to get the unique number of designations available in the 
-- employees table.

SELECT COUNT(DISTINCT job_id)
FROM employees;

-- Write a query to get all the first name from the employees table in upper case.

SELECT UPPER(first_name)
FROM employees;

-- Write a query to get the first three characters of the first name for all 
-- the employees in the employees table.

SELECT SUBSTRING(first_name,1,3)
FROM employees;

-- Write a query to calculate the expression 171*214+625.

SELECT 171*214+625 Result;

-- Write a query to get the name, including first name and last name of all the 
-- employees from employees table.

SELECT CONCAT(first_name,' ', last_name)
FROM employees;

-- Write a query to get the first names after removing all the leading and trailing
-- blanks of all the employees from employees table.

SELECT TRIM(first_name)
FROM employees;

-- Write a query to get the first name, last name and the length of the name, 
-- including first_name and last_name of all the employees from employees table.

SELECT first_name, last_name, length(CONCAT(first_name,' ', last_name))
FROM employees;

-- Write a query to check whether the first_name column of the employees table 
-- containing any number.

SELECT * 
FROM employees 
WHERE  first_name 
SIMILAR TO   '%0|1|2|3|4|5|6|7|8|9%';

- OR
SELECT *
FROM employees
WHERE first_name ~ '[0-9]';

-- Write a query to select first ten records from a table.

SELECT *
FROM employees
LIMIT 10;

-- Write a query to get a monthly salary (rounded up to 2 decimal places) of each 
-- employee.

SELECT first_name, last_name, 
ROUND(salary/12,2) as "Monthly Salary" 
FROM employees;