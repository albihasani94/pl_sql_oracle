SET SERVEROUTPUT ON;

DECLARE
    v_bonus            NUMBER(8,2) NOT NULL := 0;
    v_service_period   NUMBER NOT NULL := 3;
    v_salary           NUMBER(8,2) := 11000;
BEGIN
    v_bonus :=
        CASE
            WHEN v_service_period = 10 THEN v_salary * 0.5
            WHEN v_service_period < 10 AND v_service_period >= 5 THEN v_salary * 0.25
            ELSE v_salary * 0.1
        END;

    dbms_output.put_line('Bonus amount = '
    || v_bonus);
END;
/