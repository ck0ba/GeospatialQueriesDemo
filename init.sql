-- Create a table `locations` with geospatial data
CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    location GEOGRAPHY(Point, 4326) -- Using EPSG:4326 for WGS 84
);

-- Insert a few locations
INSERT INTO locations (name, location) VALUES
('Location A', ST_GeogFromText('POINT(-0.1257 51.5085)')), -- Example location
('Location B', ST_GeogFromText('POINT(-0.1278 51.5074)'));

-- Create a spatial index for optimizing queries
CREATE INDEX idx_locations_location ON locations USING GIST (location);
