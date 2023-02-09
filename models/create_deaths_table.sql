-- create table for reference

SELECT location,
       date,
       total_cases,
       new_cases,
       total_deaths, 
       population
FROM covid-project-377302.covid_sql.deaths
ORDER BY 1, 2