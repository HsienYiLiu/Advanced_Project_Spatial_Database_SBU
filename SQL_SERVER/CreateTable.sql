CREATE TABLE dbo.EarthquakeData
(
    Id int IDENTITY PRIMARY KEY,
    EventDate DATETIME2,
    Magnitude FLOAT,
    Place VARCHAR(300),
    Coordinates GEOGRAPHY,
    Long varchar(100),
    Lat varchar(100)
)

CREATE SPATIAL INDEX IX_Coordinates ON dbo.EarthquakeData (Coordinates)