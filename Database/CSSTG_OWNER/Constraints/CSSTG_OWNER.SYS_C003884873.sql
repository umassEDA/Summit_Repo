ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_BORR_DOB_OVRD NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_BORR_DOB_OVRD NOT NULL
  ENABLE VALIDATE
/
