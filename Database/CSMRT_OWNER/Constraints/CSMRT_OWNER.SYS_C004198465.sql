ALTER TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC MODIFY 
  PERSON_EMAIL_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC MODIFY 
  PERSON_EMAIL_SID NOT NULL
  ENABLE VALIDATE
/
