ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  CPS_REPROCESS_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  CPS_REPROCESS_CD NOT NULL
  ENABLE VALIDATE
/