REM  Script:  create_tables.sql
REM  Created: By Apoorva Srinivas on 15-June-17 
REM  This script creates tables for users ora1, ora21, ora22, ora23REM  Script:  create_tables.sql
REM  Created: By Dimpi sarmah on 15-June-17 
REM  This script creates tables for users ora1, ora2, ora3, ora4
--Please modify the path according to the location of hr_main1


set echo on
spool ora1.log
connect ora1/ora1
set echo off
@@hr_main1.sql
@@academic_setup.sql
spool off

spool ora2.log
connect ora2/ora2
set echo off
@@hr_main1.sql
@@academic_setup.sql
spool off

set echo on
spool ora3.log
connect ora3/ora3
set echo off
@@hr_main1.sql
@@academic_setup.sql
spool off

set echo on
spool ora4.log
connect ora4/ora4
set echo off
@@hr_main1.sql
@@academic_setup.sql
spool off
         



