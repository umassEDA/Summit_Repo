ALTER TABLE CSSTG_OWNER.PS_BUDGET_ITEM MODIFY 
  BUDGET_GROUP_CODE NULL
/

ALTER TABLE CSSTG_OWNER.PS_BUDGET_ITEM MODIFY 
  BUDGET_GROUP_CODE NOT NULL
  ENABLE VALIDATE
/