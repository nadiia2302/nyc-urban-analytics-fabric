CREATE TABLE [dbo].[FactAirQualityDaily] (

	[location_id] int NULL, 
	[parameter] varchar(50) NULL, 
	[avg_pollution_value] float NULL, 
	[full_date] date NULL
);