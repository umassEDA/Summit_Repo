ALTER TABLE CSSTG_OWNER.PS_PMT_CHRG_TBL MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_PMT_CHRG_TBL MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
