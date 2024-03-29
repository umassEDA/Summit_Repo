DROP TABLE CSSTG_OWNER.PS_TRNSFR_COMP CASCADE CONSTRAINTS
/

--
-- PS_TRNSFR_COMP  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_TRNSFR_COMP
(
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  TRNSFR_SRC_ID       VARCHAR2(11 BYTE)         NOT NULL,
  COMP_SUBJECT_AREA   VARCHAR2(16 BYTE)         NOT NULL,
  EFFDT               DATE                      NOT NULL,
  TRNSFR_EQVLNCY_CMP  VARCHAR2(4 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  EXT_TERM_TYPE       VARCHAR2(4 BYTE)          NOT NULL,
  TRNSFR_CRSE_FL      VARCHAR2(1 BYTE)          NOT NULL,
  TRNSFR_PRIORITY     INTEGER                   NOT NULL,
  CNTNGNT_CRDT_FL     VARCHAR2(1 BYTE)          NOT NULL,
  INP_CRSE_CNT        INTEGER                   NOT NULL,
  UNT_TRNSFR_SRC      VARCHAR2(1 BYTE)          NOT NULL,
  XS_CRSE_FL          VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
