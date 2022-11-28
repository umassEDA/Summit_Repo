DROP TABLE CSSTG_OWNER.PS_UM_ITEM_TYPE_FA CASCADE CONSTRAINTS
/

--
-- PS_UM_ITEM_TYPE_FA  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_UM_ITEM_TYPE_FA
(
  SETID            VARCHAR2(5 BYTE)             NOT NULL,
  ITEM_TYPE        VARCHAR2(12 BYTE)            NOT NULL,
  AID_YEAR         VARCHAR2(4 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  UM_DEPT_CNTCT    VARCHAR2(30 BYTE)            NOT NULL,
  UM_DONOR_CNTCT   VARCHAR2(30 BYTE)            NOT NULL,
  UM_ENDOW_PRJ     VARCHAR2(15 BYTE)            NOT NULL,
  UM_DEPARTMENT    VARCHAR2(30 BYTE)            NOT NULL,
  DESCR254         VARCHAR2(254 BYTE)           NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
