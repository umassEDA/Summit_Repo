ALTER TABLE CSSTG_OWNER.PS_GRADE_RSTR_TYPE MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_GRADE_RSTR_TYPE MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
