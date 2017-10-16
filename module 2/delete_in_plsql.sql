SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    employee_id = 214;

DECLARE
    v_empid   employees.employee%TYPE := 214;
BEGIN
    DELETE FROM employees WHERE
        employee_id = v_empid;

END;
/

SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    employee_id = 214;