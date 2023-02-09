-- Looking at countries with highest infection rate comapred to population

SELECT location,
       population,
       MAX(total_cases) AS highest_infection_count,
       MAX((total_cases/population))*100 AS percent_population_infected
FROM {{ref('create_deaths_table')}}
GROUP BY location, population
ORDER BY percent_population_infected desc