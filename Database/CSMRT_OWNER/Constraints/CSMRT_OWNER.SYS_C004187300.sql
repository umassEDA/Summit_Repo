ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  INSTITUTION_CD NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  INSTITUTION_CD NOT NULL
  ENABLE VALIDATE
/