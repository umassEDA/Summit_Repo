ALTER TABLE CSSTG_OWNER.PS_T_AUDIT_SRVC_IND MODIFY 
  AUDIT_ACTN NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_AUDIT_SRVC_IND MODIFY 
  AUDIT_ACTN NOT NULL
  ENABLE VALIDATE
/