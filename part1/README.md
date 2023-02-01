# Part 1

## Datasets

* Indego Bikeshare station status data
* Indego Trip data
  - Q3 2021
  - Q3 2022

All data is available from [Indego's Data site](https://www.rideindego.com/about/data/).

Load all three datasets into a PostgreSQL database schema named `indego`. Your schema should have the following structure:

> This structure is important -- particularly the **table names** and the **lowercase field names**; if your queries are not built to work with this structure then _your assignment will fail the tests_.

* **Table**: `indego.trips_2021_q3`  
  **Fields**:
    * `trip_id TEXT`
    * `duration INTEGER`
    * `start_time TIMESTAMP`
    * `end_time TIMESTAMP`
    * `start_station TEXT`
    * `start_lat FLOAT`
    * `start_lon FLOAT`
    * `end_station TEXT`
    * `end_lat FLOAT`
    * `end_lon FLOAT`
    * `bike_id TEXT`
    * `plan_duration INTEGER`
    * `trip_route_category TEXT`
    * `passholder_type TEXT`
    * `bike_type TEXT`

* **Table**: `indego.trips_2022_q3`  
  **Fields**: (same as above)

* **Table**: `indego.station_statuses`  
  **Fields** (at a minimum -- there may be many more):
    * `id INTEGER`
    * `name TEXT` (or `CHARACTER VARYING`)
    * `geog GEOGRAPHY`
    * ...

## Questions

For each of the following questions, write a query that will generate the answer in the appropriate SQL file. Some of the questions will ask for an "**Answer:**" -- for those questions, update this readme file with the answer.

1. [How many bike trips in Q3 2021?](query01.sql)

    This file is filled out for you, as an example.

    ```SQL
    select count(*)
    from indego.trips_2021_q3
    ```

    **Result:** 300,432

2. [What is the percent change in trips in Q3 2022 as compared to Q3 2021?](query02.sql)

3. [What is the average duration of a trip for 2021?](query03.sql)

4. [What is the average duration of a trip for 2022?](query04.sql)

5. [What is the longest duration trip across the two quarters?](query05.sql)

    _Why are there so many trips of this duration?_

    **Answer:**

6. [How many trips in each quarter were shorter than 10 minutes?](query06.sql)

7. [How many trips started on one day and ended on a different day?](query07.sql)

8. [Give the five most popular starting stations across all years between 7am and 9:59am.](query08.sql)

    _Hint: Use the `EXTRACT` function to get the hour of the day from the timestamp._

9. [List all the passholder types and number of trips for each across all years.](query09.sql)

10. [Using the station status dataset, find the distance in meters of each station from Meyerson Hall.](query10.sql)

11. [What is the average distance (in meters) of all stations from Meyerson Hall?](query11.sql)

12. [How many stations are within 1km of Meyerson Hall?](query12.sql)

13. [Which station is furthest from Meyerson Hall?](query13.sql)

14. [Which station is closest to Meyerson Hall?](query14.sql)