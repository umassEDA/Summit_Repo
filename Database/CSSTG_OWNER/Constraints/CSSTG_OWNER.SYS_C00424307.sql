ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  TERMEE_PR_STOPDAYS NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  TERMEE_PR_STOPDAYS NOT NULL
  ENABLE VALIDATE
/