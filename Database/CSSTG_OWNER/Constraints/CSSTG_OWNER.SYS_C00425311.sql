ALTER TABLE CSSTG_OWNER.PS_ACCT_TYP_TBL_SF MODIFY 
  UNAPP_PMT_CREDHIST NULL
/

ALTER TABLE CSSTG_OWNER.PS_ACCT_TYP_TBL_SF MODIFY 
  UNAPP_PMT_CREDHIST NOT NULL
  ENABLE VALIDATE
/