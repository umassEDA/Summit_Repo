ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  UM_PER_LV_HRS_BAL NULL
/

ALTER TABLE CSSTG_OWNER.PS_UM_EMPLOYEES MODIFY 
  UM_PER_LV_HRS_BAL NOT NULL
  ENABLE VALIDATE
/