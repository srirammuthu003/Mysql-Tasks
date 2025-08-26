call eee.bookfetch_procedure();
delimiter &&
create procedure INSERTR1(in   id INT  ,
    in name VARCHAR(50) ,
   in position VARCHAR(50),
    in salary DECIMAL(10, 2) )
begin 
insert into worker
values (id,name,position,salary);
end &&
delimiter ;

delimiter //
create procedure display(in   p_id INT  ,
    out p_name VARCHAR(50) ,
   out p_position VARCHAR(50),
    out p_salary DECIMAL(10, 2) )
begin 
select id,name,position,salary into p_id,p_name,p_position,p_salary from worker where id=p_id;
end //
delimiter ;
