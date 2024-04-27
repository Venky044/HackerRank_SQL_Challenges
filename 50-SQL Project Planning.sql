        -- SQL Project Planning

-- You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. 
--   It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

-- If the End_Date of the tasks are consecutive, then they are part of the same project. 
--   Samantha is interested in finding the total number of different projects completed.

-- Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. 
--   If there is more than one project that have the same number of completion days, then order by the start date of the project.

-- Sample Output: 
-- 2015-10-28 2015-10-29
-- 2015-10-30 2015-10-31

-- Solutions:
select t1.start_date, t2.end_date
from (
    select start_date,
            row_number() over(order by start_date) as row_no
    from projects
    where start_date not in (select end_date from projects)
    ) as t1,
    (
     select end_date,
            row_number() over(order by end_date) as row_no
     from projects
    where end_date not in (select start_date from projects)
    ) as t2
where t1.row_no = t2.row_no
order by datediff(t2.end_date, t1.start_date), t1.start_date;
