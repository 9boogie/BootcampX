SELECT teachers.name AS teacher,students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN assignments ON assistance_requests.id = assignments.id
JOIN students ON student_id = students.id
JOIN teachers On teacher_id = teacher_id
ORDER BY duration;