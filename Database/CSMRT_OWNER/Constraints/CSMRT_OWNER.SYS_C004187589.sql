ALTER TABLE CSMRT_OWNER.UM_D_PERSON_ETHNICITY MODIFY 
  ETHNIC_PCT_NUMRATR NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_PERSON_ETHNICITY MODIFY 
  ETHNIC_PCT_NUMRATR NOT NULL
  ENABLE VALIDATE
/