ALTER TABLE CSSTG_OWNER.PS_ESTAB_TBL_OLD MODIFY 
  CHECK_DIGIT NULL
/

ALTER TABLE CSSTG_OWNER.PS_ESTAB_TBL_OLD MODIFY 
  CHECK_DIGIT NOT NULL
  ENABLE VALIDATE
/