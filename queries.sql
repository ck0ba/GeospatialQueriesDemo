-- Query to find locations within a certain radius (e.g., 500 meters) from a given point
SELECT name FROM locations
WHERE ST_DWithin(
    location,
    ST_GeogFromText('POINT(-0.1257 51.5085)'), -- Given point
    500 -- Radius in meters
);
