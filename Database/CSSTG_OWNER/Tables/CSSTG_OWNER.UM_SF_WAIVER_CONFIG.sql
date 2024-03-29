DROP TABLE CSSTG_OWNER.UM_SF_WAIVER_CONFIG CASCADE CONSTRAINTS
/

--
-- UM_SF_WAIVER_CONFIG  (Table) 
--
CREATE TABLE CSSTG_OWNER.UM_SF_WAIVER_CONFIG
(
  BUSINESS_UNIT    VARCHAR2(5 BYTE)             NOT NULL,
  ITEM_TERM        VARCHAR2(4 BYTE)             NOT NULL,
  ITEM_TYPE        VARCHAR2(12 BYTE)            NOT NULL,
  VARIABLE_CHAR1   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR3   VARCHAR2(20 BYTE)            NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
