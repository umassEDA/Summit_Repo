ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  CITIZENSHIP_STATUS_SD_USA NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  CITIZENSHIP_STATUS_SD_USA NOT NULL
  ENABLE VALIDATE
/