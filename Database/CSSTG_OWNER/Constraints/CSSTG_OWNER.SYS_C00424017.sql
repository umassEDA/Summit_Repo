ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
