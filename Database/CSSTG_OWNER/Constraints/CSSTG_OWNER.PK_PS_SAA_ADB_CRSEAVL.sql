ALTER TABLE CSSTG_OWNER.PS_SAA_ADB_CRSEAVL
  DROP CONSTRAINT PK_PS_SAA_ADB_CRSEAVL
/

ALTER TABLE CSSTG_OWNER.PS_SAA_ADB_CRSEAVL ADD (
  CONSTRAINT PK_PS_SAA_ADB_CRSEAVL
  PRIMARY KEY
  (EMPLID, ANALYSIS_DB_SEQ, SAA_CAREER_RPT, SAA_ENTRY_SEQ, SAA_COURSE_SEQ, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
