SELECT
  YearMonth,
  Country,
  MAX(NumberOfThroughputPlants) AS num_plants,  -- assuming it's consistent per row in a group
  SUM(Throughput) AS total_throughput,
  ROUND(SUM(Throughput) * 1.0 / NULLIF(MAX(NumberOfThroughputPlants), 0), 2) AS avg_throughput_per_plant
FROM {{ source('DeceasedConditionToSeason', 'cattle_condition') }}
GROUP BY YearMonth, Country
