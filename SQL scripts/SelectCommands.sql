--all students and subjects
SELECT Firstname, Surname, StudentID, SubjectAbbreviation 
FROM Students LEFT JOIN Attendance ON Students.ID = Attendance.StudentID

--number of students sharing a surname
SELECT Surname, count(ID) AS Shared 
FROM Students 
GROUP BY Surname ORDER BY Shared DESC

--subjects with less than 3 students
SELECT SubjectAbbreviation 
FROM Attendance 
GROUP BY SubjectAbbreviation HAVING count(StudentID) < 3

--best, worst and average grade
SELECT SubjectAbbreviation, min(Grade) AS BestGrade, max(Grade) AS WorstGrade, avg(Grade) AS AverageGrade, count(StudentID) AS GradedStudents
FROM Grading 
GROUP BY SubjectAbbreviation
