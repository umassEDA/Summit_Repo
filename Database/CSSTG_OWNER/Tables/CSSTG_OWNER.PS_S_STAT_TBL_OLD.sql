DROP TABLE CSSTG_OWNER.PS_S_STAT_TBL_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_STAT_TBL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_STAT_TBL_OLD
(
  SETID            VARCHAR2(5 BYTE)             NOT NULL,
  STATISTICS_CODE  VARCHAR2(3 BYTE)             NOT NULL,
  EFFDT            DATE,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE)             NOT NULL,
  DESCR            VARCHAR2(30 BYTE)            NOT NULL,
  DESCRSHORT       VARCHAR2(10 BYTE)            NOT NULL,
  UNIT_OF_MEASURE  VARCHAR2(3 BYTE)             NOT NULL,
  UPDATE_METHOD    VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
