ALTER TABLE CSSTG_OWNER.PS_TRNSFR_COMP MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_TRNSFR_COMP MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/