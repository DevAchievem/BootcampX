SELECT students.name AS students_name, students.start_date AS students_startdate, cohorts.name AS cohorts_name, cohorts.start_date AS cohorts_startdate
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.start_date != students.start_date
ORDER BY cohorts_startdate;