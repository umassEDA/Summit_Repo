ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  HRS_PROFILE_SEQ NULL
/

ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  HRS_PROFILE_SEQ NOT NULL
  ENABLE VALIDATE
/
