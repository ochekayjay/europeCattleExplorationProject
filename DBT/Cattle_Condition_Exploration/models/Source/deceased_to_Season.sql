

WITH deceased_ratio AS (
    SELECT
        EXTRACT(MONTH FROM YearMonth) AS monthnumber,
        AVG(PercentageOfThroughput) AS avg_throughput
    FROM {{ source('DeceasedConditionToSeason', 'cattle_condition') }}
    GROUP BY monthnumber
)

SELECT * FROM deceased_ratio
