SELECT
  students.name,
  AVG(assignment_submissions.duration) AS avg_ass_dur,
  AVG(assignments.duration) AS avg_est_dur
FROM
  students
  JOIN assignment_submissions ON students.id = student_id
  JOIN assignments ON assignments.id = assignment_id
WHERE
  end_date IS NULL
GROUP BY
  students.name
HAVING
  AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY
  AVG(assignment_submissions.duration) ASC
