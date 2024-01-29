USE university;

SELECT
  CONCAT(c.CourseDept, " ", c.CourseNumber) AS Class,
  c.CourseDesc AS "Course Description",
  s.stdFirstName,
  s.stdLastName,
  o.OffTerm,
  o.Format,
  CONCAT(f.FacFirstName, " ", f.FacLastName) AS FacultyName
FROM
  course c
  INNER JOIN offering o ON c.idCourse = o.Course_idCourse
  JOIN faculty f ON o.Faculty_idFaculty = f.idFaculty
  JOIN enrollment e ON o.idOffering = e.Offering_idOffering
  JOIN student s ON e.Student_idStudent = s.idStudent
  ORDER BY Class , s.stdLastName, s.stdFirstName;
