ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  ADDRESS_TYPE NULL
/

ALTER TABLE CSSTG_OWNER.PS_ADDRESSES MODIFY 
  ADDRESS_TYPE NOT NULL
  ENABLE VALIDATE
/