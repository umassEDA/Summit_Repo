ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  TAX_REPORT_TYPE NULL
/

ALTER TABLE CSSTG_OWNER.PS_S_COMPANY_TBL_OLD MODIFY 
  TAX_REPORT_TYPE NOT NULL
  ENABLE VALIDATE
/