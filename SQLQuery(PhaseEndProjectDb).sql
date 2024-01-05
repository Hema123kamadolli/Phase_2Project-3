create database PhaseEndProjectDb
use PhaseEndProjectDb
CREATE TABLE Students (
 StudentID INT PRIMARY KEY,
 FirstName NVARCHAR(50),
 LastName NVARCHAR(50),
);
INSERT INTO Students (StudentId,FirstName, LastName) VALUES
(1,'Sunita', 'Kaale'),
(2,'Naina', 'Reddy'),
(3,'Rajesh', 'Patel');
-- Create Subjects Table
CREATE TABLE Subjects (
 SubjectID INT PRIMARY KEY,
 SubjectName NVARCHAR(50),
);
INSERT INTO Subjects (SubjectId,SubjectName) VALUES
(1,'Maths'),
(2,'Physics'),
(3,'Hindi');
-- Create Marks Table
CREATE TABLE Marks (
 MarkId INT primary key,
 StudentID INT,
 SubjectID INT,
 Mark INT,
 CONSTRAINT FK_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
 CONSTRAINT FK_SubjectID FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);
INSERT INTO Marks (MarkId,StudentID, SubjectID, Mark) VALUES
(1,1, 1, 88),
(2,1, 2, 90),
(3,2, 1, 79),
(4,2, 2, 98),
(5,3, 3, 99);
select * from Students
select * from Subjects
select * from Marks