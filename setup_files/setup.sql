REM  Script:  setup.sql
REM  Created: By Dimpi Sarmah on 02-Aug-17 
REM  This script creates users ora1, ora2, ora3, ora4
REM                            teach_a
--Please replace the password for 'SYS'if it is different.
define sid = 'xe';    -- Enter the PDB name. If PDB was not created, enter value of database name (orcl).
define password = 'rtmo';



@@create_users.sql
@@create_tables.sql  -- calls hr_main1.sql
commit;
EXIT
