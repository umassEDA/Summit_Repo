ALTER TABLE CSMRT_OWNER.PS_D_ITEM_CD
  DROP CONSTRAINT PK_PS_D_ITEM_CD
/

ALTER TABLE CSMRT_OWNER.PS_D_ITEM_CD ADD (
  CONSTRAINT PK_PS_D_ITEM_CD
  PRIMARY KEY
  (ITEM_CD_SID)
  RELY
  DISABLE NOVALIDATE)
/