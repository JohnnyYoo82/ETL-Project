-- Use country_db
USE country_db;

-- Query to check successful load
SELECT * FROM countrydata;
SELECT * FROM costofliving;
SELECT * FROM location;
SELECT * FROM happiness;


-- Join tables on county
SELECT countrydata.country, countrydata.region, countrydata.population_inthousands, countrydata.gdp_inmillions, countrydata.urbanpop_pcttotalpop, costofliving.costofliving, costofliving.groceries_index, costofliving.restaurant_index, location.multidimentional_poverty, location.lat, location.lon, happiness.overall_happiness_rank, happiness.happiness_score
FROM countrydata
INNER JOIN costofliving
ON countrydata.country = costofliving.country
INNER JOIN location
ON costofliving.country = location.country
INNER JOIN happiness
ON location.country = happiness.country;

