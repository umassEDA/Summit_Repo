DROP INDEX CSSTG_OWNER.PK_PS_TERM_TBL
/

--
-- PK_PS_TERM_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_TERM_TBL ON CSSTG_OWNER.PS_TERM_TBL
(INSTITUTION, ACAD_CAREER, STRM, SRC_SYS_ID)
/