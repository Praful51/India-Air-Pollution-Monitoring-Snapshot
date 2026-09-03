create database air_poll;
use air_poll;

select * from air_poll;

select distinct(pollutant_id) from air_poll;

#1 Cities with higher average pm 2.5

select state, city,round(avg(pollutant_avg),2) as avg_conc
from air_poll
where pollutant_id='PM2.5' and pollutant_avg is not null
group by state, city
order by avg_conc desc limit 10;

#2 Cities with higher average pm 10

select state, city, round(avg(pollutant_avg),2) as avg_conc
from air_poll
where pollutant_id='PM10' and pollutant_avg is not null
group by state, city
order by avg_conc desc limit 10;

#3 Cities with highest average ozone

select state, city, round(avg(pollutant_avg),2) as avg_conc
from air_poll
where pollutant_id='OZONE' and pollutant_avg is not null
group by state, city
order by avg_conc desc limit 10;

#4 Cities with highest average NH3

select state, city, round(avg(pollutant_avg),2) as avg_conc
from air_poll
where pollutant_id='NH3' and pollutant_avg is not null
group by state, city
order by avg_conc desc limit 10;

#5 Cities with highest average NO2

select state,city, round(avg(pollutant_avg),2) as avg_conc
from air_poll
where pollutant_id='NO2' and pollutant_avg is not null
group by state,city
order by avg_conc desc limit 10;

#6 Cities with highest average CO

select state, city,round(avg(pollutant_avg),2) as avg_conc
from air_poll
where pollutant_id='CO' and pollutant_avg is not null
group by state, city
order by avg_conc desc;

#7 Cities with highest average SO2

select state, city, round(avg(pollutant_avg),2) as avg_conc
from air_poll
where pollutant_id='SO2' and pollutant_avg is not null
group by state, city
order by avg_conc desc;


#8 Number of recording stations by state

select state,count(distinct station) as total_stations, round(count(distinct station)*100/(select count(distinct station) from air_poll),2 )as station_percent
from air_poll
group by state
order by station_percent desc;

#9 States which have most number of missing records/data ie State-wise missing measurement analysis

select state, count(*)as total_records, sum(case when pollutant_avg is null then 1 else 0 end) as total_missing_records,round(
sum(case when pollutant_avg is null then 1 else 0 end)/count(*) *100,2) as missing_percentage
from air_poll
group by state
order by missing_percentage desc;

select * from air_poll;

#10 Cities which recorded Highest spike of PM2.5 with their respective states

select city, state,pollutant_id,pollutant_max
from air_poll
where pollutant_id='PM2.5'
and pollutant_max is not null
order by pollutant_max desc
limit 3;

