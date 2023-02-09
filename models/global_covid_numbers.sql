-- showing global new cares and new deaths from covid by date

SELECT SUM(new_cases) AS total_cases,
       SUM(cast(new_deaths as int)) AS total_deaths, 
       SUM(cast(new_deaths as int))/SUM(new_cases)*100 AS total_death_percentage
FROM covid-project-377302.covid_sql.deaths
WHERE continent is not null
--GROUP BY date
ORDER BY 1, 2

