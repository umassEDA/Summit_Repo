ALTER TABLE CSMRT_OWNER.UM_D_PERSON_PHONE
  DROP CONSTRAINT PK_UM_D_PERSON_PHONE
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_PHONE ADD (
  CONSTRAINT PK_UM_D_PERSON_PHONE
  PRIMARY KEY
  (PERSON_ID, PHONE_TYPE, SRC_SYS_ID)
  RELY
  DISABLE NOVALIDATE)
/
