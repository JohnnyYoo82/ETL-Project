-- Create and use country_db
CREATE DATABASE country_db;
USE country_db;

-- Create countrydata Table
CREATE TABLE countrydata (
  country TEXT,
  region TEXT,
  population_inthousands INT,
  gdp_inmillions INT,
  urbanpop_pcttotalpop INT
);

-- Set Variable Character Field for country and set as primary key
ALTER TABLE `countrydata` modify country VARCHAR(50);
ALTER TABLE `countrydata` ADD PRIMARY KEY(country);

-- View countrydata Table
select * from countrydata

