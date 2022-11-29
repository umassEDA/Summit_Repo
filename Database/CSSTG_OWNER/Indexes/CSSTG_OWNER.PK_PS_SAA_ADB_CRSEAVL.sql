DROP INDEX CSSTG_OWNER.PK_PS_SAA_ADB_CRSEAVL
/

--
-- PK_PS_SAA_ADB_CRSEAVL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SAA_ADB_CRSEAVL ON CSSTG_OWNER.PS_SAA_ADB_CRSEAVL
(EMPLID, ANALYSIS_DB_SEQ, SAA_CAREER_RPT, SAA_ENTRY_SEQ, SAA_COURSE_SEQ, 
SRC_SYS_ID)
/