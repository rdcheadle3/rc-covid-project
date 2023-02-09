-- Looking at Total Cases vs Population
-- shows what percentage of population got Covid

SELECT location,
       date,
       population,
       total_cases,
       (total_cases/population)*100 AS percent_population_infected
FROM {{ref('create_deaths_table')}}
ORDER BY 1, 2