ALTER TABLE CSSTG_OWNER.PS_ACCT_TYP_TBL_SF MODIFY 
  SF_ACCOUNT_CLASS NULL
/

ALTER TABLE CSSTG_OWNER.PS_ACCT_TYP_TBL_SF MODIFY 
  SF_ACCOUNT_CLASS NOT NULL
  ENABLE VALIDATE
/