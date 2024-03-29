DROP TABLE CSMRT_OWNER.UM_F_SAA_ADB_RESULTS CASCADE CONSTRAINTS
/

--
-- UM_F_SAA_ADB_RESULTS  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_SAA_ADB_RESULTS
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  ANALYSIS_DB_SEQ     INTEGER                   NOT NULL,
  SAA_CAREER_RPT      VARCHAR2(4 BYTE)          NOT NULL,
  SAA_ENTRY_SEQ       INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(4 BYTE)          NOT NULL,
  INSTITUTION_CD      VARCHAR2(5 BYTE),
  INSTITUTION_SID     INTEGER                   NOT NULL,
  ACAD_CAR_SID        INTEGER                   NOT NULL,
  TERM_SID            INTEGER                   NOT NULL,
  PERSON_SID          INTEGER                   NOT NULL,
  RQRMNT_GROUP_SID    INTEGER                   NOT NULL,
  REQUIREMENT_SID     INTEGER                   NOT NULL,
  RQRMNT_LINE_SID     INTEGER                   NOT NULL,
  ACAD_PROG_SID       INTEGER                   NOT NULL,
  ACAD_PLAN_SID       INTEGER                   NOT NULL,
  ACAD_SPLAN_SID      INTEGER                   NOT NULL,
  RPT_DATE            DATE,
  RPT_TYPE            VARCHAR2(4 BYTE),
  RPT_TYPE_SD         VARCHAR2(10 BYTE),
  RPT_TYPE_LD         VARCHAR2(30 BYTE),
  SAA_RPT_IDENTIFIER  VARCHAR2(10 BYTE),
  TSCRPT_TYPE         VARCHAR2(5 BYTE),
  SAA_RPT_DTTM_STAMP  DATE,
  ENTRY_R_TYPE        VARCHAR2(6 BYTE),
  ITEM_R_STATUS       VARCHAR2(4 BYTE),
  ITEM_R_STATUS_SD    VARCHAR2(10 BYTE),
  ITEM_R_STATUS_LD    VARCHAR2(30 BYTE),
  RQ_DATE             DATE,
  RQRMNT_LIST_SEQ     INTEGER,
  REQ_LINE_TYPE       VARCHAR2(3 BYTE),
  REQ_LINE_TYPE_SD    VARCHAR2(10 BYTE),
  REQ_LINE_TYPE_LD    VARCHAR2(30 BYTE),
  UNITS_REQUIRED      NUMBER(6,2),
  SAA_UNITS_USED      NUMBER(6,2),
  UNITS_NEEDED        NUMBER(6,2),
  CRSES_REQUIRED      NUMBER(6,2),
  SAA_CRSES_USED      NUMBER(6,2),
  CRSES_NEEDED        NUMBER(6,2),
  SAA_CRSE_COUNT      INTEGER,
  GPA_REQUIRED        NUMBER(6,3),
  GPA_ACTUAL          NUMBER(6,3),
  CREATED_EW_DTTM     DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_SAA_ADB_RESULTS ADD (
  CONSTRAINT PK_UM_F_SAA_ADB_RESULTS
  PRIMARY KEY
  (EMPLID, ANALYSIS_DB_SEQ, SAA_CAREER_RPT, SAA_ENTRY_SEQ, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
