ALTER TABLE CSSTG_OWNER.PS_IMMUN_CRITERIA MODIFY 
  TEST_STATUS NULL
/

ALTER TABLE CSSTG_OWNER.PS_IMMUN_CRITERIA MODIFY 
  TEST_STATUS NOT NULL
  ENABLE VALIDATE
/