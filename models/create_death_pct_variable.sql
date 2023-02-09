-- Look at Total Cases vs Total Deaths

SELECT location,
       date,
       total_cases,
       total_deaths,
       (total_deaths/total_cases)*100 AS death_percentage
FROM {{ref('create_deaths_table')}}
ORDER BY 1, 2