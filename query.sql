-- Query to check successful load
SELECT * FROM countrydata;

SELECT * FROM county;

-- Join tables on county_id
SELECT countrydata.country, countrydata.region, countrydata.population_inthousands, countrydata.gdp_inmillions, countrydata.urbanpop_pcttotalpop,
FROM countrydata
INNER JOIN county
ON countrydata.country = county.country;
