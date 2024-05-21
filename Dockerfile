# Use the official PostgreSQL image with PostGIS extension
FROM postgis/postgis:16-3.4

# Copy SQL scripts that will be executed upon initialization
COPY ./init.sql /docker-entrypoint-initdb.d/
COPY ./queries.sql /docker-entrypoint-initdb.d/

# Set default environment variables (change as needed)
ENV POSTGRES_DB=geodb
ENV POSTGRES_USER=geo_user
ENV POSTGRES_PASSWORD=geo_password
