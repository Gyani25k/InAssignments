USE university;
SELECT
    f.idFaculty,
    f.FacFirstName,
    f.FacLastName,
--     CONCAT(f.FacFirstName, ' ', f.FacLastName) AS FacultyName,
    MAX(o.Capacity) AS Maxcapacity,
    SUM(o.Capacity) AS Sumofcapacity,
    COUNT(o.idOffering) AS Howmanyclasses
FROM
    Faculty f
    LEFT JOIN Offering o ON f.idFaculty = o.Faculty_idFaculty
GROUP BY
    f.idFaculty, f.FacFirstName, f.FacLastName
ORDER BY
    Howmanyclasses ASC;
