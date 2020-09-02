CREATE  DATABASE world_countries;
USE world_countries;

CREATE TABLE world(
  id INT PRIMARY KEY AUTO_INCREMENT,
  c_name text not null,
  continent text,
  area NUMERIC,
  c_population NUMERIC,
  gdp NUMERIC
)