ALTER TABLE CSMRT_OWNER.PS_D_TERM
  DROP CONSTRAINT PK_PS_D_TERM
/

ALTER TABLE CSMRT_OWNER.PS_D_TERM ADD (
  CONSTRAINT PK_PS_D_TERM
  PRIMARY KEY
  (TERM_SID)
  RELY
  DISABLE NOVALIDATE)
/
