ALTER TABLE CSMRT_OWNER.UM_D_CLASS MODIFY 
  SSR_DROP_CONSENT_SD NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_CLASS MODIFY 
  SSR_DROP_CONSENT_SD NOT NULL
  ENABLE VALIDATE
/