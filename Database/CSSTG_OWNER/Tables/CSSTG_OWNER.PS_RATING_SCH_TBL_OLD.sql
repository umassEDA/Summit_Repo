DROP TABLE CSSTG_OWNER.PS_RATING_SCH_TBL_OLD CASCADE CONSTRAINTS
/

--
-- PS_RATING_SCH_TBL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_RATING_SCH_TBL_OLD
(
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  RATING_SCHEME       VARCHAR2(10 BYTE)         NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCRSHORT          VARCHAR2(10 BYTE)         NOT NULL,
  RATING_TYPE         VARCHAR2(4 BYTE)          NOT NULL,
  SUMMARY_SQC         VARCHAR2(10 BYTE)         NOT NULL,
  TEST_SCORE_SQC      VARCHAR2(10 BYTE)         NOT NULL,
  COURSE_SQC          VARCHAR2(10 BYTE)         NOT NULL,
  SUBJECT_SQC         VARCHAR2(10 BYTE)         NOT NULL,
  GENL_MATL_SQC       VARCHAR2(10 BYTE)         NOT NULL,
  SUMMARY_MATL_GRP    VARCHAR2(8 BYTE)          NOT NULL,
  TST_SCORE_MATL_GRP  VARCHAR2(8 BYTE)          NOT NULL,
  COURSE_MATL_GRP     VARCHAR2(8 BYTE)          NOT NULL,
  SUBJECT_MATL_GRP    VARCHAR2(8 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL,
  DESCRLONG           CLOB
)
LOB (DESCRLONG) STORE AS BASICFILE (
  TABLESPACE  CSSTG_DATA1
  ENABLE      STORAGE IN ROW
  CHUNK       16384
  RETENTION
  STORAGE    (
              INITIAL          1M
              NEXT             1M
              MINEXTENTS       1
              MAXEXTENTS       UNLIMITED
              PCTINCREASE      0
              BUFFER_POOL      DEFAULT
             ))
COMPRESS BASIC
/