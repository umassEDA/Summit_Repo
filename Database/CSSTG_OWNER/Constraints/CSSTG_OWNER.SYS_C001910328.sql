ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  REPORTS_TO NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  REPORTS_TO NOT NULL
  ENABLE VALIDATE
/