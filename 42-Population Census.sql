--           Population Census

-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- Solution:
select 
  sum(ci.population)
from city ci
    inner join
    country co on ci.countrycode =co.code
where co.continent = 'Asia';
