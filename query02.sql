/*
    What is the percent change in trips in Q3 2022 as compared to Q3 2021?

    Using only the tables from Q3 2021 and Q3 2022 (i.e. not directly using the
    number calculated in the previous question), find the percent change in the
    number of trips in Q3 2022 as compared to 2021. Round your answer to two
    decimal places and name the resulting field `perc_change`.

    Remember you can do calculations in the select clause.
*/

SELECT
ROUND(((trips2022 - trips2021) / CAST(trips2021 AS decimal)*100), 2)::text || '%' AS pct_change
FROM 
    (
        SELECT 
            (SELECT COUNT(*) FROM indego.trips_2021_q3) AS trips2021,
            (SELECT COUNT(*) FROM indego.trips_2022_q3) AS trips2022
    );



/*
    If you want to get fancier here, you can cast the result to a string and
    concatenate a '%' to the end. For example:

        (10 + 3.2)::text || '%' AS perc_change

    This uses the type casting (number to string) and string concatenation
    operator (`||`, double pipes) that's essentially a `+` for strings.
*/
