SELECT students.name, avg(assignment_submissions.duration) as student_avg_completion_time, avg(assignments.duration) as suggested_avg_compleition_time
FROM assignment_submissions JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY student_avg_completion_time ASC;