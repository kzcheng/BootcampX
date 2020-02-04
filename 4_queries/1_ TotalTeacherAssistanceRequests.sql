SELECT
  teachers.name,
  COUNT(*) AS total_assistance_requests
FROM
  teachers
  JOIN assistance_requests ON teachers.id = teacher_id
GROUP BY
  teachers.name
HAVING
  teachers.name = 'Waylon Boehm'
