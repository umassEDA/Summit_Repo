ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_TOTAL_CERT NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_TOTAL_CERT NOT NULL
  ENABLE VALIDATE
/