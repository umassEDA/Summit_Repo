ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LOAN_AMT_COSIGN NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LOAN_AMT_COSIGN NOT NULL
  ENABLE VALIDATE
/
