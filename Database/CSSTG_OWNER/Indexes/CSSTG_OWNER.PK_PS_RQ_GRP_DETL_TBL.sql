DROP INDEX CSSTG_OWNER.PK_PS_RQ_GRP_DETL_TBL
/

--
-- PK_PS_RQ_GRP_DETL_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_RQ_GRP_DETL_TBL ON CSSTG_OWNER.PS_RQ_GRP_DETL_TBL
(RQRMNT_GROUP, EFFDT, RQ_LINE_KEY_NBR, SRC_SYS_ID)
/
