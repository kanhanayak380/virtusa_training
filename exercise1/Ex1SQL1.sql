CREATE TABLE Subject(
  id VARCHAR(10) PRIMARY KEY,
  rollno INT,
  subjectname VARCHAR(20),
  marks INT
);
INSERT INTO Subject VALUES('A001', 2863, 'Maths', 80);
INSERT INTO Subject VALUES('A002', 2864, 'Physics', 90);
INSERT INTO Subject VALUES('A003', 2865, 'Chemistry', 50);
INSERT INTO Subject VALUES('A004', 2866, 'Biology', 70);
INSERT INTO Subject VALUES('A005', 2867, 'History', 60);

CREATE TABLE Student(
  id VARCHAR(10),
  rollno INT,
  sname VARCHAR(20),
  address VARCHAR(50),
  FOREIGN KEY(id) REFERENCES Subject(id)
);
INSERT INTO Student VALUES('A003', 2865, 'Aisha', 'Aiginia');
INSERT INTO Student VALUES('A004', 2866, 'Abhishek', 'Kalpana');
INSERT INTO Student VALUES('A004', 2866, 'Amlan', 'Old Town');
INSERT INTO Student VALUES('A001', 2863, 'Sauransu', 'Unit-1');


SELECT subjectname, COUNT(id) AS TotalStudents FROM Subject
WHERE subjectname = 'Physics'
GROUP BY subjectname;

SELECT SUM(marks) AS TotalMarks FROM Subject, Student
WHERE Subject.id = Student.id
AND sname = 'Aisha';
