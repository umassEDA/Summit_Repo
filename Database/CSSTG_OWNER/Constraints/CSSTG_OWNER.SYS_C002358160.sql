ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_MSG_OLD MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_MSG_OLD MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/
