SELECT
  students.name,
  COUNT(*) AS total_assistance_requests
FROM
  assistance_requests
  JOIN students ON students.id = student_id
GROUP BY
  students.name
HAVING
  students.name = 'Elliot Dickinson'
