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

-- Create costofliving Table
CREATE TABLE costofliving (
  country TEXT,
  costofliving INT,
  groceries_index INT,
  restaurant_index INT
  );
  
-- Set Variable Character Field for country and set as primary key
ALTER TABLE `costofliving` modify country VARCHAR(50);
ALTER TABLE `costofliving` ADD PRIMARY KEY(country);

-- View countrydata Table
select * from costofliving


-- Create Location Table
CREATE TABLE location (
  country TEXT,
  multidimentional_poverty INT,
  lat INT,
  lon INT
  );
  
-- Set Variable Character Field for country and set as primary key
ALTER TABLE `location` modify country VARCHAR(50);
ALTER TABLE `location` ADD PRIMARY KEY(country);

-- View location Table
select * from location


