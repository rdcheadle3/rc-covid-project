-- Showing countries with highest death count

SELECT location,
       MAX(cast(total_deaths as int)) AS total_death_count
FROM covid-project-377302.covid_sql.create_deaths_table
GROUP BY location
ORDER BY total_death_count desc