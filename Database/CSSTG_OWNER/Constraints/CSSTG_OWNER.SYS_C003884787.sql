ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  NSLDS_LOAN_YEAR NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  NSLDS_LOAN_YEAR NOT NULL
  ENABLE VALIDATE
/
