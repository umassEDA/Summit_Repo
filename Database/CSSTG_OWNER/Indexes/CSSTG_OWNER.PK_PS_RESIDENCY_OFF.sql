DROP INDEX CSSTG_OWNER.PK_PS_RESIDENCY_OFF
/

--
-- PK_PS_RESIDENCY_OFF  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_RESIDENCY_OFF ON CSSTG_OWNER.PS_RESIDENCY_OFF
(EMPLID, ACAD_CAREER, INSTITUTION, EFFECTIVE_TERM, SRC_SYS_ID)
/