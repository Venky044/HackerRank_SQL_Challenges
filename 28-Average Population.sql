        -- Average Population

-- Query the average population for all cities in CITY, rounded down to the nearest integer.

-- Solution:
Select 
  round(avg(population)) 
From city;
