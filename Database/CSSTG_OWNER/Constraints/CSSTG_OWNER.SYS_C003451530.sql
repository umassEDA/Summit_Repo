ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  COMPUTE_BTCH_NO NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_CONTROL MODIFY 
  COMPUTE_BTCH_NO NOT NULL
  ENABLE VALIDATE
/