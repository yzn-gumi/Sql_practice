-- How many entries in the database are from Africa?
SELECT COUNT(*) AS 'Africa Countries'
FROM countries
WHERE continent = 'Africa';


-- What was the total population of Oceania in 2005?
SELECT population_years.year, SUM(population_years.population)
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2005
AND countries.continent = 'Oceania';


-- What is the average population of countries in South America in 2003?
SELECT countries.continent, AVG(population_years.population)
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.continent = 'South America';


-- What country had the smallest population in 2007?
SELECT countries.name, MIN(population_years.population)
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE population_years.year = 2007;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT countries.name, AVG(population_years.population)
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.name = 'Poland';


-- How many countries have the word "The" in their name?
SELECT *
FROM countries
WHERE name LIKE '%The%';


-- What was the total population of each continent in 2010?
SELECT countries.continent, SUM(population_years.population)
FROM countries
JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = 2010
GROUP BY countries.continent;

