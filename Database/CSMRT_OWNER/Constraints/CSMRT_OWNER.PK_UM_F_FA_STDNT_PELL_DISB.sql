ALTER TABLE CSMRT_OWNER.UM_F_FA_STDNT_PELL_DISB
  DROP CONSTRAINT PK_UM_F_FA_STDNT_PELL_DISB
/

ALTER TABLE CSMRT_OWNER.UM_F_FA_STDNT_PELL_DISB ADD (
  CONSTRAINT PK_UM_F_FA_STDNT_PELL_DISB
  PRIMARY KEY
  (INSTITUTION_CD, AID_YEAR, PERSON_ID, PELL_ORIG_ID, PELL_DISB_SEQ_NBR, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
