ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_SF_BILLING MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
