ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  DL_PNOTE_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  DL_PNOTE_ID NOT NULL
  ENABLE VALIDATE
/