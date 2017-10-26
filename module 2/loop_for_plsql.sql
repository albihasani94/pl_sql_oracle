-- CREATE TABLE copy_emp2 as select * from employees;
SET SERVEROUTPUT ON;

DECLARE
    v_emp_id      copy_emp2.employee_id%TYPE := 0;
    v_emp_count   NUMBER NOT NULL := 0;
    v_bonus       NUMBER(8,2) := 0;
    v_salary      copy_emp2.salary%TYPE;
    v_hire_date   copy_emp2.hire_date%TYPE;
BEGIN
    SELECT
        COUNT(*)
    INTO
        v_emp_count
    FROM
        copy_emp2;

    FOR i IN 1..v_emp_count LOOP
        SELECT
            MIN(employee_id)
        INTO
            v_emp_id
        FROM
            copy_emp2
        WHERE
            employee_id > v_emp_id;

        SELECT
            salary,
            hire_date
        INTO
            v_salary,v_hire_date
        FROM
            copy_emp2
        WHERE
            employee_id = v_emp_id;

        v_bonus :=
            CASE
                WHEN round( (months_between(SYSDATE,v_hire_date) / 12),0) = 10 THEN v_salary * 0.5
                WHEN round( (months_between(SYSDATE,v_hire_date) / 12),0) > 5 AND ( ( months_between(SYSDATE,v_hire_date) / 12 ),0 ) < 10 THEN v_salary * 0.25
                ELSE v_salary * 0.1
            END;

        dbms_output.put_line('Employee id: '
        || v_emp_id
        || ' gets a bonus amount: '
        || v_bonus);
    END LOOP;

END;
/