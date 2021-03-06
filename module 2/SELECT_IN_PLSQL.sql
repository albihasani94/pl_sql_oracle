SET SERVEROUTPUT ON

DECLARE
    v_emp_hiredate   employees.hire_date%TYPE;
    v_emp_salary     employees.salary%TYPE;
BEGIN
    SELECT
        hire_date,
        salary
    INTO
        v_emp_hiredate,v_emp_salary
    FROM
        employees
    WHERE
        employee_id = 100;

    dbms_output.put_line('HIRE DATE IS : ' || v_emp_hiredate);
    dbms_output.put_line('SALARY IS :' || v_emp_salary);
END;