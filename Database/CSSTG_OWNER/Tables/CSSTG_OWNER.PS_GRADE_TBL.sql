DROP TABLE CSSTG_OWNER.PS_GRADE_TBL CASCADE CONSTRAINTS
/

--
-- PS_GRADE_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_GRADE_TBL
(
  SETID               VARCHAR2(5 BYTE)          NOT NULL,
  GRADING_SCHEME      VARCHAR2(3 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  GRADING_BASIS       VARCHAR2(3 BYTE)          NOT NULL,
  CRSE_GRADE_INPUT    VARCHAR2(3 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCRSHORT          VARCHAR2(10 BYTE)         NOT NULL,
  GRADE_CONVERT       VARCHAR2(3 BYTE)          NOT NULL,
  GRADE_POINTS        NUMBER(9,3)               NOT NULL,
  EARN_CREDIT         VARCHAR2(1 BYTE)          NOT NULL,
  INCLUDE_IN_GPA      VARCHAR2(1 BYTE)          NOT NULL,
  IN_PROGRESS_GRD     VARCHAR2(1 BYTE)          NOT NULL,
  VALID_ATTEMPT       VARCHAR2(1 BYTE)          NOT NULL,
  GRADE_CATEGORY      VARCHAR2(4 BYTE)          NOT NULL,
  EXCLUDE_PRGRSS_UNT  VARCHAR2(1 BYTE)          NOT NULL,
  SSR_GRADE_FLAG      VARCHAR2(4 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/