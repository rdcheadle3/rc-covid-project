-- Looking at total populaiton vs vaccinations

SELECT dea.continent, 
       dea.location, 
       dea.date, 
       dea.population, 
       vac.new_vaccinations
FROM covid-project-377302.covid_sql.deaths dea
JOIN covid-project-377302.covid_sql.vaccinations vac 
  ON dea.location = vac.location
  AND dea.date = vac.date
WHERE dea.continent is not null
ORDER BY 2,3