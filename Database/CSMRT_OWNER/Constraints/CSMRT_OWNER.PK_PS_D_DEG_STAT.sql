ALTER TABLE CSMRT_OWNER.PS_D_DEG_STAT
  DROP CONSTRAINT PK_PS_D_DEG_STAT
/

ALTER TABLE CSMRT_OWNER.PS_D_DEG_STAT ADD (
  CONSTRAINT PK_PS_D_DEG_STAT
  PRIMARY KEY
  (DEG_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/