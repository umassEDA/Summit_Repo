ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD MODIFY 
  LN_ACTION_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD MODIFY 
  LN_ACTION_CD NOT NULL
  ENABLE VALIDATE
/