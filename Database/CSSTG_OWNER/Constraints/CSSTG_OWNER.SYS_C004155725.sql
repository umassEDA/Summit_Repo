ALTER TABLE CSSTG_OWNER.PS_ITEM_LINE_SF MODIFY 
  AGING2_FLAG NULL
/

ALTER TABLE CSSTG_OWNER.PS_ITEM_LINE_SF MODIFY 
  AGING2_FLAG NOT NULL
  ENABLE VALIDATE
/
