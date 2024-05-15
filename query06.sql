/*
    How many trips in each quarter were shorter than 10 minutes?

    Your result should have two records with three columns, one for the year
    (named `trip_year`), one for the quarter (named `trip_quarter`), and one for
    the number of trips (named `num_trips`).
*/

SELECT 
    trip_year,
    trip_quarter,
    COUNT(*) AS num_trips
FROM 
    (
        SELECT 
            '2021' AS trip_year,
            'Q3' AS trip_quarter,
            duration
        FROM 
            indego.trips_2021_q3
        UNION ALL
        SELECT 
            '2022' AS trip_year,
            'Q3' AS trip_quarter,
            duration
        FROM 
            indego.trips_2022_q3
    ) AS bothquarters
WHERE 
    duration < 10
GROUP BY 
    trip_year,
    trip_quarter;
-- Enter your SQL q