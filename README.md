# NYC Urban Analytics Platform in Microsoft Fabric
## Project Overview

This project analyzes the relationship between urban mobility, air quality, and economic indicators using Microsoft Fabric.

The solution integrates NYC taxi mobility data, OpenAQ air quality measurements, ECB foreign exchange rates, and GDP indicators into a unified analytics platform built on the Medallion Architecture (Bronze, Silver, Gold).
## Objectives

- Analyze how urban mobility impacts air quality
- Build an end-to-end analytics platform in Microsoft Fabric
- Compare taxi revenue against economic indicators such as GDP and FX rates
- Demonstrate ETL, warehouse modeling, governance, and dashboarding capabilities
## Architecture

<img width="1710" height="673" alt="image" src="https://github.com/user-attachments/assets/ef590e5d-c7b6-404a-be53-8242a98ceb34" />


## Datasets

### NYC Taxi Dataset - https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
Contains trip counts, revenue, fares, and trip distance information.

### OpenAQ Dataset - https://docs.openaq.org/about/about
Contains PM2.5 and NO2 air quality measurements.

### ECB FX Dataset - https://data-api.ecb.europa.eu/service/data/EXR/D.USD.EUR.SP00.A?format=csvdata 
Contains USD/EUR exchange rates.

### GDP Dataset - https://api.worldbank.org/v2/country/USA/indicator/NY.GDP.MKTP.CD?format=json 
Contains GDP values used for economic context.
## Data Engineering Pipeline

- Dataflows Gen2 used for ingestion
- Notebooks used for transformations
- Bronze/Silver/Gold architecture implemented
- Automated refresh schedules configured
- Warehouse used for analytics-ready reporting tables
## Data Model

A star schema model was implemented for reporting.

### Fact Tables
- FactTaxiDaily
- FactAirQualityDaily

### Dimension Tables
- DimDate
- DimLocation
- DimZone
- DimGDP
- DimFx
## Dashboards

- NYC Mobility Dashboard
- Air Quality Dashboard
- Mobility vs Air Quality Correlation
- Economic Impact Dashboard
## Governance & Monitoring

- Row-Level Security (RLS) implemented
- Scheduled refresh enabled
- Semantic model relationships configured
- Data governance practices applied using Medallion Architecture
## Technologies Used

- Microsoft Fabric
- Power BI
- SQL
- Python
- Dataflows Gen2
- Lakehouse
- Warehouse
- Semantic Models

###	Key analytical questions
	•	How does traffic intensity (trips per day) relate to air quality (PM2.5/NO2 levels) in NYC?
Traffic intensity (trips per day) shows different relationships with NO2 and PM2.5 levels in NYC.

For NO2, the correlation coefficient was 0.13 in 2022 and increased to 0.49 in 2023. This indicates that the relationship between traffic intensity and NO2 became stronger over time, changing from a weak positive correlation to a moderate positive correlation.

For PM2.5, the correlation coefficient was -0.38 in 2022 and -0.04 in 2023. This suggests that in 2022 there was a moderate negative correlation between traffic intensity and PM2.5 levels, while in 2023 the relationship became very weak and close to no correlation.

However, it is important to note that OpenAQ data availability decreases significantly after 2023, resulting in limited air quality coverage for 2024–2025. Therefore, the analysis for later years may be less reliable due to missing or incomplete data.
	•	Which zones or times of day show the strongest link between taxi demand and pollution peaks?
The strongest link between taxi demand and pollution peaks can be observed for both PM2.5 and NO2 in specific seasons and NYC zones.

For PM2.5, the highest average pollution level was recorded during the summer, with an average value of 13.2. In 2023, the correlation between taxi demand and PM2.5 reached 1.0, indicating a perfect positive relationship. However, in 2022 the correlation was -0.42, showing a moderate negative relationship. The zones with the strongest association were Midtown Center, Upper East Side South, and Upper East Side North.

For NO2, the highest average pollution level was observed during the winter, with an average value of 0.019. The correlation between taxi demand and NO2 was consistently strong and positive, with values of 0.84 in 2022 and 0.82 in 2023. The same zones - Midtown Center, Upper East Side South, and Upper East Side North - showed the strongest relationship between taxi demand and pollution peaks.
•	What is the average revenue per trip in USD vs EUR, and how does exchange rate fluctuation affect it?
•	Over multiple years, do we see mobility/economic growth at the expense of environmental quality?

