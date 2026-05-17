select * from cleand_dataset

alter table cleand_dataset
drop column column1

select * from cleand_dataset

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- find average price of 2bhk in banglore

with find as(
select bhk,ROUND(avg(price),2) as average_price
from cleand_dataset
group by  bhk
)
select * from find
where bhk=2

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- Find location where avg price is above overall avg price

WITH avg_overall AS (
    SELECT ROUND(AVG(price), 2) AS overall_avg
    FROM cleand_dataset
),
avg_by_location AS (
    SELECT location, ROUND(AVG(price), 2) AS location_avg
    FROM cleand_dataset
    GROUP BY location
)
SELECT a.location, a.location_avg
FROM avg_by_location a, avg_overall o
WHERE a.location_avg > o.overall_avg
ORDER BY a.location_avg DESC

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Find BHK wise min, max, avg price

WITH summary AS (
    SELECT bhk,
           location,
           MIN(price) AS min_price,
           MAX(price) AS max_price,
           ROUND(AVG(price), 2) AS avg_price,
           COUNT(*) AS total_listings
    FROM cleand_dataset
    GROUP BY bhk, location
)
SELECT * FROM summary
ORDER BY bhk, avg_price DESC

----------------------------------------------------------------------------------------------------------------------------

-- showing top 10 society in each location using cte and window funcation

with window_fun as(
select 
location,society,
DENSE_RANK() over (partition by location order by avg(price) desc) as ranking,
round(avg(price),2)  as average_price
from cleand_dataset
group by location,society
)
select location,society,average_price from window_fun
where ranking<=10
order by location asc



