ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  EMPL_CLASS_DESCR NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  EMPL_CLASS_DESCR NOT NULL
  ENABLE VALIDATE
/