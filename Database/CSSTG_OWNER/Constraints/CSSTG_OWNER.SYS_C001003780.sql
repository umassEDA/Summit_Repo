ALTER TABLE CSSTG_OWNER.PS_TRNSFR_SUBJ MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_TRNSFR_SUBJ MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
