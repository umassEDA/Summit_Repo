ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  UM_STD_COMPL_CRSE_FLG NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT MODIFY 
  UM_STD_COMPL_CRSE_FLG NOT NULL
  ENABLE VALIDATE
/