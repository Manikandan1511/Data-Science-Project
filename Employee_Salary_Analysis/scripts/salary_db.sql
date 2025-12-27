CREATE TABLE IF NOT EXISTS Employees (
    EmpID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10, 2),
    JoinDate DATE
);

INSERT INTO Employees (Name, Department, Salary, JoinDate) VALUES
('Anit', 'IT', 85000, '2021-01-15'), ('Deepa', 'IT', 92000, '2020-05-20'),
('Kiran', 'IT', 105000, '2018-12-01'), ('Vijay', 'IT', 88000, '2021-03-10'),
('John', 'HR', 55000, '2022-03-10'), ('Sara', 'HR', 60000, '2021-11-05'),
('Leo', 'HR', 48000, '2023-01-05'), ('Amit', 'HR', 52000, '2022-07-14'),
('Vikram', 'Sales', 70000, '2019-08-12'), ('Rohan', 'Sales', 75000, '2020-02-28'),
('Pooja', 'Sales', 82000, '2020-10-15'), ('Sonia', 'Sales', 69000, '2021-04-10'),
('Megha', 'Marketing', 68000, '2022-01-10'), ('Arun', 'Marketing', 72000, '2021-06-15'),
('Mona', 'Marketing', 71000, '2021-09-22'), ('Rahul', 'Marketing', 65000, '2022-05-30');