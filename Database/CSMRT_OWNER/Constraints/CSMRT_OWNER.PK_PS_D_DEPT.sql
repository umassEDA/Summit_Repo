ALTER TABLE CSMRT_OWNER.PS_D_DEPT
  DROP CONSTRAINT PK_PS_D_DEPT
/

ALTER TABLE CSMRT_OWNER.PS_D_DEPT ADD (
  CONSTRAINT PK_PS_D_DEPT
  PRIMARY KEY
  (DEPT_SID)
  RELY
  DISABLE NOVALIDATE)
/
