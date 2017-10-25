SET SERVEROUTPUT ON;

DECLARE
    v_bonus            NUMBER(8,2) NOT NULL := 0;
    v_service_period   NUMBER NOT NULL := 3;
    v_salary           NUMBER(8,2) := 11000;
BEGIN
    IF
        v_service_period = 10
    THEN
        v_bonus := v_salary * 0.5;
        dbms_output.put_line('Bonus amount = '
        || v_bonus);
    ELSE
        IF
            v_service_period < 10 AND v_service_period >= 5
        THEN
            v_bonus := v_salary * 0.25;
            dbms_output.put_line('Bonus amount = '
            || v_bonus);
        ELSE
            v_bonus := v_salary * 0.1;
            dbms_output.put_line('Bonus amount = '
            || v_bonus);
        END IF;
    END IF;
END;
/