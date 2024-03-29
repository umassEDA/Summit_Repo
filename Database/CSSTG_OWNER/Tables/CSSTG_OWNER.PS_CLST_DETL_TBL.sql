DROP TABLE CSSTG_OWNER.PS_CLST_DETL_TBL CASCADE CONSTRAINTS
/

--
-- PS_CLST_DETL_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_CLST_DETL_TBL
(
  COURSE_LIST         VARCHAR2(9 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  R_COURSE_SEQUENCE   INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  WILDCARD_IND        VARCHAR2(1 BYTE),
  CRSVALID_BEGIN      DATE,
  CRSVALID_END        DATE,
  TRNSFR_LVL_ALLOWD   VARCHAR2(4 BYTE),
  TEST_CRDT_ALLOWD    VARCHAR2(1 BYTE),
  OTHR_CRDT_ALLOWD    VARCHAR2(1 BYTE),
  INCL_GPA_REQ        VARCHAR2(1 BYTE),
  EXCL_IP_CREDIT      VARCHAR2(1 BYTE),
  GRADE_POINTS_MIN    NUMBER(9,2),
  UNITS_MINIMUM       NUMBER(5,2),
  INSTITUTION         VARCHAR2(5 BYTE),
  ACAD_GROUP          VARCHAR2(5 BYTE),
  SUBJECT             VARCHAR2(8 BYTE),
  CATALOG_NBR         VARCHAR2(10 BYTE),
  WILD_PATTERN_TYPE   VARCHAR2(4 BYTE),
  CRSE_ID             VARCHAR2(6 BYTE),
  INCLUDE_EQUIVALENT  VARCHAR2(1 BYTE),
  STRM                VARCHAR2(4 BYTE),
  ASSOCIATED_CLASS    INTEGER,
  CRS_TOPIC_ID        INTEGER,
  RQMNT_DESIGNTN      VARCHAR2(4 BYTE),
  SAA_DSP_WILD_CRSES  VARCHAR2(1 BYTE),
  SAA_WILDCARD_XLIST  VARCHAR2(1 BYTE),
  DESCR               VARCHAR2(30 BYTE),
  SAA_DESCR254        VARCHAR2(254 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
