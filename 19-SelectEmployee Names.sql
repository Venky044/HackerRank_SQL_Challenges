        -- Select Employee Names

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

-- The Employee table containing employee data for a company is described as follows:
-- where employee_id is an employee's ID number, name is their name, 
-- months is the total number of months they've been working for the company, 
-- and salary is their monthly salary.

-- Soultions:
select name 
from employee 
order by name;


-- Additional Questions for this table

-- 1. select Employee data whose salary is higher then average salary of the company?
select *
from employee
where salary > (select avg(salary) from employee)
order by id;
