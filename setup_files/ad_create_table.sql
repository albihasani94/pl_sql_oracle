CREATE TABLE AD_ACADEMIC_SESSION
  (
    SESSION_ID   NUMBER  NOT NULL ,
    SESSION_NAME VARCHAR2(50)
  ) ;

CREATE TABLE AD_COURSE_DETAILS
  (
    COURSE_ID           NUMBER  NOT NULL ,
    COURSE_NAME         VARCHAR2 (50) ,
    SESSION_ID          NUMBER ,
    DEPARTMENT_ID       NUMBER 
   
  ) ;

CREATE TABLE AD_DEPARTMENTS
  (
    DEPARTMENT_ID   NUMBER  NOT NULL ,
    DEPARTMENT_NAME VARCHAR2(50) ,
    HOD             VARCHAR2(50)
  ) ;

CREATE TABLE AD_EXAM_DETAILS
  (
    EXAM_ID      NUMBER  NOT NULL ,
    EXAM_TYPE    VARCHAR2(50) NOT NULL ,
    START_DATE   DATE ,
    NAME         VARCHAR2(50) 
    
  ) ;

CREATE TABLE AD_EXAM_RESULTS
  (
    STUDENT_ID        NUMBER ,
    EXAM_ID           NUMBER ,
    COURSE_ID         NUMBER ,
    MARKS             NUMBER 
    
  ) ;

CREATE TABLE AD_EXAM_TYPE
  (
    EXAM_TYPE VARCHAR2(50)   NOT NULL ,
    EXAM_NAME VARCHAR2(50) ,
    EXAM_DESC VARCHAR2(50)
  ) ;

CREATE TABLE AD_FACULTY_COURSE_DETAILS
  (
    FACULTY_ID         NUMBER ,
    COURSE_ID          NUMBER 
    
  ) ;
  
REM ********************************************************************
REM Create the JOBS table to hold the different names of job roles of the faculties.
REM AD_FACULTY_DETAILS has a foreign key to this table.

Prompt ******  Creating AD_JOBS table ....

CREATE TABLE AD_JOBS
    ( JOB_ID         VARCHAR2(10)
    , JOB_TITLE      VARCHAR2(35)
	CONSTRAINT     ad_job_title_nn  NOT NULL
    , MIN_SALARY     NUMBER(6)
    , MAX_SALARY     NUMBER(6)
    ) ;

Prompt ******  Creating AD_FACULTY_DETAILS table ....  

CREATE TABLE AD_FACULTY_DETAILS
    ( FACULTY_ID     NUMBER(6)
    , FIRST_NAME     VARCHAR2(20)
    , LAST_NAME      VARCHAR2(25)
	 CONSTRAINT     fac_last_name_nn  NOT NULL
    , EMAIL          VARCHAR2(25)
	CONSTRAINT     fac_email_nn  NOT NULL
    , PHONE_NUMBER   VARCHAR2(20)
    , HIRE_DATE      DATE
	CONSTRAINT     fac_hire_date_nn  NOT NULL
    , JOB_ID         VARCHAR2(10)
	CONSTRAINT     fac_job_nn  NOT NULL
    , SALARY         NUMBER(8,2)             
    ,CONSTRAINT     fac_salary_min
                     CHECK (SALARY > 0) 
    ,CONSTRAINT     fac_email_uk
                     UNIQUE (EMAIL)
    ) ;

CREATE TABLE AD_FACULTY_LOGIN_DETAILS
  (
    FACULTY_ID         NUMBER ,
    LOGIN_DATE         DATE ,
    LOGIN_TIME         DATE ,
    DETAILS            VARCHAR2(50) 
    
  ) ;

CREATE TABLE AD_PARENT_INFORMATION
  (
    PARENT_ID   NUMBER NOT NULL ,
    FATHER_NAME VARCHAR2(50) ,
    MOTHER_NAME VARCHAR2(50)
  ) ;

CREATE TABLE AD_STUDENT_ATTENDANCE
  (
    STUDENT_ID            NUMBER ,
    NO_OF_WORKING_DAYS    NUMBER ,
    NO_OF_DAYS_OFF        NUMBER ,
    ELIGIBILITY_FOR_EXAMS CHAR 
    
  ) ;

CREATE TABLE AD_STUDENT_COURSE_DETAILS
  (
    STUDENT_ID         NUMBER ,
    COURSE_ID          NUMBER 
      ) ;

CREATE TABLE AD_STUDENT_DETAILS
  (
    STUDENT_ID            NUMBER NOT NULL ,
    FIRST_NAME            VARCHAR2(50) ,
    PARENT_ID             NUMBER ,
    STUDENT_REG_YEAR      DATE
  ) ;
