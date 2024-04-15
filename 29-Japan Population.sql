--         Japan Population

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

-- Solution:
select Sum(population) 
from City 
where Countrycode = 'JPN';
