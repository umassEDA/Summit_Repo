ALTER TABLE CSMRT_OWNER.UM_F_TRANSFER MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_TRANSFER MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/
