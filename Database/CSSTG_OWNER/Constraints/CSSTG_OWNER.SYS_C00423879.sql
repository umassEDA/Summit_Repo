ALTER TABLE CSSTG_OWNER.PS_ESTAB_TBL_OLD MODIFY 
  ESTAB_CONTACT_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_ESTAB_TBL_OLD MODIFY 
  ESTAB_CONTACT_ID NOT NULL
  ENABLE VALIDATE
/
