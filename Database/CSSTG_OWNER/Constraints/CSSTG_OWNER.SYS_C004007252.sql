ALTER TABLE CSSTG_OWNER.PSROLEDEFN MODIFY 
  PARTITION_INDICATOR NULL
/

ALTER TABLE CSSTG_OWNER.PSROLEDEFN MODIFY 
  PARTITION_INDICATOR NOT NULL
  ENABLE VALIDATE
/
