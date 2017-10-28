SET SERVEROUTPUT ON;

DECLARE
    TYPE email_table_type IS VARRAY(5) OF VARCHAR2(35);
    emails   email_table_type := email_table_type('albi.hasani@outlook.com','albin.hasani@ikubinfo.al','albihasani94@gmail.com');
BEGIN
    FOR i IN emails.first..emails.last LOOP
        dbms_output.put_line(emails(i) );
    END LOOP;
END;
/