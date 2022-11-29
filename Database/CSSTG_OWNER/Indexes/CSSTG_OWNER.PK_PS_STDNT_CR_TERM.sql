DROP INDEX CSSTG_OWNER.PK_PS_STDNT_CR_TERM
/

--
-- PK_PS_STDNT_CR_TERM  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_STDNT_CR_TERM ON CSSTG_OWNER.PS_STDNT_CR_TERM
(EMPLID, INSTITUTION, AID_YEAR, ACAD_CAREER, STRM, 
SRC_SYS_ID)
/