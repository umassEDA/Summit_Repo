ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  DESIRED_REG_TEMP NULL
/

ALTER TABLE CSSTG_OWNER.PS_HRS_APP_PROFILE_OLD MODIFY 
  DESIRED_REG_TEMP NOT NULL
  ENABLE VALIDATE
/