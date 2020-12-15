SELECT 
    d.Id,
    d.Magnitude,
    d.EventDate,
    d.Place,



    b.ParkName
FROM 
    dbo.EarthQuakeData d
    CROSS JOIN dbo.ParkBoundaries b
WHERE
    Coordinates.STIntersects(ParkBoundary) =1
    AND b.ParkName = 'Yellowstone National Park'
ORDER BY
    Magnitude DESC