ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_DTL MODIFY 
  LOAN_INTEREST_ATTR NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_DTL MODIFY 
  LOAN_INTEREST_ATTR NOT NULL
  ENABLE VALIDATE
/
