select * from incidence
where WHO_Region = 'Americas'

--malaria death percentage in africa
select country, Year, No_of_cases, No_of_deaths, (No_of_deaths / NULLIF(No_of_cases,0) * 100) as death_p, WHO_Region
from reported_numbers
where WHO_Region = 'Africa'

--malaria death percentage in Nigeria
select country, year, No_of_cases, No_of_deaths, (No_of_deaths / NULLIF(No_of_cases,0) * 100) as death_p, WHO_Region
from reported_numbers
order by death_p desc
where country = 'Nigeria'

--- max number of deaths
select max(no_of_deaths) as highestdeathcount, WHO_Region from reported_numbers
group by WHO_Region 
order by highestdeathcount desc

--max number of cases 
select max(no_of_cases) as highestmalariacount, WHO_Region from reported_numbers
group by WHO_Region 
order by highestmalariacount asc

--max number of cases per 1000 grouped by region
select max(no_of_cases) as highestmalariacount, WHO_Region from incidence
group by WHO_Region 
order by highestmalariacount asc

--malaria cases in Papua New Guinea
select country,year,no_of_cases, WHO_Region from incidence
where Country = 'Papua New Guinea'

--max number of cases per 1000 grouped by country
select max(no_of_cases) as highestmalariacount, country from incidence
group by country
order by highestmalariacount desc

--max number of cases per 1000 in western pacific
select max(no_of_cases) as highestmalariacount, Country from incidence
where WHO_Region = 'Western Pacific'
group by Country
order by highestmalariacount desc



