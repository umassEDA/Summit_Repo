ALTER TABLE CSMRT_OWNER.UM_D_PRSPCT_PROG
  DROP CONSTRAINT PK_UM_D_PRSPCT_PROG
/

ALTER TABLE CSMRT_OWNER.UM_D_PRSPCT_PROG ADD (
  CONSTRAINT PK_UM_D_PRSPCT_PROG
  PRIMARY KEY
  (PRSPCT_PROG_SID)
  RELY
  DISABLE NOVALIDATE)
/