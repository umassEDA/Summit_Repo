ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/
