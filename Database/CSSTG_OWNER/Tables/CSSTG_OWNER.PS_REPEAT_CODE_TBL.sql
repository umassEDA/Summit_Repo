DROP TABLE CSSTG_OWNER.PS_REPEAT_CODE_TBL CASCADE CONSTRAINTS
/

--
-- PS_REPEAT_CODE_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_REPEAT_CODE_TBL
(
  SETID               VARCHAR2(5 BYTE)          NOT NULL,
  REPEAT_SCHEME       VARCHAR2(4 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  REPEAT_CODE         VARCHAR2(4 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCRSHORT          VARCHAR2(10 BYTE)         NOT NULL,
  EARN_CREDIT         VARCHAR2(1 BYTE)          NOT NULL,
  UNITS_ATTEMPTED     VARCHAR2(1 BYTE)          NOT NULL,
  INCLUDE_IN_GPA      VARCHAR2(1 BYTE)          NOT NULL,
  PRINT_REPEAT_DESCR  VARCHAR2(1 BYTE)          NOT NULL,
  PRINT_REPEAT_DATE   VARCHAR2(1 BYTE)          NOT NULL,
  DESCRFORMAL         VARCHAR2(50 BYTE)         NOT NULL,
  SAA_DISPLAY_OPTION  VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
