ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_ACAD_ST_OVRD NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  LN_ACAD_ST_OVRD NOT NULL
  ENABLE VALIDATE
/
