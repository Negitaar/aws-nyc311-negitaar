-- Average resolution time by agency.
-- Uses try(date_parse()) to avoid errors from missing or badly formatted dates.

SELECT
  agency,
  AVG(
    date_diff(
      'day',
      try(date_parse(created_date, '%Y-%m-%d %H:%i:%s')),
      try(date_parse(closed_date,  '%Y-%m-%d %H:%i:%s'))
    )
  ) AS avg_days_to_close
FROM nyc311_db.complaints
WHERE try(date_parse(created_date, '%Y-%m-%d %H:%i:%s')) IS NOT NULL
  AND try(date_parse(closed_date, '%Y-%m-%d %H:%i:%s')) IS NOT NULL
GROUP BY agency
ORDER BY avg_days_to_close DESC;