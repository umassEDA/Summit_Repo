ALTER TABLE CSSTG_OWNER.PS_E_EMAIL_ADDR MODIFY 
  E_ADDR_TYPE NULL
/

ALTER TABLE CSSTG_OWNER.PS_E_EMAIL_ADDR MODIFY 
  E_ADDR_TYPE NOT NULL
  ENABLE VALIDATE
/
