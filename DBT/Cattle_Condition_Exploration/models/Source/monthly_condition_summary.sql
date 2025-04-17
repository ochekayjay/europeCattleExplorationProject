

SELECT
  YearMonth,
  Country,
  Species,
  Condition,
  SUM(NumberOfConditions) AS total_conditions,
  SUM(Throughput) AS total_throughput,
  ROUND(SUM(NumberOfConditions) * 100.0 / NULLIF(SUM(Throughput), 0), 2) AS condition_rate_percent
FROM {{ source('DeceasedConditionToSeason', 'cattle_condition') }}
GROUP BY YearMonth, Country, Species, Condition
