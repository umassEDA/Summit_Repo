ALTER TABLE CSSTG_OWNER.PS_LN_TYPE_TBL MODIFY 
  LOAN_CREDIT_RQRD NULL
/

ALTER TABLE CSSTG_OWNER.PS_LN_TYPE_TBL MODIFY 
  LOAN_CREDIT_RQRD NOT NULL
  ENABLE VALIDATE
/