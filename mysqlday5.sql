create database eee;
use  eee;
CREATE TABLE emp01 (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    active INT
);
INSERT INTO emp01(id, name, department, active) VALUES
(1, 'Alice Johnson', 'Sales', 1),
(2, 'Bob Smith', 'HR', 1),
(3, 'Carol White', 'IT', 0),
(4, 'David Lee', 'Finance', 1),
(5, 'Eva Brown', 'Marketing', 0);
create table ord(order_id int,status_id int,status varchar(20));
insert into ord values(1,01,"pending");
insert into ord values(2,02,"rejected");
insert into ord values(3,03,"Approved");
select*from ord;


CREATE VIEW employee_view AS SELECT id, name, department FROM emp01 WHERE active = 1;
SELECT * FROM employee_view;
create or replace view emp_replace as SELECT id, name, department FROM emp01;
SELECT * FROM emp_replace;
drop view emp_replace;
show full tables in eee where table_type="VIEW";
create view pending_orders as select*from ord where status="pending"; 
select*from pending_orders;
create view order_summary as select e.id,e.name,e.department,o.status from emp01 e inner join ord o on e.id=o.order_id;
SELECT * FROM order_summary;
