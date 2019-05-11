-- Use country_db
USE country_db;

-- Query to check successful load
SELECT * FROM countrydata;

SELECT * FROM costofliving;

-- Join tables on county
SELECT countrydata.country, countrydata.region, countrydata.population_inthousands, countrydata.gdp_inmillions, countrydata.urbanpop_pcttotalpop, costofliving.country, costofliving.costofliving, costofliving.groceries_index, costofliving.restaurant_index
FROM countrydata
INNER JOIN costofliving
ON countrydata.country = costofliving.country;
