ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  MANAGER_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  MANAGER_ID NOT NULL
  ENABLE VALIDATE
/