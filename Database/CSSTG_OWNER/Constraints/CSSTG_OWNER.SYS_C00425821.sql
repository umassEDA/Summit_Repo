ALTER TABLE CSSTG_OWNER.PS_AGING_CAT_SF_OLD MODIFY 
  BATCH_SID NULL
/

ALTER TABLE CSSTG_OWNER.PS_AGING_CAT_SF_OLD MODIFY 
  BATCH_SID NOT NULL
  ENABLE VALIDATE
/
