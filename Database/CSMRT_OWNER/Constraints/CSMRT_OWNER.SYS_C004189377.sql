ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  ENRL_ACN_LAST_SID NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  ENRL_ACN_LAST_SID NOT NULL
  ENABLE VALIDATE
/