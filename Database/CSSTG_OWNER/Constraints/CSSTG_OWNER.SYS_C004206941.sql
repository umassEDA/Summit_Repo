ALTER TABLE CSSTG_OWNER.PS_AUDIT_ISIR_CHNG MODIFY 
  ISIR_FIELD_NUM NULL
/

ALTER TABLE CSSTG_OWNER.PS_AUDIT_ISIR_CHNG MODIFY 
  ISIR_FIELD_NUM NOT NULL
  ENABLE VALIDATE
/
