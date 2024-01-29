USE university;
SELECT
    CONCAT(s.stdLastName, ', ', s.stdFirstName) AS FullName,
    s.stdMajor,
    ROUND(AVG(e.GPAPoints), 4) AS AverageGPA
FROM
    Student s
    INNER JOIN Enrollment e ON e.Student_idStudent = s.idStudent
GROUP BY
    s.idStudent, s.stdFirstName, s.stdLastName, s.stdMajor
HAVING
    COUNT(e.idEnrollment) > 0
ORDER BY
    FullName ASC;
