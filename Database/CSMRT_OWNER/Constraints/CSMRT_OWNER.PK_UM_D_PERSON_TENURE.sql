ALTER TABLE CSMRT_OWNER.UM_D_PERSON_TENURE
  DROP CONSTRAINT PK_UM_D_PERSON_TENURE
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_TENURE ADD (
  CONSTRAINT PK_UM_D_PERSON_TENURE
  PRIMARY KEY
  (PERSON_SID)
  RELY
  DISABLE NOVALIDATE)
/
