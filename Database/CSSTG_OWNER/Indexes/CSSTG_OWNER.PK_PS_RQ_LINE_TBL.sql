DROP INDEX CSSTG_OWNER.PK_PS_RQ_LINE_TBL
/

--
-- PK_PS_RQ_LINE_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_RQ_LINE_TBL ON CSSTG_OWNER.PS_RQ_LINE_TBL
(REQUIREMENT, EFFDT, RQ_LINE_KEY_NBR, SRC_SYS_ID)
/
