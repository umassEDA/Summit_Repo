ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  UM_STD_NEVER_ATTND_FLG NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  UM_STD_NEVER_ATTND_FLG NOT NULL
  ENABLE VALIDATE
/
