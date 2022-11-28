DROP TABLE CSSTG_OWNER.PS_AGING_TBL_SF_OLD CASCADE CONSTRAINTS
/

--
-- PS_AGING_TBL_SF_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_AGING_TBL_SF_OLD
(
  SETID             VARCHAR2(5 BYTE)            NOT NULL,
  AGING_SET         VARCHAR2(5 BYTE)            NOT NULL,
  EFFDT             DATE,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  EFF_STATUS        VARCHAR2(1 BYTE)            NOT NULL,
  DESCR             VARCHAR2(30 BYTE)           NOT NULL,
  DESCRSHORT        VARCHAR2(10 BYTE)           NOT NULL,
  DISPUTE_AGING     VARCHAR2(1 BYTE)            NOT NULL,
  SF_BASIS_DT_TYPE  VARCHAR2(1 BYTE)            NOT NULL,
  AGE_CATEGORY      VARCHAR2(2 BYTE)            NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/
