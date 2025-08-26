use eee;
CREATE TABLE worker (
    id INT PRIMARY KEY KEY AUTO_INCREMENT ,
    name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO worker (name, position, salary) 
VALUES
('Alice Johnson', 'Manager', 75000.00),
('Bob Smith', 'Developer', 60000.00),
('Charlie Brown', 'Designer', 55000.00);
select * from worker;

