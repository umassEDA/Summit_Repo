DROP INDEX CSSTG_OWNER.PK_UM_INS_UPD_STATS
/

--
-- PK_UM_INS_UPD_STATS  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_UM_INS_UPD_STATS ON CSSTG_OWNER.UM_INS_UPD_STATS
(TABLE_NAME, RUN_DATE)
/
