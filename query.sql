

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

























