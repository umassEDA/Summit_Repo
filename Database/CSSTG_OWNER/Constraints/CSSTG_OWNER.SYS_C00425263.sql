ALTER TABLE CSSTG_OWNER.PS_ACCOUNT_ORG_SF_OLD MODIFY 
  INCLUDE_TRANSFER NULL
/

ALTER TABLE CSSTG_OWNER.PS_ACCOUNT_ORG_SF_OLD MODIFY 
  INCLUDE_TRANSFER NOT NULL
  ENABLE VALIDATE
/
