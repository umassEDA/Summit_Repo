ALTER TABLE CSSTG_OWNER.PS_ITEM_LINE_SF MODIFY 
  BILLING_FLAG NULL
/

ALTER TABLE CSSTG_OWNER.PS_ITEM_LINE_SF MODIFY 
  BILLING_FLAG NOT NULL
  ENABLE VALIDATE
/