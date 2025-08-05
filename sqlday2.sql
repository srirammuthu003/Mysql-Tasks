create database Employee;
use Employee;
create table EmployeeDetails (empId int primary key,Name varchar(100),Gender varchar(10),Department varchar(50),Salary int,ExperienceYears int);
insert intoEmployeeDetails (empId, Name, Gender, Department, Salary, ExperienceYears) VALUES
(1, 'Alice', 'Female', 'HR', 50000, 3),(2, 'Bob', 'Male', 'Engineering', 70000, 5),(3, 'Carol', 'Female', 'Sales', 45000, 2),
(4, 'David', 'Male', 'Engineering', 72000, 4),(5, 'Eva', 'Female', 'HR', 52000, 2),(6, 'Frank', 'Male', 'Sales', 46000, 3),
(7, 'Grace', 'Female', 'Engineering', 71000, 6),(8, 'Henry', 'Male', 'Marketing', 48000, 1),(9, 'Ivy', 'Female', 'HR', 51000, 4),
(10, 'Jake', 'Male', 'Marketing', 47000, 2);
select Department, count( Name) as EmployeeCount from EmployeeDetails group by Department;
select Department,sum(salary) as TotalSalary from EmployeeDetails group by Department;
select Department,avg(salary) as AvgSalary from EmployeeDetails group by Department;
select Department,min(salary) as MinSalary from EmployeeDetails group by Department;
select Department,max(salary) as maxSalary from EmployeeDetails group by Department;
select Department,sum(salary) as TotalSalary from EmployeeDetails group by Department having sum(salary)>200000;
select Department, avg(ExperienceYears) as AverageExperience from EmployeeDetails group by Department having avg(ExperienceYears) >= 5;
select gender,avg(salary) as Highsalary from EmployeeDetails group by Gender order by Highsalary desc limit 1;
create table ProjectAssignments(empId int,ProjectId int,HoursSpent int);
insert into ProjectAssignments(empId, ProjectId, HoursSpent)values (1, 101, 10),(2, 101, 15),(3, 101, 12),(1, 102, 20),(2, 102, 18),
(4, 103, 25),(5, 103, 30),(3, 103, 22),(4, 101, 17),(5, 102, 15);
select ProjectId, SUM(HoursSpent) as TotalHours from ProjectAssignments group by ProjectId;
select ProjectId, SUM(HoursSpent) as TotalHours from ProjectAssignments group by ProjectId order by TotalHours desc limit 1;





