ALTER TABLE CSSTG_OWNER.PS_S_NAMES_OLD MODIFY 
  NAME_INITIALS NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_NAMES_OLD MODIFY 
  NAME_INITIALS NOT NULL
  ENABLE VALIDATE
/