-- This is the first query:

SELECT DISTINCT year FROM population_years;

--  largest population size for Gabon :
SELECT *
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;

--  10 lowest population countries in 2005 :
SELECT *
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

--  distinct countries with a population of over 100 million in the year 2010 :
SELECT DISTINCT country
FROM population_years
WHERE population > 100
AND year = 2010;

--   countries in this dataset have the word “Islands” in their name :
SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%island%';

--   difference in population between 2000 and 2010 in Indonesia :
SELECT population
FROM population_years
WHERE country = 'Indonesia'
AND year = 2000;
SELECT population
FROM population_years
WHERE country = 'Indonesia'
AND year = 2010;