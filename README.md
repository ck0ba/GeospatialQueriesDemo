# GeospatialQueriesDemo

## Description
This project demonstrates the use of geospatial queries in a PostgreSQL database with the PostGIS extension.

## Setup
To run this project, Docker must be installed.

1. Build the Docker image:
```
docker build -t geospatial-demo .
```

2. Start the container:
```
docker run --name geospatial-demo -p 5432:5432 -d geospatial-demo

```

## Usage
Connect to the PostgreSQL database using standard tools like `psql` or GUI clients. Use the following credentials:
- **Host**: localhost
- **Port**: 5432
- **Database**: geodb
- **User**: geo_user
- **Password**: geo_password

Once connected, you can execute the SQL queries defined in `queries.sql` to test the functionality.
