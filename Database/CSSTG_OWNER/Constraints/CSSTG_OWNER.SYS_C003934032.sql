ALTER TABLE CSSTG_OWNER.PS_CLST_MAIN_TBL MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_CLST_MAIN_TBL MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
