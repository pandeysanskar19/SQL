-- Write your MySQL query statement below
--Method 1:
select (
    select Distinct salary 
    from employee
    order by salary Desc
    limit 1 offset 1
) as SecondHighestSalary;

---Method 2:
select max(salary) as SecondHighestSalary
from Employee
where salary <(select max(salary)
from Employee);

