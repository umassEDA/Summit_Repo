ALTER TABLE CSSTG_OWNER.PS_E_S_COMPANY_TBL MODIFY 
  TARGET_TABLE_NAME NULL
/

ALTER TABLE CSSTG_OWNER.PS_E_S_COMPANY_TBL MODIFY 
  TARGET_TABLE_NAME NOT NULL
  ENABLE VALIDATE
/