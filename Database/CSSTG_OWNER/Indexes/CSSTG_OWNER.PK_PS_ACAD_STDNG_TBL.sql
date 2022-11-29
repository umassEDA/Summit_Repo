DROP INDEX CSSTG_OWNER.PK_PS_ACAD_STDNG_TBL
/

--
-- PK_PS_ACAD_STDNG_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ACAD_STDNG_TBL ON CSSTG_OWNER.PS_ACAD_STDNG_TBL
(INSTITUTION, ACAD_CAREER, EFFDT, SRC_SYS_ID)
/