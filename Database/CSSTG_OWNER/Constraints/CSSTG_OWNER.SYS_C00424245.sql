ALTER TABLE CSSTG_OWNER.PS_S_ALTACCT_TBL_OLD MODIFY 
  SYSTEM_MAINT_ACCT NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_ALTACCT_TBL_OLD MODIFY 
  SYSTEM_MAINT_ACCT NOT NULL
  ENABLE VALIDATE
/
