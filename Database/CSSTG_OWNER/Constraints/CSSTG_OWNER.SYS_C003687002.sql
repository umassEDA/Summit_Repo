ALTER TABLE CSSTG_OWNER.PS_ITEM_SF MODIFY 
  SF_ADM_APPL_DEL NULL
/

ALTER TABLE CSSTG_OWNER.PS_ITEM_SF MODIFY 
  SF_ADM_APPL_DEL NOT NULL
  ENABLE VALIDATE
/
