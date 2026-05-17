select * from cleand_dataset

----------------------------------------------------------------------------------------------------------------------------


select top 10  location,area_type,bhk,price
from cleand_dataset
where location='Whitefield'
order by price desc

----------------------------------------------------------------------------------------------------------------------------


select bhk,round(avg(price),2)  as [Price in Lakhs]
from cleand_dataset
where location='Whitefield'
group by bhk
order by bhk

----------------------------------------------------------------------------------------------------------------------------

select top 10 
location,society,bhk,ROUND(avg(price),2) as [Price in lakhs]
from cleand_dataset
group by location,society,bhk
order by [Price in lakhs] desc

----------------------------------------------------------------------------------------------------------------------------


SELECT TOP 10
    location, society, bhk,
    ROUND(AVG(total_sqft), 2) AS [Avg Sqft],
    ROUND(AVG(price), 2) AS [Price in lakhs]
FROM cleand_dataset
GROUP BY location, society, bhk
ORDER BY [Price in lakhs] DESC;