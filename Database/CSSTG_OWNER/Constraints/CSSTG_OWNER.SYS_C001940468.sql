ALTER TABLE CSSTG_OWNER.PS_S_NAMES_OLD MODIFY 
  PARTNER_LAST_NAME NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_NAMES_OLD MODIFY 
  PARTNER_LAST_NAME NOT NULL
  ENABLE VALIDATE
/
