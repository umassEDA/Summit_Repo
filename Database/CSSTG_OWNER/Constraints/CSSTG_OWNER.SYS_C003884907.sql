ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  SFA_DL_CRD_DEC_ORG NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIGNATN MODIFY 
  SFA_DL_CRD_DEC_ORG NOT NULL
  ENABLE VALIDATE
/
