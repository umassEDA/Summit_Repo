ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  CORR_LICENSE_STATE NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  CORR_LICENSE_STATE NOT NULL
  ENABLE VALIDATE
/
