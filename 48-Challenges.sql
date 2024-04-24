        -- Challenges

-- Julia asked her students to create some coding challenges. 

-- Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
-- Sort your results by the total number of challenges in descending order. 
-- If more than one student created the same number of challenges, then sort the result by hacker_id. 
-- If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, 
-- then exclude those students from the result.

-- Input Format

-- The following tables contain challenge data:

-- Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 

-- Challenges: The challenge_id is the id of the challenge, and hacker_id is the id of the student who created the challenge. 

-- Solution:
with sample_data as (
    select h.hacker_id, h.name, count(c.hacker_id) as num_of_ch
    from hackers h
        inner join
        challenges c on h.hacker_id = c.hacker_id
    group by h.hacker_id, h.name
    order by num_of_ch desc
)

select hacker_id, name, num_of_ch
from sample_data
where num_of_ch = (select max(num_of_ch) from sample_data) or
      num_of_ch in (select num_of_ch from sample_data s
                    group by s.num_of_ch
                    having count(s.num_of_ch) = 1)
order by num_of_ch desc, hacker_id;

--  OR

with sample_data as (
    select hacker_id, count(hacker_id) as t_num_ch
    from challenges 
    group by hacker_id)

select h.hacker_id, h.name, s.t_num_ch
from hackers h
    inner join
    sample_data s on h.hacker_id = s.hacker_id
where s.t_num_ch = (select max(t_num_ch) from sample_data) or
      s.t_num_ch in (select t_num_ch from sample_data
                    group by t_num_ch
                    having count(t_num_ch) = 1)
group by h.hacker_id, h.name
order by s.t_num_ch desc, h.hacker_id;
