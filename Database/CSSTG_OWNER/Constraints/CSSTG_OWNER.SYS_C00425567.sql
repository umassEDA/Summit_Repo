ALTER TABLE CSSTG_OWNER.PS_ADM_APPL_TENDER MODIFY 
  ORIGNL_TENDER_AMT NULL
/

ALTER TABLE CSSTG_OWNER.PS_ADM_APPL_TENDER MODIFY 
  ORIGNL_TENDER_AMT NOT NULL
  ENABLE VALIDATE
/
