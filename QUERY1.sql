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
select * from employees;
use harryjoins;
CREATE VIEW harry as select first_name, last_name, department, salary from employees;
select * from employees where department='Engineering' and is_active=1;
create index idx1 on employees(department, is_active);
drop index idx1 on employees;
select first_name, last_name, salary from employees
where salary>(select avg(salary) from employees)
;
select first_name, last_name from employees e
where salary>(
select avg(salary) from employees where department = e.department
)
;
select department, avg(salary) as total from employees group by department; 
