ALTER TABLE CSSTG_OWNER.PS_AUDIT_APPROG_UM MODIFY 
  PROG_REASON NULL
/

ALTER TABLE CSSTG_OWNER.PS_AUDIT_APPROG_UM MODIFY 
  PROG_REASON NOT NULL
  ENABLE VALIDATE
/