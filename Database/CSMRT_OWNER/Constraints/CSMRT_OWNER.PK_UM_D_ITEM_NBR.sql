ALTER TABLE CSMRT_OWNER.UM_D_ITEM_NBR
  DROP CONSTRAINT PK_UM_D_ITEM_NBR
/

ALTER TABLE CSMRT_OWNER.UM_D_ITEM_NBR ADD (
  CONSTRAINT PK_UM_D_ITEM_NBR
  PRIMARY KEY
  (ITEM_NBR)
  RELY
  DISABLE NOVALIDATE)
/
