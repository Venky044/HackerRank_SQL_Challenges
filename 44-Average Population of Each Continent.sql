--         Average Population of Each Continent

-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNT.Continent)
-- and their respective average city populations (CITY.Population) rounded down to the nearest integer.

-- Note: CITY.CountrCode and COUNTRY.Code are matching key columns.

-- Solution:
select 
  co.continent, floor(avg(ci.population))
from city ci
    inner join
    country co on ci.countrycode = co.code
group by co.continent;
