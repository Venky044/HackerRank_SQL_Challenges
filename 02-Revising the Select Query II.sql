            -- Revising the Select Query II

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

-- Solution:
select Name
from City
where CountryCode = 'USA' and Population > 120000;
