ALTER TABLE CSSTG_OWNER.PS_ISIR_COMPUTED MODIFY 
  SFA_PRIMARY_SIC NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_COMPUTED MODIFY 
  SFA_PRIMARY_SIC NOT NULL
  ENABLE VALIDATE
/