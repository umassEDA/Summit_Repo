ALTER TABLE CSSTG_OWNER.PS_AUDIT_CLSMTG_UM MODIFY 
  CLASS_MTG_NBR NULL
/

ALTER TABLE CSSTG_OWNER.PS_AUDIT_CLSMTG_UM MODIFY 
  CLASS_MTG_NBR NOT NULL
  ENABLE VALIDATE
/
