ALTER TABLE CSSTG_OWNER.PS_ADDR_ORDER_TBL MODIFY 
  ADDRESS_TYPE NULL
/

ALTER TABLE CSSTG_OWNER.PS_ADDR_ORDER_TBL MODIFY 
  ADDRESS_TYPE NOT NULL
  ENABLE VALIDATE
/