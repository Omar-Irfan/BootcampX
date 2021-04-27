SELECT avg(total_duration) as avg_total_duration
FROM (SELECT cohorts.name, sum(completed_at - started_at) as total_duration
FROM students JOIN assistance_requests ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration) as total_duration_column