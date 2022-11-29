DROP INDEX CSSTG_OWNER.PK_PS_SAA_ADB_COURSES
/

--
-- PK_PS_SAA_ADB_COURSES  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SAA_ADB_COURSES ON CSSTG_OWNER.PS_SAA_ADB_COURSES
(EMPLID, ANALYSIS_DB_SEQ, SAA_CAREER_RPT, CRSE_TAG, SRC_SYS_ID)
/