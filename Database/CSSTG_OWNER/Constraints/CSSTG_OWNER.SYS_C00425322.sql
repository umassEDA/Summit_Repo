ALTER TABLE CSSTG_OWNER.PS_ADM_ACTION_TBL MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_ADM_ACTION_TBL MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/