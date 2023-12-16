-- Briefly view the structure of the imported tables

USE PortfolioProject;

SELECT TOP 5 *
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1]

SELECT TOP 5 *
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2]

SELECT TOP 5 *
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3]

SELECT TOP 5 *
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4]


-- Modify a column to match other tables

EXEC sp_rename 'dbo.Divvy_Trips_2019_Q2.bike_id', 'bikeid', 'COLUMN';


-- Remove first row of invalid data in the Q2 table

SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2]
WHERE trip_id LIKE '%Rental%'

DELETE FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2]
WHERE trip_id LIKE '%Rental%'


-- Join all table into a single one
-- First make sure all tables are of the same data type to allow union all
-- Trip duration should be converted to float but due to data type difference in the actual data it wouldn't work
-- As such the column was kept as nvarchar 

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN trip_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN start_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN end_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN bikeid INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN tripduration NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN from_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN from_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN to_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN to_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN usertype NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2] ALTER COLUMN birthyear SMALLINT;

-- Convert all tables to same data type

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN trip_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN start_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN end_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN bikeid INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN tripduration NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN from_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN from_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN to_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN to_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN usertype NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1] ALTER COLUMN birthyear SMALLINT;

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN trip_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN start_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN end_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN bikeid INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN tripduration NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN from_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN from_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN to_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN to_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN usertype NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3] ALTER COLUMN birthyear SMALLINT;


ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN trip_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN start_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN end_time DATETIME;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN bikeid INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN tripduration NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN from_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN from_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN to_station_id INT;
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN to_station_name NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN usertype NVARCHAR(50);
ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4] ALTER COLUMN birthyear SMALLINT;


-- Union all the tables

SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1]
UNION ALL
SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2]
UNION ALL
SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3]
UNION ALL
SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4];
;

-- Save the union into a new table

SELECT *
INTO [PortfolioProject].[dbo].[Divvy_Trips_2019]
FROM (
    SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q1]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q2]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q3]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[Divvy_Trips_2019_Q4]
) AS CombinedData;


SELECT *
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019];


-- We create addition cloumn to help understand the data

SELECT start_time, CAST(start_time AS DATE) AS start_date_new, CAST(start_time AS TIME) AS start_time_new
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019];

SELECT end_time, CAST(end_time AS DATE) AS end_date_new, CAST(end_time AS TIME) AS end_time_new
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019];

SELECT start_time, DATENAME(WEEKDAY, start_time) AS day_of_week
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019];

SELECT start_time, end_time, DATEDIFF(MINUTE, start_time, end_time) AS ride_length_minutes
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019];


-- Add these new columns to the table

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019]
ADD start_date_new DATE,
    start_time_new TIME,
    end_date_new DATE,
    end_time_new TIME,
    day_of_week NVARCHAR(20),
    ride_length_minutes INT;


-- Update the columns

UPDATE [PortfolioProject].[dbo].[Divvy_Trips_2019]
SET start_date_new = CAST(start_time AS DATE);

UPDATE [PortfolioProject].[dbo].[Divvy_Trips_2019]
SET start_time_new = CAST(start_time AS TIME);

UPDATE [PortfolioProject].[dbo].[Divvy_Trips_2019]
SET end_date_new = CAST(end_time AS DATE);

UPDATE [PortfolioProject].[dbo].[Divvy_Trips_2019]
SET end_time_new = CAST(end_time AS TIME);

UPDATE [PortfolioProject].[dbo].[Divvy_Trips_2019]
SET day_of_week = DATENAME(WEEKDAY, start_time);

UPDATE [PortfolioProject].[dbo].[Divvy_Trips_2019]
SET ride_length_minutes = DATEDIFF(MINUTE, start_time, end_time);


-- View table structure to confirm update

SELECT TOP 10 *
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019];


-- Removing some columns that would not be needed for the analysis

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019]
DROP COLUMN from_station_name;

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019]
DROP COLUMN to_station_name;


-- Since we have split the start_time and end_time, we can remove the original columns

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019]
DROP COLUMN start_time;

ALTER TABLE [PortfolioProject].[dbo].[Divvy_Trips_2019]
DROP COLUMN end_time;


-- Viewing the table once again

SELECT TOP 20 *
FROM [PortfolioProject].[dbo].[Divvy_Trips_2019];



