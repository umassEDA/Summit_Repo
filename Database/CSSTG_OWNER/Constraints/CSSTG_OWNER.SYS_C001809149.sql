ALTER TABLE CSSTG_OWNER.PS_EXT_ORG_TBL MODIFY 
  TAXPAYER_ID_NO NULL
/

ALTER TABLE CSSTG_OWNER.PS_EXT_ORG_TBL MODIFY 
  TAXPAYER_ID_NO NOT NULL
  ENABLE VALIDATE
/