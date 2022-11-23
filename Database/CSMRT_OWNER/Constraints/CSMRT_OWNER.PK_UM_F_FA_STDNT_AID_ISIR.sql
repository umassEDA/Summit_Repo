ALTER TABLE CSMRT_OWNER.UM_F_FA_STDNT_AID_ISIR
  DROP CONSTRAINT PK_UM_F_FA_STDNT_AID_ISIR
/

ALTER TABLE CSMRT_OWNER.UM_F_FA_STDNT_AID_ISIR ADD (
  CONSTRAINT PK_UM_F_FA_STDNT_AID_ISIR
  PRIMARY KEY
  (INSTITUTION_CD, PERSON_ID, AID_YEAR, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
