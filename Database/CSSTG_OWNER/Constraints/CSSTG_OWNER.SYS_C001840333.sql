ALTER TABLE CSSTG_OWNER.PS_T_ACCOUNT_SF MODIFY 
  INCLUDE_TRANSFER NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_ACCOUNT_SF MODIFY 
  INCLUDE_TRANSFER NOT NULL
  ENABLE VALIDATE
/