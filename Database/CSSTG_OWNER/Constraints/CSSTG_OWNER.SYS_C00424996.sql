ALTER TABLE CSSTG_OWNER.PS_ACAD_LOAD_TBL MODIFY 
  LEVEL_LOAD_RULE NULL
/

ALTER TABLE CSSTG_OWNER.PS_ACAD_LOAD_TBL MODIFY 
  LEVEL_LOAD_RULE NOT NULL
  ENABLE VALIDATE
/