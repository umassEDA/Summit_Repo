ALTER TABLE CSMRT_OWNER.UM_F_FA_IR_CDS_DATA
  DROP CONSTRAINT PK_UM_F_FA_IR_CDS_DATA
/

ALTER TABLE CSMRT_OWNER.UM_F_FA_IR_CDS_DATA ADD (
  CONSTRAINT PK_UM_F_FA_IR_CDS_DATA
  PRIMARY KEY
  (INSTITUTION_CD, ACAD_CAR_CD, TERM_CD, PERSON_ID)
  RELY
  ENABLE VALIDATE)
/
