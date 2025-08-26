use  eee;

#Table:users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);
#Table: user_logs
CREATE TABLE user_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    action_time DATETIME,
    action VARCHAR(50),
    user_name VARCHAR(100)
);
DELIMITER $$
CREATE TRIGGER after_user_insert
AFTER INSERT ON users 
FOR EACH ROW
BEGIN
    INSERT INTO user_logs (action_time, action, user_name)
    VALUES (NOW(), 'User Created', NEW.name);
END $$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER after_user_update
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_logs (action_time, action, user_name)
    VALUES (NOW(), 'User Updated', NEW.name);
END $$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER after_user_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_logs (action_time, action, user_name)
    VALUES (NOW(), 'User Deleted', OLD.name);
END $$
DELIMITER ;
show triggers;
insert into  users values (1,"Sriram","srirammuthu003@gmail.com");
select*from user_logs;
select*from users;
insert into  users values (2,"praveen","praveensangar003@gmail.com");
update users set name="sangar" where name="praveen"; 
delete from users where name="Sriram";

