ALTER TABLE CSSTG_OWNER.PS_IMMUNIZATIONS MODIFY 
  IMMUN_SEQ NULL
/

ALTER TABLE CSSTG_OWNER.PS_IMMUNIZATIONS MODIFY 
  IMMUN_SEQ NOT NULL
  ENABLE VALIDATE
/
