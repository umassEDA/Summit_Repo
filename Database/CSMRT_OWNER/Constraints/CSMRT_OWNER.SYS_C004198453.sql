ALTER TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC MODIFY 
  PERSON_ID NULL
/

ALTER TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC MODIFY 
  PERSON_ID NOT NULL
  ENABLE VALIDATE
/