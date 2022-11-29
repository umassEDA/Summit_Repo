DROP INDEX CSSTG_OWNER.PK_PS_LINE_REASON_TBL
/

--
-- PK_PS_LINE_REASON_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_LINE_REASON_TBL ON CSSTG_OWNER.PS_LINE_REASON_TBL
(SETID, LINE_REASON_CD, EFFDT, SRC_SYS_ID)
/