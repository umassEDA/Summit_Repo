ALTER TABLE CSSTG_OWNER.PS_EMAIL_ADDRESSES MODIFY 
  BATCH_SID NULL
/

ALTER TABLE CSSTG_OWNER.PS_EMAIL_ADDRESSES MODIFY 
  BATCH_SID NOT NULL
  ENABLE VALIDATE
/