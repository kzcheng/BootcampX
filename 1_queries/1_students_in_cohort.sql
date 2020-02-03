SELECT students.id, students.name
FROM students
  JOIN cohorts
  ON students.cohort_id = cohorts.id
WHERE cohorts.id = 1
ORDER BY name ASC