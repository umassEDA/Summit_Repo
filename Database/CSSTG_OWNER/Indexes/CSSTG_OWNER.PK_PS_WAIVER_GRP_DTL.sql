DROP INDEX CSSTG_OWNER.PK_PS_WAIVER_GRP_DTL
/

--
-- PK_PS_WAIVER_GRP_DTL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_WAIVER_GRP_DTL ON CSSTG_OWNER.PS_WAIVER_GRP_DTL
(SETID, WAIVER_GROUP, EFFDT, WAIVER_CODE, SRC_SYS_ID)
/
