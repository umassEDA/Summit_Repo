DROP INDEX CSSTG_OWNER.PK_PS_RECRUITR_APPCTR
/

--
-- PK_PS_RECRUITR_APPCTR  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_RECRUITR_APPCTR ON CSSTG_OWNER.PS_RECRUITR_APPCTR
(INSTITUTION, ACAD_CAREER, RECRUITER_ID, EFFDT, ADM_APPL_CTR, 
SRC_SYS_ID)
/
