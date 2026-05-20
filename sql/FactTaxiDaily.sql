CREATE TABLE [dbo].[FactTaxiDaily] (

	[pickup_zone_id] int NULL, 
	[dropoff_zone_id] int NULL, 
	[avg_trip_distance] float NULL, 
	[trip_count] int NULL, 
	[total_revenue] float NULL, 
	[avg_total_amount] float NULL, 
	[pickup_date] date NULL, 
	[pickup_year] int NULL, 
	[total_fare_revenue] float NULL, 
	[avg_fare_amount] float NULL, 
	[avg_trip_duration_min] float NULL
);