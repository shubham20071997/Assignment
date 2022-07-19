
create database Assignment;
use Assignment;
create table employees (
employee_id int not null auto_increment,
employee_name varchar(50),
location varchar(50),
primary key (employee_id)
);

create table employees_attendance (
employee_id int not null,
swipe_in_time varchar(50) null,
swipe_out_time varchar(50)
);

insert into employees
values (default, 'Shubham', 'Noida'),
(default, 'Manvi', 'Noida'),
(default, 'Shwet', 'Noida'),
(default, 'Sagnik', 'Noida'),
(default, 'Raja', 'Gurgaon'),
(default, 'Amit', 'Gurgaon'),
(default, 'Abhay', 'Gurgaon'),
(default, 'Aman', 'Gurgaon');

insert into employees_attendance
values (1, '9:00', '6:00'),
(1, '9:10', '6:10'),
(2, '9:20', '6:20'),
(2, '9:30', '6:30'),
(1, '9:10', '6:10'),
(3, '9:15', '6:15'),
(2, '9:20', '6:20'),
(1, '9:18', '6:18'),
(3, '9:05', '6:05');

/* first problem 
how many employees are working from noida and how many are working from gurgaon office. */

select e.location, count(e.location) 
from employees e 
left join employees_attendance ea
on e.employee_id = ea.employee_id
group by e.location;

/* Second problem 
	location specific working from hom*/

select e.location, count(e.location) from
employees e 
left join employees_attendance ea
on e.employee_id = ea.employee_id
where swipe_in_time is null
group by e.location;

/* Third problem 
  work from home                        */

SELECT count(e.location)
FROM employees e
left join employees_attendance ea
on e.employee_id= ea.employee_id
where swipe_in_time is null;

























