ALTER TABLE CSSTG_OWNER.PS_CALC_MESSAGES MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_CALC_MESSAGES MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
