ALTER TABLE CSMRT_OWNER.UM_R_FA_PERSON_RSDNCY
  DROP CONSTRAINT PK_UM_R_FA_PERSON_RSDNCY
/

ALTER TABLE CSMRT_OWNER.UM_R_FA_PERSON_RSDNCY ADD (
  CONSTRAINT PK_UM_R_FA_PERSON_RSDNCY
  PRIMARY KEY
  (INSTITUTION_CD, PERSON_ID, AID_YEAR, TERM_CD, ACAD_CAR_CD, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
