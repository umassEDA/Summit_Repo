ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD MODIFY 
  CL_RECIP_ID_V3 NULL
/

ALTER TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD MODIFY 
  CL_RECIP_ID_V3 NOT NULL
  ENABLE VALIDATE
/
