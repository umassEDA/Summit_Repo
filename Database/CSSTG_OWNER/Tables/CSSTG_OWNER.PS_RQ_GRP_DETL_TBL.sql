DROP TABLE CSSTG_OWNER.PS_RQ_GRP_DETL_TBL CASCADE CONSTRAINTS
/

--
-- PS_RQ_GRP_DETL_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_RQ_GRP_DETL_TBL
(
  RQRMNT_GROUP        VARCHAR2(6 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  RQ_LINE_KEY_NBR     VARCHAR2(4 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  RQ_GRP_LINE_NBR     VARCHAR2(4 BYTE)          NOT NULL,
  RQ_GRP_LINE_TYPE    VARCHAR2(4 BYTE)          NOT NULL,
  MIN_UNITS_REQD      NUMBER(6,2),
  MIN_CRSES_REQD      NUMBER(5,2),
  REQUISITE_TYPE      VARCHAR2(4 BYTE),
  REQUIREMENT         VARCHAR2(9 BYTE),
  CONDITION_CODE      VARCHAR2(3 BYTE),
  CONDITION_OPERATOR  VARCHAR2(2 BYTE),
  CONDITION_DATA      VARCHAR2(10 BYTE),
  INSTITUTION         VARCHAR2(5 BYTE),
  ACAD_GROUP          VARCHAR2(5 BYTE),
  SUBJECT             VARCHAR2(8 BYTE),
  CATALOG_NBR         VARCHAR2(10 BYTE),
  WILD_PATTERN_TYPE   VARCHAR2(4 BYTE),
  CRSE_ID             VARCHAR2(6 BYTE),
  TRNSFR_LVL_ALLOWD   VARCHAR2(4 BYTE),
  TEST_CRDT_ALLOWD    VARCHAR2(1 BYTE),
  OTHR_CRDT_ALLOWD    VARCHAR2(1 BYTE),
  INCL_GPA_REQ        VARCHAR2(1 BYTE),
  EXCL_IP_CREDIT      VARCHAR2(1 BYTE),
  GRADE_POINTS_MIN    NUMBER(9,2),
  UNITS_MINIMUM       NUMBER(5,2),
  INCLUDE_EQUIVALENT  VARCHAR2(1 BYTE),
  CRSVALID_BEGIN      DATE,
  CRSVALID_END        DATE,
  STRM                VARCHAR2(4 BYTE),
  ASSOCIATED_CLASS    INTEGER,
  CRS_TOPIC_ID        INTEGER,
  RQMNT_DESIGNTN      VARCHAR2(4 BYTE),
  RQ_CONNECT          VARCHAR2(4 BYTE),
  PARENTHESIS         VARCHAR2(1 BYTE),
  TEST_ID             VARCHAR2(11 BYTE),
  TEST_COMPONENT      VARCHAR2(5 BYTE),
  SCORE               NUMBER(6,2),
  SAA_MAX_VALID_AGE   INTEGER,
  SAA_BEST_TEST_OPT   VARCHAR2(2 BYTE),
  SSR_DESCR80         VARCHAR2(80 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
