ALTER TABLE CSSTG_OWNER.PS_HEALTH_TEST MODIFY 
  TEST_RESULT NULL
/

ALTER TABLE CSSTG_OWNER.PS_HEALTH_TEST MODIFY 
  TEST_RESULT NOT NULL
  ENABLE VALIDATE
/