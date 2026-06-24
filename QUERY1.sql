create table employees(
	employee_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    department varchar(50),
    hire_date date,
    salary decimal(10,2),
    is_active boolean
);

insert into employees(employee_id, first_name, last_name, department, hire_date, salary, is_active) values
(1, 'Alice', 'johnson', 'Engineering', '2020-03-15', 75000, true),
(2, 'Bob', 'Smith', 'Marketing', '2019-07-01', 68000, true),
(3, 'Charlie', 'Davis', 'Finance', '2021-01-20', 72000, true),
(4, 'Dana', 'Lee', 'Human Resources', '2018-11-05', 66000, false);
use harryjoins;
select concat(first_name,' ', last_name) as name from employees;
select first_name, length(first_name) from employees;