ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  ISIR_DUP_SSN_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  ISIR_DUP_SSN_CD NOT NULL
  ENABLE VALIDATE
/