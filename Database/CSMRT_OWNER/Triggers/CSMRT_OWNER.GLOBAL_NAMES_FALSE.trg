CREATE OR REPLACE TRIGGER GLOBAL_NAMES_FALSE
AFTER LOGON
ON CSMRT_OWNER.SCHEMA
BEGIN
    execute immediate 'alter session set GLOBAL_NAMES = FALSE';
END ;
/