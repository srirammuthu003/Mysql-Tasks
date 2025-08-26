create database likee;
use likee;
CREATE TABLE Employee (EmpFirstName VARCHAR(50));
INSERT INTO Employee (EmpFirstName) VALUES
('Kumar'),
('Kuldeep'),
('Kusum'),
('Ravi'),
('Priti'),
('Niki'),
('Arjun'),
('Komal'),
('Karan'),
('John');

select*from employee;
select*from employee where EmpFirstName like 'Ku%';/* character starts with ku*/ 
select*from Employee where EmpFirstName like '%i';/* Character ends with k*/ 
select*from Employee where EmpFirstName like '%ar%';/*character contains with ar/ 
select*from Employee where EmpFirstName like'k_%';/*character starts with k*/ 
 select*from Employee where EmpFirstName like '_%i';/*Chracter ends with i*/