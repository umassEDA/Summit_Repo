ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_MSG_OLD MODIFY 
  LNORIG_MSG_SEQ NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_MSG_OLD MODIFY 
  LNORIG_MSG_SEQ NOT NULL
  ENABLE VALIDATE
/
