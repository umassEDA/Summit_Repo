ALTER TABLE CSSTG_OWNER.PS_E_EMAIL_ADDR MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_E_EMAIL_ADDR MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
