ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  CITIZENSHIP_STATUS_LD NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  CITIZENSHIP_STATUS_LD NOT NULL
  ENABLE VALIDATE
/
