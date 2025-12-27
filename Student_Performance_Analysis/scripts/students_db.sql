
CREATE TABLE IF NOT EXISTS Students (
    StudentID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(50),
    Subject VARCHAR(30),
    Marks INTEGER,
    Attendance INTEGER
);

INSERT INTO Students (Name, Subject, Marks, Attendance) VALUES
('Arjun', 'Math', 85, 95), ('Arjun', 'Science', 78, 95), ('Arjun', 'English', 82, 95),
('Priya', 'Math', 92, 98), ('Priya', 'Science', 88, 98), ('Priya', 'English', 95, 98),
('Rahul', 'Math', 45, 60), ('Rahul', 'Science', 52, 60), ('Rahul', 'English', 48, 60),
('Sonia', 'Math', 76, 85), ('Sonia', 'Science', 81, 85), ('Sonia', 'English', 79, 85),
('Vijay', 'Math', 38, 40), ('Vijay', 'Science', 42, 40), ('Vijay', 'English', 35, 40),
('Ananya', 'Math', 95, 92), ('Ananya', 'Science', 91, 92), ('Ananya', 'English', 89, 92),
('Ishaan', 'Math', 55, 70), ('Ishaan', 'Science', 48, 70), ('Ishaan', 'English', 60, 70),
('Meera', 'Math', 68, 75), ('Meera', 'Science', 72, 75), ('Meera', 'English', 70, 75),
('Karthik', 'Math', 30, 35), ('Karthik', 'Science', 35, 35), ('Karthik', 'English', 40, 35),
('Zara', 'Math', 88, 90), ('Zara', 'Science', 84, 90), ('Zara', 'English', 92, 90);