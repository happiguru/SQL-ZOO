CREATE  DATABASE world_countries;
USE world_countries;

CREATE TABLE world(
  id INT PRIMARY KEY AUTO_INCREMENT,
  c_name text not null,
  continent text,
  area NUMERIC,
  c_population NUMERIC,
  gdp NUMERIC
);

/* number one */
SELECT population FROM world
  WHERE name = 'Germany';

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000;

 SELECT name, population
      FROM world
      WHERE name LIKE "Al%";

SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l';

SELECT name,length(name)
FROM world
WHERE length(name)=5 and region='Europe';

SELECT name, area*2 FROM world WHERE population = 64000;

SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000;

 SELECT name, population/area
  FROM world
 WHERE name LIKE ('China', 'Nigeria', 'France', 'Australia');

 SELECT name FROM world
  WHERE name LIKE 'Y%';

SELECT name FROM world
  WHERE name LIKE '%y';

SELECT name FROM world
  WHERE name LIKE '%x%';

SELECT name FROM world
  WHERE name LIKE '%land';

SELECT name FROM world
  WHERE name LIKE 'C%ia';

SELECT name FROM world
  WHERE name LIKE '%oo%';

