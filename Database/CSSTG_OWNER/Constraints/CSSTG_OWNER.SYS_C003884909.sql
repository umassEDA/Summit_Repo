ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  SFA_DL_APPEAL_STAT NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  SFA_DL_APPEAL_STAT NOT NULL
  ENABLE VALIDATE
/
