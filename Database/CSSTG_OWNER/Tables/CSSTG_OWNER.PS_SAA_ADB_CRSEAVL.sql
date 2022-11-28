DROP TABLE CSSTG_OWNER.PS_SAA_ADB_CRSEAVL CASCADE CONSTRAINTS
/

--
-- PS_SAA_ADB_CRSEAVL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_SAA_ADB_CRSEAVL
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  ANALYSIS_DB_SEQ    INTEGER                    NOT NULL,
  SAA_CAREER_RPT     VARCHAR2(4 BYTE)           NOT NULL,
  SAA_ENTRY_SEQ      INTEGER                    NOT NULL,
  SAA_COURSE_SEQ     INTEGER                    NOT NULL,
  SRC_SYS_ID         VARCHAR2(4 BYTE)           NOT NULL,
  RPT_DATE           DATE,
  COURSE_LIST        VARCHAR2(9 BYTE),
  R_COURSE_SEQUENCE  INTEGER,
  SUBJECT            VARCHAR2(8 BYTE),
  CATALOG_NBR        VARCHAR2(10 BYTE),
  CRSE_ID            VARCHAR2(6 BYTE),
  CRS_TOPIC_ID       INTEGER,
  RQMNT_DESIGNTN     VARCHAR2(4 BYTE),
  DESCR              VARCHAR2(30 BYTE),
  CREATED_EW_DTTM    DATE
)
COMPRESS BASIC
/


ALTER TABLE CSSTG_OWNER.PS_SAA_ADB_CRSEAVL ADD (
  CONSTRAINT PK_PS_SAA_ADB_CRSEAVL
  PRIMARY KEY
  (EMPLID, ANALYSIS_DB_SEQ, SAA_CAREER_RPT, SAA_ENTRY_SEQ, SAA_COURSE_SEQ, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/