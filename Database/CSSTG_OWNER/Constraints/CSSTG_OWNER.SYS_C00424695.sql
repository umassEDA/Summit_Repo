ALTER TABLE CSSTG_OWNER.PS_E_EMAIL_ADDR MODIFY 
  SRC_SYS_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_E_EMAIL_ADDR MODIFY 
  SRC_SYS_ID NOT NULL
  ENABLE VALIDATE
/