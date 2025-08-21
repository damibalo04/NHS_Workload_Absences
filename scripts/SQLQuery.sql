

Select *
from mentalhealthandworkload..Absences

select *
from mentalhealthandworkload..WaitingTime

-- Finding the mean waiting times in and ordering them from highest to lowest
SELECT 
    [Region Name],
    AVG(Average_waiting_weeks) AS MeanWaitingWeeks
FROM mentalhealthandworkload..WaitingTime
GROUP BY [Region Name]
ORDER BY MeanWaitingWeeks DESC;


-- Finding mean absence rates for March 2025
SELECT  
    0.25*(London) as London,
    0.25*(South_West) as [South West],
    0.25*(South_East) as [South East],
    0.25*(Midlands) as Midlands,
    0.25*(East) as [East of England],
    0.25*(North_West) as [North West],
    0.25*(North_East_and_Yorkshire) as [North East and Yorkshire],
    0.25*(England) as England
from mentalhealthandworkload..Absences
where [Table 1: Monthly Sickness Absence rates by NHS England Region (%] = 'March 2025'


