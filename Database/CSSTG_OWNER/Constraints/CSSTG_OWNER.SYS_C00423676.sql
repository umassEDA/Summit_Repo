ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  REG_REGION NULL
/

ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  REG_REGION NOT NULL
  ENABLE VALIDATE
/
