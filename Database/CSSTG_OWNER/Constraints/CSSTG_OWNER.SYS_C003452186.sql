ALTER TABLE CSSTG_OWNER.PS_ISIR_COMPUTED MODIFY 
  VALID_EFC_CALC NULL
/

ALTER TABLE CSSTG_OWNER.PS_ISIR_COMPUTED MODIFY 
  VALID_EFC_CALC NOT NULL
  ENABLE VALIDATE
/