DROP TABLE CSSTG_OWNER.PS_S_RT_TYPE_TBL_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_RT_TYPE_TBL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_RT_TYPE_TBL_OLD
(
  RT_TYPE          VARCHAR2(5 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
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
