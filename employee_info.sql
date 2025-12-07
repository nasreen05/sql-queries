create database employee_info;

use employee_info;

create table employee(id char(4) primary key, emply_number int unique, 
emply_name varchar(20) not null, emply_Mobile_number bigint(10), salary float check(salary > 0), 
date_of_birth date, work_timeing time, country varchar(10) default 'Indian'); 

drop table employee;

select * from employee;

insert into employee(	id	,emply_number,	emply_name	,emply_Mobile_number	,salary	,date_of_birth	,work_timeing) 
values ('Emp1', 101, 'Ravi', 9988776655, 12000.00, '2002-02-12', '09:00:00');

insert into employee(	id	,emply_number,	emply_name	,emply_Mobile_number	,salary	,date_of_birth	,work_timeing) 
values ('Emp2', 102, 'Ravi kumar', 99887766581, 19000.00, '2000-02-19', '09:00:00');

insert into employee(	id	,emply_number,	emply_name	,emply_Mobile_number	,salary	,date_of_birth	,work_timeing) 
values ('Emp3', 103, 'Ravi kumar R V', 9988776658, 190000.00, '2000-02-19', '09:00:00');

insert into employee(	id	,emply_number,	emply_name	,emply_Mobile_number	,salary	,date_of_birth	,work_timeing) 
values ('Emp4', 104, 'Manju', 9988776658, 190000.00, '2000-02-19', '09:00:00');
insert into employee(	id	,emply_number,	emply_name		,salary	,date_of_birth	,work_timeing) 
values ('Emp5', 105, 'Manjula', 190000.00, '2000-02-19', '09:00:00');

insert into employee(	id	,emply_number,	emply_name		,salary	,date_of_birth	,work_timeing) 
values ('Emp6', 106, 'Nandu', 100000.00, '2000-01-31', '09:30:00');

select * from employee where id ='Emp4';

select * from employee where id in ('Emp4','Emp3');

select * from employee where id not in ('Emp4','Emp3');

select * from employee where emply_Mobile_number is null;

select * from employee where emply_Mobile_number is not null;

select * from employee where emply_Mobile_number is null;

select * from employee where emply_name like 'R%';

select * from employee where emply_name like '%u';

select * from employee where emply_name like '_a%';



select emply_name , salary from employee;

select * from employee where salary between 10000 and 20000;

select emply_name as employee_name  , salary employee_salary from employee;

select * from employee order by id desc;

select * from employee order by emply_name ;
