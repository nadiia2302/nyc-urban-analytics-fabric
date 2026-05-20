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

OpenAQ API
ECB FX API
NYC Taxi Data
GDP Data
      ↓
Bronze Layer
      ↓
Silver Layer
      ↓
Gold Warehouse
      ↓
Semantic Model
      ↓
Power BI Dashboards
## Datasets

### NYC Taxi Dataset
Contains trip counts, revenue, fares, and trip distance information.

### OpenAQ Dataset
Contains PM2.5 and NO2 air quality measurements.

### ECB FX Dataset
Contains USD/EUR exchange rates.

### GDP Dataset
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
  ## Key Insights

- Weak negative correlation identified between taxi mobility and pollution levels
- PM2.5 pollution peaks during summer months
- Taxi revenue follows seasonal trends
- OpenAQ data availability decreases significantly after 2023
- GDP remained stable despite FX fluctuations
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
