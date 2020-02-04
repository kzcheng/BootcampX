SELECT
  AVG(average_assistance_request_duration) AS average_total_duration
FROM (
  SELECT
    cohorts.name AS name,
    SUM(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_request_duration
  FROM
    assistance_requests
    JOIN students ON students.id = student_id
    JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY
    cohorts.name
  ORDER BY
    average_assistance_request_duration) AS total_cohort_assistance_duration;

