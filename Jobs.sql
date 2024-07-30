/* String Patterns */

/* Example 1: You need to retrieve the first names F_NAME and last names L_NAME of all employees who live in Elgin, IL. */

SELECT F_NAME, L_NAME, ADDRESS
FROM Job_Table.Employees
WHERE ADDRESS LIKE '%Elgin,IL%';

/* Example 2: You want to identify the employees  records in department 5 where salary is between 60000 and 70000. */

SELECT *
FROM Job_Table.Employees
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;

/* Sorting */

/* Example 1: You have to retrieve a list of employees ordered by department ID. */

SELECT F_NAME, L_NAME, DEP_ID 
FROM Job_Table.Employees
ORDER BY DEP_ID;

/* Example 2: Get the output of the same query in descending order of department ID, and within each department, the records should be ordered in descending alphabetical order by last name */

SELECT F_NAME, L_NAME, DEP_ID 
FROM Job_Table.Employees
ORDER BY DEP_ID DESC, L_NAME DESC;

/* Grouping */

/* Example 1: We wish to retrieve the number of employees in the department. */

SELECT DEP_ID, COUNT(*) AS Count
FROM Job_Table.Employees
GROUP BY DEP_ID;

/* Example 2: for each department, retrieve the number of employees in the department and the average employee salary in the department. */

SELECT DEP_ID, COUNT(*) AS Count, AVG(SALARY) AS Average
FROM Job_Table.Employees
GROUP BY DEP_ID;

/* Example 3: combine the usage of GROUP BY and ORDER BY statements to sort the output of each group in accordance with a specific parameter. It is important to note that in such a case, ORDER BY clause must be used after the GROUP BY clause. For example, we can sort the result of the previous query by average salary. */

SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM Job_Table.Employees
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

/* Sub-queries and Nested Selects */

/* Example 1: retrieve all employee records whose salary is lower than the average salary. */

SELECT *
FROM Job_Table.Employees
WHERE SALARY < (SELECT AVG(SALARY) FROM Job_Table.Employees);

/* Example 2: consider executing a query that retrieves all employee records with EMP_ID, SALARY, and maximum salary as MAX_SALARY in every row. */

SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM Job_Table.Employees) AS MAX_SALARY 
FROM Job_Table.Employees;

/* Example 3: consider executing a query that retrieves all employee records with EMP_ID, SALARY, and maximum salary as MAX_SALARY in every row. */

SELECT F_NAME, L_NAME
FROM Job_Table.Employees
WHERE B_DATE = (SELECT MIN(B_DATE) FROM Job_Table.Employees);

/* Example 4: you want to know the average salary of the top 5 earners in the company. You will first have to extract a table of the top five salaries as a table. From that table, you can query the average value of the salary. */

SELECT AVG(SALARY) 
FROM (SELECT SALARY 
      FROM Job_Table.Employees 
      ORDER BY SALARY DESC 
      LIMIT 5) AS SALARY_TABLE;


/* Exercise 1: Write a query to find the average salary of the five least-earning employees. */

SELECT AVG(SALARY) 
FROM (SELECT SALARY 
      FROM Job_Table.Employees 
      ORDER BY SALARY 
      LIMIT 5) AS SALARY_TABLE;

/* Exercise 2: Write a query to find the records of employees older than the average age of all employees. */

SELECT * 
FROM Job_Table.Employees 
WHERE EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL EXTRACT(YEAR FROM CURRENT_DATE()) - EXTRACT(YEAR FROM B_DATE) YEAR)) > 
    (SELECT AVG(EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL EXTRACT(YEAR FROM CURRENT_DATE()) - EXTRACT(YEAR FROM B_DATE) YEAR))) 
    FROM Job_Table.Employees);

/* Exercise 3: From the Job_History table, display the list of Employee IDs, years of service, and average years of service for all entries. */

SELECT 
    EMPL_ID, 
    EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL DATE_DIFF(CURRENT_DATE(), START_DATE, DAY) DAY)) AS Start_Year,
    (SELECT AVG(EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE(), INTERVAL DATE_DIFF(CURRENT_DATE(), START_DATE, DAY) DAY))) 
     FROM `Job_Table.JobsHistory`) AS Avg_Start_Year
FROM 
    `Job_Table.JobsHistory`;

/* Working with Multiple Tables */

/* Example 1: Retrieve only the EMPLOYEES records corresponding to jobs in the JOBS table. */

SELECT * FROM Job_Table.Employees WHERE JOB_ID IN (SELECT JOB_IDENT FROM Job_Table.Jobs);

/* Example 2: Retrieve JOB information for employees earning over $70,000. */

SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT
FROM Job_Table.Jobs
WHERE JOB_IDENT IN (select JOB_ID from Job_Table.Employees where SALARY > 70000 );

/* Implicit Joins */

/* Example 1: Retrieve only the EMPLOYEES records corresponding to jobs in the JOBS table. */

SELECT *
FROM Job_Table.Employees E, Job_Table.Jobs J
WHERE E.JOB_ID = J.JOB_IDENT;

/* Example 2: Redo the previous query using shorter aliases for table names. */

SELECT *
FROM Job_Table.Employees E, Job_Table.Jobs J
WHERE E.JOB_ID = J.JOB_IDENT;

/* Example 3: Redo the previous query using shorter aliases for table names. */

SELECT EMP_ID,F_NAME,L_NAME, JOB_TITLE
FROM Job_Table.Employees E, Job_Table.Jobs J
WHERE E.JOB_ID = J.JOB_IDENT;

/* Example 4: Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause. */

SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
FROM Job_Table.Employees E, Job_Table.Jobs J
WHERE E.JOB_ID = J.JOB_IDENT;

/* Exercise 1: Retrieve only the list of employees whose JOB_TITLE is Jr. Designer. */

SELECT *
FROM Job_Table.Employees
WHERE JOB_ID IN (SELECT JOB_IDENT
                 FROM Job_Table.Jobs J
                 WHERE JOB_TITLE= 'Jr. Designer');

SELECT *
FROM Job_Table.Employees E, Job_Table.Jobs J
WHERE E.JOB_ID = J.JOB_IDENT AND J.JOB_TITLE= 'Jr. Designer';
