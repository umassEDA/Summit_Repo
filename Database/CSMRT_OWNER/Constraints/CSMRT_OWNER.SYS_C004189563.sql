ALTER TABLE CSMRT_OWNER.UM_D_PERSON_ADDR MODIFY 
  PERSON_ID NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_ADDR MODIFY 
  PERSON_ID NOT NULL
  ENABLE VALIDATE
/
