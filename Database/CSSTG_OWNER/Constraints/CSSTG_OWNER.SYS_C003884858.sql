ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  CL_ACT_INT_RATE NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  CL_ACT_INT_RATE NOT NULL
  ENABLE VALIDATE
/
