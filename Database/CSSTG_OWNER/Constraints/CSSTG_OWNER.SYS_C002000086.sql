ALTER TABLE CSSTG_OWNER.PS_LN_TYPE_TBL MODIFY 
  LN_MIN_LOAN_AMT NULL
/

ALTER TABLE CSSTG_OWNER.PS_LN_TYPE_TBL MODIFY 
  LN_MIN_LOAN_AMT NOT NULL
  ENABLE VALIDATE
/
