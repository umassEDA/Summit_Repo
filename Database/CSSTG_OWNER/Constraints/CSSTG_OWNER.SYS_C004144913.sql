ALTER TABLE CSSTG_OWNER.PS_HEALTH_TEST MODIFY 
  BATCH_SID NULL
/

ALTER TABLE CSSTG_OWNER.PS_HEALTH_TEST MODIFY 
  BATCH_SID NOT NULL
  ENABLE VALIDATE
/
