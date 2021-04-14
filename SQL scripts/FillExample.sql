INSERT INTO Subjects(Abbreviation, SubjectName) VALUES ('BPC-EL1', 'Elektrotechnika 1')
INSERT INTO Subjects(Abbreviation, SubjectName) VALUES ('BPC-ALD', 'Algoritmy a datové struktury')
INSERT INTO Subjects(Abbreviation, SubjectName) VALUES ('BPC-VMP', 'Vektorový a maticový poèet')

INSERT INTO Students(Firstname, Surname, DateOfBirth, ID) VALUES ('Tomáš', 'Hnidopich', '2000-06-02', 220010)
INSERT INTO Students(Firstname, Surname, DateOfBirth, ID) VALUES ('Petr', 'Navrátil', '1998-07-05', 220011)
INSERT INTO Students(Firstname, Surname, DateOfBirth, ID) VALUES ('Jan', 'Krabica', '1999-06-11', 220012)

INSERT INTO Attendance(StudentID, SubjectAbbreviation) VALUES (220010, 'BPC-EL1');
INSERT INTO Attendance(StudentID, SubjectAbbreviation) VALUES (220010, 'BPC-ALD');
INSERT INTO Attendance(StudentID, SubjectAbbreviation) VALUES (220010, 'BPC-VMP');
INSERT INTO Attendance(StudentID, SubjectAbbreviation) VALUES (220011, 'BPC-ALD');
INSERT INTO Attendance(StudentID, SubjectAbbreviation) VALUES (220012, 'BPC-EL1');
INSERT INTO Attendance(StudentID, SubjectAbbreviation) VALUES (220012, 'BPC-VMP');

INSERT INTO Grading(StudentID, SubjectAbbreviation, GradingDate, Grade) VALUES (220010, 'BPC-VMP', '2021-04-10', 1);
INSERT INTO Grading(StudentID, SubjectAbbreviation, GradingDate, Grade) VALUES (220010, 'BPC-EL1', '2021-04-12', 2);
INSERT INTO Grading(StudentID, SubjectAbbreviation, GradingDate, Grade) VALUES (220012, 'BPC-VMP', '2021-04-13', 4);
