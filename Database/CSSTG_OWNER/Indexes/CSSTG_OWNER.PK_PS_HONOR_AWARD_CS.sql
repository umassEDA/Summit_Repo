DROP INDEX CSSTG_OWNER.PK_PS_HONOR_AWARD_CS
/

--
-- PK_PS_HONOR_AWARD_CS  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_HONOR_AWARD_CS ON CSSTG_OWNER.PS_HONOR_AWARD_CS
(EMPLID, SRC_SYS_ID, DT_RECVD, INSTITUTION, ACAD_CAREER, 
STRM, AWARD_CODE)
/
