ALTER TABLE CSSTG_OWNER.PS_ESTAB_TBL_OLD MODIFY 
  DUN_BRADSTREET_NBR NULL
/

ALTER TABLE CSSTG_OWNER.PS_ESTAB_TBL_OLD MODIFY 
  DUN_BRADSTREET_NBR NOT NULL
  ENABLE VALIDATE
/