ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN MODIFY 
  SFA_CR_DOCUMENT_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN MODIFY 
  SFA_CR_DOCUMENT_ID NOT NULL
  ENABLE VALIDATE
/
