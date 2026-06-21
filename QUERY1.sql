Create database school;
create table classes(
	class_id int auto_increment primary key,
    class_name varchar(50) not null
);


create table students(
	student_id int auto_increment primary key,
    student_name varchar(100) not null,
    class_id int, 
    foreign key (class_id) references classes(class_id)
      on update cascade
      on delete set null
);

insert into classes(class_name) values
('Mathematics'),
('Science'),
('History');

insert into students(student_name, class_id) values
('Alice', 1),
('Bob', 2),
('Charlie', 1);

select * from students;
select * from classes;











