ALTER TABLE CSMRT_OWNER.PS_D_GPA_TYPE
  DROP CONSTRAINT PK_PS_D_GPA_TYPE
/

ALTER TABLE CSMRT_OWNER.PS_D_GPA_TYPE ADD (
  CONSTRAINT PK_PS_D_GPA_TYPE
  PRIMARY KEY
  (GPA_TYPE_SID)
  RELY
  DISABLE NOVALIDATE)
/
