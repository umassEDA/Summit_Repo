ALTER TABLE CSSTG_OWNER.PS_ITEM_SF MODIFY 
  SF_DEPOSIT_ID NULL
/

ALTER TABLE CSSTG_OWNER.PS_ITEM_SF MODIFY 
  SF_DEPOSIT_ID NOT NULL
  ENABLE VALIDATE
/