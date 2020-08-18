SELECT assignments.day, count(assignments.id), SUM (duration)
FROM assignments
GROUP BY day
ORDER BY day