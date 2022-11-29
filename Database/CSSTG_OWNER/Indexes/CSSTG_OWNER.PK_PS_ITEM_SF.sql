DROP INDEX CSSTG_OWNER.PK_PS_ITEM_SF
/

--
-- PK_PS_ITEM_SF  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ITEM_SF ON CSSTG_OWNER.PS_ITEM_SF
(BUSINESS_UNIT, COMMON_ID, SA_ID_TYPE, ITEM_NBR, SRC_SYS_ID)
/