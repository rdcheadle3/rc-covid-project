-- create table with relevant covid death data

SELECT location,
       date,
       total_cases,
       new_cases,
       total_deaths, 
       population
FROM covid-project-377302.covid_sql.deaths
WHERE continent is not null
ORDER BY 1, 2