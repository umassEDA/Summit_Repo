ALTER TABLE CSMRT_OWNER.PS_D_PROG_STAT
  DROP CONSTRAINT PK_PS_D_PROG_STAT
/

ALTER TABLE CSMRT_OWNER.PS_D_PROG_STAT ADD (
  CONSTRAINT PK_PS_D_PROG_STAT
  PRIMARY KEY
  (PROG_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/