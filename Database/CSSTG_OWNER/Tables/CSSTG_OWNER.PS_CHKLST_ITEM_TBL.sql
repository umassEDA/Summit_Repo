DROP TABLE CSSTG_OWNER.PS_CHKLST_ITEM_TBL CASCADE CONSTRAINTS
/

--
-- PS_CHKLST_ITEM_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_CHKLST_ITEM_TBL
(
  CHKLST_ITEM_CD   VARCHAR2(6 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE),
  DESCR            VARCHAR2(30 BYTE),
  DESCRSHORT       VARCHAR2(10 BYTE),
  DL_LINK_ID       VARCHAR2(30 BYTE),
  DATA_TYPE_CD     VARCHAR2(1 BYTE),
  DESCRLONG        VARCHAR2(4000 BYTE),
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/