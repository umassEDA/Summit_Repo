ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  HRS_SUBMITTED_BY NULL
/

ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  HRS_SUBMITTED_BY NOT NULL
  ENABLE VALIDATE
/
