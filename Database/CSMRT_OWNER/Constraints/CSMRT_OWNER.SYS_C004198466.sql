ALTER TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC MODIFY 
  PERSON_ETHNICITY_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC MODIFY 
  PERSON_ETHNICITY_SID NOT NULL
  ENABLE VALIDATE
/
