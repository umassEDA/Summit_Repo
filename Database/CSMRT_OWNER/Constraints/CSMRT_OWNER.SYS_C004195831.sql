ALTER TABLE CSMRT_OWNER.UM_F_TRANSFER MODIFY 
  SRC_ORG_NAME NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_TRANSFER MODIFY 
  SRC_ORG_NAME NOT NULL
  ENABLE VALIDATE
/