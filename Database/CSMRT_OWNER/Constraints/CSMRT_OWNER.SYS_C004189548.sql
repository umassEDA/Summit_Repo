ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  ENRLMT_MAX_TERM_CD NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  ENRLMT_MAX_TERM_CD NOT NULL
  ENABLE VALIDATE
/