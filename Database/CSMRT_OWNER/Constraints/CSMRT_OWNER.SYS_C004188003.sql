ALTER TABLE CSMRT_OWNER.UM_S_RA_DATA_NEW MODIFY 
  INSTITUTION_CD NULL
/

ALTER TABLE CSMRT_OWNER.UM_S_RA_DATA_NEW MODIFY 
  INSTITUTION_CD NOT NULL
  ENABLE VALIDATE
/