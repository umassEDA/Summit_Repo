ALTER TABLE CSSTG_OWNER.PS_STDNT_GRPS_HIST MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_STDNT_GRPS_HIST MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/