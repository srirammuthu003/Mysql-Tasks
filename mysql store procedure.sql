create database sp;
use sp;
create table sri(name varchar(20),id int,age int);
insert into sri(name,id,age) values ("sai",01,21),("ram",02,22),("jai",03,23);
select * from sri;
DELIMITER $$
CREATE PROCEDURE ALLVALUES()
BEGIN
select * from sri;
END$$
DELIMITER ;
CALL ALLVALUES()


/* 
1)IN
2)OUT
3)INOUT
*/

/*IN*/
-- Create table
create TABLE emp (
    emp_id VARCHAR(20),
    ename VARCHAR(20),
    job_desc VARCHAR(20),
    salary INT,
    branch_id INT
);

-- Insert 15 rows with some repeated values
INSERT INTO emp (emp_id, ename, job_desc, salary, branch_id)
VALUES
('E001', 'Alice', 'Manager', 75000, 101),
('E002', 'Bob', 'Developer', 60000, 101),
('E003', 'Charlie', 'Analyst', 55000, 102),
('E004', 'David', 'HR', 50000, 103),
('E005', 'Eva', 'Developer', 60000, 101),
('E006', 'Frank', 'Manager', 75000, 101),
('E007', 'Grace', 'Analyst', 55000, 102),
('E008', 'Hannah', 'Developer', 60000, 101),
('E009', 'Ian', 'HR', 50000, 103),
('E010', 'Jack', 'Manager', 75000, 101),
('E011', 'Karen', 'Developer', 60000, 101),
('E012', 'Leo', 'Analyst', 55000, 102),
('E013', 'Mia', 'Developer', 60000, 101),
('E014', 'Nina', 'HR', 50000, 103),
('E015', 'Oscar', 'Manager', 75000, 101);

select*from emp;
delimiter &&
create procedure data(IN jdesc varchar(20))
begin
declare total int default 0;
select count(emp_id)
into total
from emp
where job_desc=jdesc;
select total;
end&&
delimiter ;
call data('HR')
call data('Manager');

/*OUT*/
delimiter &&
create procedure super(IN jdesc varchar(20), OUT total int)
begin
select count(emp_id)
into total
from emp
where job_desc=jdesc;
end&&
delimiter ;
call super('HR',@total)
select @total; 

/*INOUT*/
delimiter &&
create procedure inc(INOUT counter int,in incr int)
begin
set counter = counter+incr ;
end &&
delimiter ;
set @counter=5;
call inc(@counter,2);
select @counter;


