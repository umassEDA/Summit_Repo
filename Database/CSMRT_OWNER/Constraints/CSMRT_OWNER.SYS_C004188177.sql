ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  COUNTRY_2CHAR NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN MODIFY 
  COUNTRY_2CHAR NOT NULL
  ENABLE VALIDATE
/