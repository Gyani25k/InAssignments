USE university;

SELECT
    s.stdFirstName AS StudentFirstName,
    s.stdLastName AS StudentLastName,
    c.CourseDept,
    c.CourseNumber,
    f.FacFirstName AS ProfessorFirstName,
    f.FacLastName AS ProfessorLastName
FROM
    university.Student s
JOIN
    university.Enrollment e ON s.idStudent = e.Student_idStudent
JOIN
    university.Offering o ON e.Offering_idOffering = o.idOffering
JOIN
    university.Course c ON o.Course_idCourse = c.idCourse
JOIN
    university.Faculty f ON o.Faculty_idFaculty = f.idFaculty
WHERE
    (c.CourseDept = 'DAT' OR (c.CourseDept = 'ART' AND f.FacLastName != 'Nelson'))
ORDER BY
    s.stdLastName ASC,
    c.CourseDept ASC,
    c.CourseNumber ASC,
    f.FacLastName ASC;
