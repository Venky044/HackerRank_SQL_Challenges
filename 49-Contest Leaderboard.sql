        -- Contest Leaderboard

-- You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

-- The total score of a hacker is the sum of their maximum scores for all of the challenges. 
-- Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
-- If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
-- Exclude all hackers with a total score of  from your result.

-- Input Format

-- The following tables contain contest data:
-- Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 
-- Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, 
--   challenge_id is the id of the challenge for which the submission belongs to, and score is the score of the submission. 

-- Sample Output:
-- 4071 Rose 191
-- 74842 Lisa 174
-- 84072 Bonnie 100

-- Solutions:
select h.hacker_id, h.name, sum(s.m_score) as total_score
from hackers h, (
                select hacker_id, challenge_id, max(score) as m_score
                from submissions
                group by hacker_id, challenge_id
                ) s
where h.hacker_id = s.hacker_id
group by h.hacker_id, h.name
having total_score > 0
order by total_score desc, h.hacker_id;
