ALTER TABLE CSSTG_OWNER.PS_PROGRAM_TBL MODIFY 
  MANAGER_NAME NULL
/

ALTER TABLE CSSTG_OWNER.PS_PROGRAM_TBL MODIFY 
  MANAGER_NAME NOT NULL
  ENABLE VALIDATE
/