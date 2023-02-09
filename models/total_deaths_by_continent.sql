-- shows total death count by continent

SELECT location,
       MAX(cast(total_deaths as int)) AS total_death_count
FROM covid-project-377302.covid_sql.deaths
WHERE continent is null AND location NOT LIKE '%income%' AND location NOT LIKE '%International%'
GROUP BY location
ORDER BY total_death_count desc