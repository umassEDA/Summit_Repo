ALTER TABLE CSSTG_OWNER.PS_S_ALTACCT_TBL_OLD MODIFY 
  ACCOUNTING_OWNER NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_ALTACCT_TBL_OLD MODIFY 
  ACCOUNTING_OWNER NOT NULL
  ENABLE VALIDATE
/