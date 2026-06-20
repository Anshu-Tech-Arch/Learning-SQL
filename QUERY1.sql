Start Transaction;
update student set age = age+1 where id = 1;
update student set age = age-1 where id = 2; 
rollback;
select * from student; 