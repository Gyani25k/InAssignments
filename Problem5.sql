USE university;
SELECT
  CONCAT(c.CourseDept, " ", c.CourseNumber) AS "Course Name",
  c.CourseDesc AS "Course Description",
  o.OffTerm,
  o.Format,
  COUNT(s.idStudent) AS "How many students",
  CONCAT(f.FacFirstName, " ", f.FacLastName) AS FacultyName
FROM
  course c
  INNER JOIN offering o ON c.idCourse = o.Course_idCourse
  JOIN faculty f ON o.Faculty_idFaculty = f.idFaculty
  JOIN enrollment e ON o.idOffering = e.Offering_idOffering
  JOIN student s ON e.Student_idStudent = s.idStudent
GROUP BY
  f.idFaculty
ORDER BY
  "Course Name" ASC, o.Format;
