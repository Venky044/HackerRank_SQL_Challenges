--           The Report

-- You are given two tables: Students and Grades. 
--   Students contains three columns ID, Name and Marks.
--   Grades contains three columns Grade, Min_Mark and Max_Mark.

  -- Explination
-- Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. 
-- Ketty doesn't want the NAMES of those students who received a grade lower than 8. 
-- The report must be in descending order by grade -- i.e. higher grades are entered first. 
-- If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. 
-- Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order.
-- If there is more than one student with the same grade (1-7) assigned to them, 
-- order those particular students by their marks in ascending order.


-- Write a query to help Eve

    -- Sample Output:
-- Maria 10 99
-- Jane 9 81
-- Julia 9 88 
-- Scarlet 8 78
-- NULL 7 63
-- NULL 7 68

-- Note: Print "NULL"  as the name if the grade is less than 8.

-- Solutions:
select 
    if(st.grade>7, st.name, null) as name,
    st.grade, st.marks
from
    (select s.name, g.grade, s.marks
    from students s, grades g
    where s.marks between g.min_mark and g.max_mark) as st
order by st.grade desc, st.name, st.marks asc;

-- or
select 
    if(Grade >= 8, Name, "NULL"), Grade, Marks
from Students, Grades
where Marks between Min_Mark and Max_Mark
order by Grade desc, Name;
            
