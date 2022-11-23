ALTER TABLE CSMRT_OWNER.UM_F_FA_AWARD_SUMM_BY_YEAR
  DROP CONSTRAINT PK_UM_F_FA_AWARD_SUMM_BY_YEAR
/

ALTER TABLE CSMRT_OWNER.UM_F_FA_AWARD_SUMM_BY_YEAR ADD (
  CONSTRAINT PK_UM_F_FA_AWARD_SUMM_BY_YEAR
  PRIMARY KEY
  (INSTITUTION_CD, PERSON_ID, AID_YEAR, ACAD_CAR_CD, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/