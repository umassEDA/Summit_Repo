ALTER TABLE CSSTG_OWNER.PS_SSR_GRADSTATTBL MODIFY 
  LOAD_ERROR NULL
/

ALTER TABLE CSSTG_OWNER.PS_SSR_GRADSTATTBL MODIFY 
  LOAD_ERROR NOT NULL
  ENABLE VALIDATE
/
