ALTER TABLE CSSTG_OWNER.PS_NAME_PREFIX_TBL MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_NAME_PREFIX_TBL MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
