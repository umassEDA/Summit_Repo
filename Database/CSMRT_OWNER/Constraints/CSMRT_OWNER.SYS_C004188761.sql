ALTER TABLE CSMRT_OWNER.PS_F_EXT_TESTSCORE MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSMRT_OWNER.PS_F_EXT_TESTSCORE MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/