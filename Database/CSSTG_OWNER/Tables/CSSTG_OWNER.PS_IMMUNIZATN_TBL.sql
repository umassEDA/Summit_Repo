DROP TABLE CSSTG_OWNER.PS_IMMUNIZATN_TBL CASCADE CONSTRAINTS
/

--
-- PS_IMMUNIZATN_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_IMMUNIZATN_TBL
(
  IMMUNIZATION     VARCHAR2(5 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE)             NOT NULL,
  DESCR            VARCHAR2(30 BYTE)            NOT NULL,
  DESCRSHORT       VARCHAR2(10 BYTE)            NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE                         DEFAULT SYSDATE,
  LASTUPD_EW_DTTM  DATE                         DEFAULT SYSDATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/