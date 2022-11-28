DROP TABLE CSSTG_OWNER.PS_AID_YR_CAR_TERM CASCADE CONSTRAINTS
/

--
-- PS_AID_YR_CAR_TERM  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_AID_YR_CAR_TERM
(
  INSTITUTION      VARCHAR2(5 BYTE)             NOT NULL,
  AID_YEAR         VARCHAR2(4 BYTE)             NOT NULL,
  ACAD_CAREER      VARCHAR2(4 BYTE)             NOT NULL,
  STRM             VARCHAR2(4 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  AWARD_PERIOD     VARCHAR2(1 BYTE)             NOT NULL,
  LN_PERIOD_START  DATE,
  LN_PERIOD_END    DATE,
  DESCR            VARCHAR2(30 BYTE)            NOT NULL,
  DESCRSHORT       VARCHAR2(10 BYTE)            NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
