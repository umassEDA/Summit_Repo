ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN MODIFY 
  SFA_CR_LNDR_ST_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN MODIFY 
  SFA_CR_LNDR_ST_CD NOT NULL
  ENABLE VALIDATE
/