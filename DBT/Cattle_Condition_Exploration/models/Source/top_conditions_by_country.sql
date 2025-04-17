


SELECT
  Country,
  Species,
  Condition,
  SUM(NumberOfConditions) AS total_conditions,
  RANK() OVER (PARTITION BY Country, Species ORDER BY SUM(NumberOfConditions) DESC) AS condition_rank
FROM {{ source('DeceasedConditionToSeason', 'cattle_condition') }}
GROUP BY Country, Species, Condition
