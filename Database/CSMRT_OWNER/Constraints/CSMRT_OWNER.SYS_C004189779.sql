ALTER TABLE CSMRT_OWNER.UM_F_CLASS_PERM MODIFY 
  SSR_OVRD_CONSENT NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_CLASS_PERM MODIFY 
  SSR_OVRD_CONSENT NOT NULL
  ENABLE VALIDATE
/