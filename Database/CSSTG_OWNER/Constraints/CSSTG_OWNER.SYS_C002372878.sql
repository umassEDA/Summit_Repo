ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD MODIFY 
  CL_RECIP_NAME NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD MODIFY 
  CL_RECIP_NAME NOT NULL
  ENABLE VALIDATE
/
