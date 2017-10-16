VARIABLE emp_salary NUMBER
SET AUTOPRINT ON

DECLARE
    emp_no NUMBER(6) := &emp_no;
BEGIN
    SELECT salary
    INTO :emp_salary
    FROM employees
    WHERE employee_id = emp_no;
    
END;
/

PRINT emp_salary

SELECT employee_id, first_name, last_name
FROM employees
WHERE salary = :emp_salary;