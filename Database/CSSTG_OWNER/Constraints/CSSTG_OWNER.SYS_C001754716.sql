ALTER TABLE CSSTG_OWNER.PS_T_ITEM_SF MODIFY 
  ITEM_NBR_SOURCE NULL
/

ALTER TABLE CSSTG_OWNER.PS_T_ITEM_SF MODIFY 
  ITEM_NBR_SOURCE NOT NULL
  ENABLE VALIDATE
/