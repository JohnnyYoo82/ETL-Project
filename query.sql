-- Use country_db
USE country_db;

-- Query to check successful load
SELECT * FROM countrydata;
SELECT * FROM costofliving;
SELECT * FROM location;

-- Join tables on county
SELECT countrydata.country, countrydata.region, countrydata.population_inthousands, countrydata.gdp_inmillions, countrydata.urbanpop_pcttotalpop, costofliving.costofliving, costofliving.groceries_index, costofliving.restaurant_index, location.multidimentional_poverty, location.lat, location.lon
FROM countrydata
INNER JOIN costofliving
ON countrydata.country = costofliving.country
INNER JOIN location
ON costofliving.country = location.country;

