ALTER TABLE CSMRT_OWNER.PS_D_DEG
  DROP CONSTRAINT PK_PS_D_DEG
/

ALTER TABLE CSMRT_OWNER.PS_D_DEG ADD (
  CONSTRAINT PK_PS_D_DEG
  PRIMARY KEY
  (DEG_SID)
  RELY
  DISABLE NOVALIDATE)
/