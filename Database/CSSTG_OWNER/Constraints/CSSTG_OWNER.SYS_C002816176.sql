ALTER TABLE CSSTG_OWNER.PS_AUDIT_APPROG_UM MODIFY 
  AUDIT_ACTN NULL
/

ALTER TABLE CSSTG_OWNER.PS_AUDIT_APPROG_UM MODIFY 
  AUDIT_ACTN NOT NULL
  ENABLE VALIDATE
/