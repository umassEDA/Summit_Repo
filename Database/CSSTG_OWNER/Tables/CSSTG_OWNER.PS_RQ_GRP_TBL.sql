DROP TABLE CSSTG_OWNER.PS_RQ_GRP_TBL CASCADE CONSTRAINTS
/

--
-- PS_RQ_GRP_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_RQ_GRP_TBL
(
  RQRMNT_GROUP        VARCHAR2(6 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCRSHORT          VARCHAR2(10 BYTE)         NOT NULL,
  RQRMNT_USEAGE       VARCHAR2(4 BYTE)          NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  ACAD_GROUP          VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_PROG           VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_PLAN           VARCHAR2(10 BYTE)         NOT NULL,
  ACAD_SUB_PLAN       VARCHAR2(10 BYTE)         NOT NULL,
  ACAD_CAREER_INC     VARCHAR2(4 BYTE)          NOT NULL,
  ACAD_PROG_INC       VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_PLAN_INC       VARCHAR2(10 BYTE)         NOT NULL,
  ACAD_SUBPLAN_INC    VARCHAR2(10 BYTE)         NOT NULL,
  SUBJECT             VARCHAR2(8 BYTE)          NOT NULL,
  CATALOG_NBR         VARCHAR2(10 BYTE)         NOT NULL,
  RQRMNT_LIST_SEQ     INTEGER                   NOT NULL,
  RQ_CONNECT_TYPE     VARCHAR2(3 BYTE)          NOT NULL,
  SPECIAL_PROCESSING  VARCHAR2(1 BYTE)          NOT NULL,
  MIN_UNITS_REQD      NUMBER(6,2)               NOT NULL,
  MIN_CRSES_REQD      NUMBER(5,2)               NOT NULL,
  GRADE_POINTS_MIN    NUMBER(9,2)               NOT NULL,
  GPA_REQUIRED        NUMBER(6,3)               NOT NULL,
  REQ_CRSSELECT_METH  VARCHAR2(3 BYTE)          NOT NULL,
  CREDIT_INCL_MODE    VARCHAR2(4 BYTE)          NOT NULL,
  RQ_REPORTING        VARCHAR2(4 BYTE)          NOT NULL,
  SAA_DISPLAY_GPA     VARCHAR2(1 BYTE)          NOT NULL,
  SAA_DISPLAY_UNITS   VARCHAR2(1 BYTE)          NOT NULL,
  SAA_DISPLAY_CRSCNT  VARCHAR2(1 BYTE)          NOT NULL,
  CONDITION_CODE      VARCHAR2(3 BYTE)          NOT NULL,
  CONDITION_OPERATOR  VARCHAR2(2 BYTE)          NOT NULL,
  CONDITION_DATA      VARCHAR2(10 BYTE)         NOT NULL,
  REQCH_RESOLV_METH   VARCHAR2(3 BYTE)          NOT NULL,
  REQCH_STOP_RULE     VARCHAR2(4 BYTE)          NOT NULL,
  RQ_MIN_LINES        INTEGER                   NOT NULL,
  RQ_MAX_LINES        INTEGER                   NOT NULL,
  RQ_PARTITION_SHR    VARCHAR2(1 BYTE)          NOT NULL,
  OTH_PLN_SPLN_REQ    VARCHAR2(1 BYTE)          NOT NULL,
  PLN_SPLN_RQD_NBR    INTEGER                   NOT NULL,
  ENABLE_CATLG_PRINT  VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_STD_DESCR      VARCHAR2(1 BYTE)          NOT NULL,
  TEST_ID             VARCHAR2(11 BYTE)         NOT NULL,
  TEST_COMPONENT      VARCHAR2(5 BYTE)          NOT NULL,
  SCORE               NUMBER(6,2)               NOT NULL,
  SAA_MAX_VALID_AGE   INTEGER                   NOT NULL,
  SAA_BEST_TEST_OPT   VARCHAR2(2 BYTE)          NOT NULL,
  SAA_HIDE_STATUS     VARCHAR2(1 BYTE)          NOT NULL,
  SAA_DESCR80         VARCHAR2(80 BYTE)         NOT NULL,
  DESCR254A           VARCHAR2(254 BYTE)        NOT NULL,
  DESCRLONG           VARCHAR2(4000 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/