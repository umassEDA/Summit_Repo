DROP INDEX CSSTG_OWNER.PK_PS_ADM_APPL_RCTER
/

--
-- PK_PS_ADM_APPL_RCTER  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ADM_APPL_RCTER ON CSSTG_OWNER.PS_ADM_APPL_RCTER
(EMPLID, ACAD_CAREER, STDNT_CAR_NBR, ADM_APPL_NBR, INSTITUTION, 
RECRUITMENT_CAT, RECRUITER_ID, SRC_SYS_ID)
/
