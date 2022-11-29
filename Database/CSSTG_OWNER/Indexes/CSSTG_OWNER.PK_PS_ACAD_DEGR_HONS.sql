DROP INDEX CSSTG_OWNER.PK_PS_ACAD_DEGR_HONS
/

--
-- PK_PS_ACAD_DEGR_HONS  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ACAD_DEGR_HONS ON CSSTG_OWNER.PS_ACAD_DEGR_HONS
(EMPLID, STDNT_DEGR, HONORS_NBR, SRC_SYS_ID)
/