-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

/* 
We define an employee's total earnings to be their monthly salary * months   worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  2 space-separated integers.
*/

/*
First solution

SET @max_earning = (SELECT MAX(salary * months) FROM EMPLOYEE);
SELECT MAX(salary * months), COUNT(*) FROM EMPLOYEE WHERE salary * months = @max_earning;

second 

SELECT (salary * months), COUNT(employee_id) FROM EMPLOYEE
GROUP BY (salary * months)
ORDER BY (salary * months) DESC
LIMIt 1;
*/

SELECT MAX(salary * months), COUNT(*) FROM EMPLOYEE WHERE salary * months = (SELECT MAX(salary * months) FROM EMPLOYEE);

