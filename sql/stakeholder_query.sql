-- Stakeholder question:
-- Which boroughs report the highest number of noise-related complaints?

SELECT
  borough,
  COUNT(*) AS n_noise_complaints
FROM nyc311_db.complaints
WHERE LOWER(problem) LIKE '%noise%'
GROUP BY borough
ORDER BY n_noise_complaints DESC;