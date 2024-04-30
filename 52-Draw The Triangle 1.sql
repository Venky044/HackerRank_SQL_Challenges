          Draw The Triangle 1

-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- * * * * * 
-- * * * * 
-- * * * 
-- * * 
-- *
-- Write a query to print the pattern P(20).

-- Solution:
delimiter //
create procedure draw_triangle(in N int)
begin
    set @cnt := N;
    while @cnt >= 1 do
        select repeat('* ', @cnt);
        set @cnt = @cnt - 1;
    end while;
end //

call draw_triangle(20)
