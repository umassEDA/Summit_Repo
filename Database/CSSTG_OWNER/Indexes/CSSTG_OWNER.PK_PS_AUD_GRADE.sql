DROP INDEX CSSTG_OWNER.PK_PS_AUD_GRADE
/

--
-- PK_PS_AUD_GRADE  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_AUD_GRADE ON CSSTG_OWNER.PS_AUD_GRADE
(EMPLID, ACAD_CAREER, INSTITUTION, STRM, CLASS_NBR, 
CRSE_CAREER, SESSION_CODE, SRC_SYS_ID)
/