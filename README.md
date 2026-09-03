# India-Air-Pollution-Monitoring-Snapshot

### Project Overview

This project demonstrates & analyses the snapshot of India's air pollution monitoring recorded particularly on 24/08/2026 11:00:00 AM. The data consisted with pollutants like PM 2.5, PM10, NH3, SO2, NO2, OZONE, CO recorded across multiple stations and cities across states of India with its maximum, minimum and average metrics recorded, This project focuses on performing region specific analysis, missing records analysis & also analysis driven with respect to properties of pollutants.

### Tech Stack

**Python (Pandas)**: Used for initial data loading, basic data cleaning, missing value analysis, and preparing the dataset for further analysis.

**MySQL**: Used to store and analyze the air pollution dataset. SQL queries were used to perform state-wise pollutant analysis, identify maximum recorded pollutant concentrations, analyze monitoring coverage, and assess missing data.

**Power BI**: Used to build an interactive single-page dashboard for visualizing the overall air pollution monitoring snapshot, including state-wise PM2.5 concentrations, pollutant profiles, monitoring station coverage, and highest reported pollutant concentrations.

**DAX**: Used for basic calculations and measures required for KPI cards and dashboard analysis

### Insights & Recommendations

**1. Cities and their respective states with Higher Average PM2.5**

**Insight**

- Cities like Bhagalpur(Bihar), Faridabad(Haryana), Khora(Uttar Pradesh), Manesar(Haryana), Khairthal(Rajasthan) recorded average pm 2.5 higher in comparison to other cities which particularly drives attention to be given as PM 2.5 as a pollutant has properties which can penetrate deep into the lungs and potentially enter the bloodstream and have an effect people's health.
  
- Also out of the top cities having higher PM2.5 concentration major of them belonged to one state i.e Haryana which highlights paying attention with respect to it.

![2.5](image/avg_pm2.5.png)

**Recommendation**

- These cities with their respective states having higher average PM2.5 concentration data recorded gets a basis for targeted investigation and control of major known contributing source categories.

**2. Cities and their respective States with Higher Average PM10**

**Insight**

- Cities like Palwal(Haryana), Ambala(Haryana), Bhagalpur(Bihar), Noida(Uttar Pradesh), Bhiwani(Haryana) recorded higher average PM10 in comparison to other cities and PM10 as a pollutant is commonly associated with dust generating sources such as road dust, traffic related dust resuspension, construction and demolition activities which can have an effect on people's respiratory health.
      
![pm10](image/avg_pm10.png)

**Recommendation**

- These observed concentration in these cities and states highlights the need to investigate and control of likely dust generating sources.

**3. Cities and their respective States with Higher Average NO2**

**Insight**

- Cities like Siliguri(Bengal), Dhanbad(Jharkhand), Talcher(Odisha), Jaisalmer(Rajasthan) had higher concentration of NO2 recorded on average than other cities which is likely to be associated with urban traffic and combustion through vehicle emissions, traffic congestion, fuel combustion etc

![no2](image/avg_no2.png)

**Recommendation**

- These locations recording higher average NO2 concentration should be prioritized for investigation of major combustion-related emission sources, particularly high-traffic corridors and nearby fuel combustion activities.

4. State wise missing data records analysis

**Insight**

- States like Meghalaya, Jharkhand, Jammu & Kashmir, Ladakh had missed recording data higher with 43%, 29%, 29%, 29% respectively which highlights an attention to be given as out of 100% data recorded if 30-40% records are missed recording it can leave a missing gap for data in those particular places.

![msg](image/missing%.png)

**Recommendation**

- These states facing this issue with more missing records should check their monitoring stations and data collection systems to identify the reasons for these gaps and improve data availability.


