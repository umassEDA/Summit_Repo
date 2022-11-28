DROP TABLE CSSTG_OWNER.PS_CRSE_EQUIV_TBL CASCADE CONSTRAINTS
/

--
-- PS_CRSE_EQUIV_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_CRSE_EQUIV_TBL
(
  EQUIV_CRSE_ID    VARCHAR2(5 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE)             NOT NULL,
  DESCR            VARCHAR2(30 BYTE),
  DESCRSHORT       VARCHAR2(10 BYTE),
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
