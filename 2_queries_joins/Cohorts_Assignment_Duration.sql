SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id 
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE cohorts.name = 'FEB12';