ALTER TABLE CSSTG_OWNER.PS_T_SF_ACCTG_LN MODIFY 
  ACCOUNTING_PERIOD NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_SF_ACCTG_LN MODIFY 
  ACCOUNTING_PERIOD NOT NULL
  ENABLE VALIDATE
/