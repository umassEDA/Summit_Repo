DROP TABLE CSSTG_OWNER.PS_WAIVER_TBL CASCADE CONSTRAINTS
/

--
-- PS_WAIVER_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_WAIVER_TBL
(
  SETID               VARCHAR2(5 BYTE)          NOT NULL,
  WAIVER_CODE         VARCHAR2(6 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  ACCOUNT_TYPE_SF     VARCHAR2(3 BYTE),
  ITEM_TYPE           VARCHAR2(12 BYTE),
  SSF_CRITR_EQUTN_SW  VARCHAR2(1 BYTE),
  CRITERIA            VARCHAR2(12 BYTE),
  ADJUST_UNTIL_DATE   DATE,
  AMT_PER_UNIT        NUMBER(16,2),
  FLAT_AMT            NUMBER(16,2),
  WAIVE_PCT           NUMBER(5,2),
  ITEM_TYPE_GROUP     VARCHAR2(10 BYTE),
  WAIVER_OFFSET       NUMBER(16,2),
  MAX_AMOUNT          NUMBER(16,2),
  CURRENCY_CD         VARCHAR2(3 BYTE),
  EXC_ACCT_TYPE_FLG   VARCHAR2(1 BYTE),
  SF_INCREASE_WVR_TX  VARCHAR2(1 BYTE),
  SF_WAIVE_TAX        VARCHAR2(1 BYTE),
  SF_TX_WVR_ACCT_TYP  VARCHAR2(3 BYTE),
  SF_TX_WVR_ITEM_TYP  VARCHAR2(12 BYTE),
  SSF_STDNT_WVR_FLG   VARCHAR2(1 BYTE),
  SSF_WAIVER_TYPE     VARCHAR2(1 BYTE),
  SSF_PRORTE_DRP_FLG  VARCHAR2(1 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
