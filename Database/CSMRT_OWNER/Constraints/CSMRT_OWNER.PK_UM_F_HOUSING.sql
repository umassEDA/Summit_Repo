ALTER TABLE CSMRT_OWNER.UM_F_HOUSING
  DROP CONSTRAINT PK_UM_F_HOUSING
/

ALTER TABLE CSMRT_OWNER.UM_F_HOUSING ADD (
  CONSTRAINT PK_UM_F_HOUSING
  PRIMARY KEY
  (INSTITUTION_CD, PERSON_ID, ACAD_YEAR_LD, HOUSING_TERM_CD, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/