# Covr CSV Interview

## Part One

We would like you to take `example.csv` that we provide and parse out the contents of the file into a structured data format in preparation to insert that data into a database.

## Part Two

Insert the prepared data into the database.

### Required Tooling

#### [docker](https://docs.docker.com/get-started/get-docker/)

#### [docker-compose](https://docs.docker.com/compose/install/)

### Setup

1. `cp .env.example .env`
2. `docker-compose up -d`
3. `docker exec -i db mysql -uroot -proot -P 3306 -e "show databases;"`

```txt
Database
information_schema
mysql
performance_schema
sys
```

4. `docker exec -i db mysql -uroot -proot -P 3306 < ./init-migration.sql`
