ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  CITIZENSHIP_STATUS_SD NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  CITIZENSHIP_STATUS_SD NOT NULL
  ENABLE VALIDATE
/
