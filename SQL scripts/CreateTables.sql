DROP TABLE Grading;
DROP TABLE Attendance;
DROP TABLE Subjects;
DROP TABLE Students;

CREATE TABLE Subjects(Abbreviation char(8), SubjectName varchar(60),
PRIMARY KEY (Abbreviation))

CREATE TABLE Students(Firstname varchar(20), Surname varchar(20), DateOfBirth date, ID int,
PRIMARY KEY (ID))

CREATE TABLE Attendance(StudentID int, SubjectAbbreviation char(8),
PRIMARY KEY (StudentID, SubjectAbbreviation),
FOREIGN KEY (StudentID) REFERENCES Students(ID) ON DELETE CASCADE,
FOREIGN KEY (SubjectAbbreviation) REFERENCES Subjects(Abbreviation) ON DELETE CASCADE)

CREATE TABLE Grading(StudentID int, SubjectAbbreviation char(8), GradingDate date, Grade tinyint
PRIMARY KEY (StudentID, SubjectAbbreviation),
FOREIGN KEY (StudentID, SubjectAbbreviation) REFERENCES Attendance(StudentID, SubjectAbbreviation))
