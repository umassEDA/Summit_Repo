ALTER TABLE CSMRT_OWNER.UM_F_EXT_TESTSCORE MODIFY 
  TST_DATA_SRC_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_EXT_TESTSCORE MODIFY 
  TST_DATA_SRC_SID NOT NULL
  ENABLE VALIDATE
/
