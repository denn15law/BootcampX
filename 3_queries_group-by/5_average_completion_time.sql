SELECT students.name AS student, avg(assignment_submissions.duration) AS average_assignment_duation
  FROM assignment_submissions
  JOIN students ON student_id = students.id
  WHERE students.end_date IS NULL
  GROUP BY student
  ORDER BY average_assignment_duation DESC;