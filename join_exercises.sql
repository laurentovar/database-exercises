use employees;



SELECT * from dept_manager;

-- Question 2 each department along with the name of the current manager for that department
Select departments.dept_name AS Department ,
       CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
from employees
join dept_manager
    on employees.emp_no = dept_manager.emp_no
join departments
    on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date = '9999-01-01';

-- select all the employees
SELECT employees.first_name, employees.employees.last_name FROM employees;


SELECT salary FROM salaries;


Select salaries.salary AS Salary ,
       CONCAT(employees.first_name, ' ', employees.last_name) AS Name,
       salaries.salary
from employees
         join salaries
              on employees.emp_no = salaries.emp_no;


-- Question 3 Find the name of all departments currently managed by women.
Select departments.dept_name AS Department ,
       CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
from employees
         join dept_manager
              on employees.emp_no = dept_manager.emp_no
         join departments
              on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date = '9999-01-01'
AND  employees.gender = 'f';


-- Question 4: Find the current titles of employees currently working in the Customer Service department.
    #customer service dept_no is d009
Select dept_no from departments where dept_name = 'Customer Service';

Select Count(*) from dept_emp
where dept_no = 'd009'
and to_date = '9999-01-01';

    -- final
Select titles.title as Title, COUNT(*) As Count
from titles
    join employees
        on titles.emp_no = employees.emp_no
    join dept_emp
        on employees.emp_no = dept_emp.emp_no
    where dept_emp.dept_no = 'd009'
    and dept_emp.to_date = '9999-01-01'
    group by titles.title;


-- Question 5: Find the current salary of all current managers.
Select departments.dept_name AS Department ,
       CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager,
       salaries.salary
from employees
         join dept_manager
              on employees.emp_no = dept_manager.emp_no
         join departments
              on dept_manager.dept_no = departments.dept_no
        join salaries
            on employees.emp_no = salaries.emp_no
where dept_manager.to_date = '9999-01-01'
and salaries.to_date = '9999-01-01';