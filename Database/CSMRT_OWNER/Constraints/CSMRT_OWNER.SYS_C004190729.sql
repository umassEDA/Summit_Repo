ALTER TABLE CSMRT_OWNER.PS_F_ADM_APPL_STAT MODIFY 
  AUDIT_OPRID_SID NULL
/

ALTER TABLE CSMRT_OWNER.PS_F_ADM_APPL_STAT MODIFY 
  AUDIT_OPRID_SID NOT NULL
  ENABLE VALIDATE
/
