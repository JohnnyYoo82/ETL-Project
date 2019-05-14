-- Create and use country_db
CREATE DATABASE country_db;
USE country_db;

-- Create countrydata Table
CREATE TABLE countrydata (
  country TEXT,
  region TEXT,
  population_inthousands INT,
  gdp_inmillions INT,
  urbanpop_pcttotalpop DECIMAL(4,1)
);

-- Set Variable Character Field for country and set as primary key
ALTER TABLE `countrydata` modify country VARCHAR(50);
ALTER TABLE `countrydata` ADD PRIMARY KEY(country);

-- View countrydata Table
select * from countrydata

-- Create costofliving Table
CREATE TABLE costofliving (
  country TEXT,
  costofliving DECIMAL(5,2),
  groceries_index DECIMAL(5,2),
  restaurant_index DECIMAL(5,2)
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
  lat DECIMAL(8,5),
  lon DECIMAL(8,5)
  );
  
-- Set Variable Character Field for country and set as primary key
ALTER TABLE `location` modify country VARCHAR(50);
ALTER TABLE `location` ADD PRIMARY KEY(country);

-- View location Table
select * from location

-- Create happiness Table
CREATE TABLE happiness (
  country TEXT,
  overall_happiness_rank INT,
  happiness_score DECIMAL(4,3)
  );

-- Set Variable Character Field for country and set as primary key
ALTER TABLE `happiness` modify country VARCHAR(50);
ALTER TABLE `happiness` ADD PRIMARY KEY(country);

-- View happiness Table
select * from happiness