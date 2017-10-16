SELECT
    job_id,
    salary
FROM
    employees
WHERE
    employee_id = 125;

DECLARE
    sal_increase   employees.salary%TYPE := 800;
BEGIN
    UPDATE employees
        SET
            salary = salary + sal_increase
    WHERE
        job_id = 'ST_CLERK';

END;
/

SELECT
    job_id,
    salary
FROM
    employees
WHERE
    employee_id = 125;