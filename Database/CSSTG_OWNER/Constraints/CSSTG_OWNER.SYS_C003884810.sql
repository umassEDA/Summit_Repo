ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_REFUND_INDC NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_REFUND_INDC NOT NULL
  ENABLE VALIDATE
/
