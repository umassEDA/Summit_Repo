ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
