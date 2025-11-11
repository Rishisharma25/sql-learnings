/* Question 1:
Write a query to list employee names with their department names.*/

select * from employees;
select * from departments;

-- IT IS FOR RENAME OF ONE COLUMN
alter table employees
rename column id to  dept_id;


select e.id,
	e.name,
    d.dept_name
from employees as e 
inner join departments as d
on e.id = d.dept_id;


