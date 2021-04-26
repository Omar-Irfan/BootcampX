SELECT students.name, avg(assignment_submissions.duration)
FROM students JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg(assignment_submissions.duration) DESC;