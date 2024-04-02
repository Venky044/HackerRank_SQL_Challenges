          -- Occupations
 
--   Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically 
-- and displayed underneath its corresponding Occupation. 
-- The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

-- Note: Print NULL when there are no more names corresponding to an occupation.
-- Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

-- Explanation

-- The first column is an alphabetically ordered list of Doctor names.
-- The second column is an alphabetically ordered list of Professor names.
-- The third column is an alphabetically ordered list of Singer names.
-- The fourth column is an alphabetically ordered list of Actor names.
-- The empty cell data for columns with less than the maximum number of names 
     -- per occupation (in this case, the Professor and Actor columns) are filled with NULL values.

-- Solution:
select 
    min(if(occupation='Doctor', name, null)) as doctor,
    min(if(occupation='Professor', name,null)) as Professor,
    min(if(occupation='Singer', name, null)) as Singer,
    min(if(occupation='Actor', name, null)) as Actor
from 
    (select name, occupation,
        row_number() over (partition by Occupation order by name) as row_num 
    from occupations) as ord 
    group by row_num;
