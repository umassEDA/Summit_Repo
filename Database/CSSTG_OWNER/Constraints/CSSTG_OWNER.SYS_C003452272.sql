ALTER TABLE CSSTG_OWNER.PS_ITEM_TYPE_FISCL MODIFY 
  CANCELLED_AMTS NULL
/

ALTER TABLE CSSTG_OWNER.PS_ITEM_TYPE_FISCL MODIFY 
  CANCELLED_AMTS NOT NULL
  ENABLE VALIDATE
/
