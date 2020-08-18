SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_reqest_duration
FROM cohorts
	JOIN students ON cohorts.id = cohort_id
	JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY average_assistance_reqest_duration DESC
LIMIT 1;