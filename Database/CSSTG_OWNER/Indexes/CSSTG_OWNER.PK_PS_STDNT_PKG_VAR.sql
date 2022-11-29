DROP INDEX CSSTG_OWNER.PK_PS_STDNT_PKG_VAR
/

--
-- PK_PS_STDNT_PKG_VAR  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_STDNT_PKG_VAR ON CSSTG_OWNER.PS_STDNT_PKG_VAR
(EMPLID, INSTITUTION, AID_YEAR, ACAD_CAREER, SRC_SYS_ID)
/