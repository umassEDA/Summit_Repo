ALTER TABLE CSSTG_OWNER.PS_SRVC_IND_DATA MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_SRVC_IND_DATA MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
