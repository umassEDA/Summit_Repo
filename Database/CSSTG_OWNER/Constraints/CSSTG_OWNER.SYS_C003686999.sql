ALTER TABLE CSSTG_OWNER.PS_ITEM_SF MODIFY 
  REFUND_ORG_CONTACT NULL
/

ALTER TABLE CSSTG_OWNER.PS_ITEM_SF MODIFY 
  REFUND_ORG_CONTACT NOT NULL
  ENABLE VALIDATE
/
