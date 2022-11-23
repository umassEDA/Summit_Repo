DROP INDEX CSMRT_OWNER.NK_PS_D_ITEM_TYPE
/

--
-- NK_PS_D_ITEM_TYPE  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_ITEM_TYPE ON CSMRT_OWNER.PS_D_ITEM_TYPE
(SETID, ITEM_TYPE_ID, SRC_SYS_ID)
/