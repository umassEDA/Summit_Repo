ALTER TABLE CSSTG_OWNER.PS_E_LOCATION_TBL MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_E_LOCATION_TBL MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/