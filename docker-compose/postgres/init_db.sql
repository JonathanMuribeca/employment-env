-- ************************************** departments
DROP TABLE IF EXISTS departments;
CREATE TABLE departments
(
 DEPARTMENT_ID   numeric NOT NULL,
 DEPARTMENT_NAME varchar(30) NOT NULL,
 MANAGER_ID      numeric NOT NULL,
 CONSTRAINT PK_departments PRIMARY KEY ( DEPARTMENT_ID )
);

-- ************************************** jobs
DROP TABLE IF EXISTS jobs;
CREATE TABLE jobs
(
 JOB_ID     varchar(10) NOT NULL,
 JOB_TITLE  varchar(35) NOT NULL,
 MIN_SALARY numeric NOT NULL,
 MAX_SALARY numeric NOT NULL,
 CONSTRAINT PK_jobs PRIMARY KEY ( JOB_ID )
);

-- ************************************** job_history
DROP TABLE IF EXISTS job_history;
CREATE TABLE job_history
(
 JOB_HISTORY_ID numeric NOT NULL,
 START_DATE     date NOT NULL,
 END_DATE       date NOT NULL,
 DEPARTMENT_ID  numeric NOT NULL,
 JOB_ID         varchar(10) NOT NULL,
 CONSTRAINT PK_job_history PRIMARY KEY ( JOB_HISTORY_ID ),
 CONSTRAINT FK_23 FOREIGN KEY ( DEPARTMENT_ID ) REFERENCES departments ( DEPARTMENT_ID ),
 CONSTRAINT FK_26 FOREIGN KEY ( JOB_ID ) REFERENCES jobs ( JOB_ID )
);

CREATE INDEX fkIdx_24 ON job_history
(
 DEPARTMENT_ID
);

CREATE INDEX fkIdx_27 ON job_history
(
 JOB_ID
);

-- ************************************** employees

DROP TABLE IF EXISTS employees;
CREATE TABLE employees
(
 FIRST_NAME     varchar(20) NOT NULL,
 EMPLOYEE_ID    numeric NOT NULL,
 LAST_NAME      varchar(25) NOT NULL,
 EMAIL          varchar(25) NOT NULL,
 PHONE_NUMBER   varchar(20) NOT NULL,
 HIRE_DATE      date NOT NULL,
 SALARY         numeric NOT NULL,
 COMMISSION_PCT numeric NOT NULL,
 MANAGER_ID     numeric NOT NULL,
 DEPARTMENT_ID  numeric NOT NULL,
 JOB_HISTORY_ID numeric NOT NULL,
 JOB_ID         varchar(10) NOT NULL,
 CONSTRAINT PK_employees PRIMARY KEY ( EMPLOYEE_ID ),
 CONSTRAINT FK_41 FOREIGN KEY ( DEPARTMENT_ID ) REFERENCES departments ( DEPARTMENT_ID ),
 CONSTRAINT FK_44 FOREIGN KEY ( JOB_HISTORY_ID ) REFERENCES job_history ( JOB_HISTORY_ID ),
 CONSTRAINT FK_47 FOREIGN KEY ( JOB_ID ) REFERENCES jobs ( JOB_ID )
);

CREATE INDEX fkIdx_42 ON employees
(
 DEPARTMENT_ID
);

CREATE INDEX fkIdx_45 ON employees
(
 JOB_HISTORY_ID
);

CREATE INDEX fkIdx_48 ON employees
(
 JOB_ID
);
