ALTER TABLE CSMRT_OWNER.UM_S_SR_DATA_OLD MODIFY 
  INSTITUTION_CD NULL
/

ALTER TABLE CSMRT_OWNER.UM_S_SR_DATA_OLD MODIFY 
  INSTITUTION_CD NOT NULL
  ENABLE VALIDATE
/
