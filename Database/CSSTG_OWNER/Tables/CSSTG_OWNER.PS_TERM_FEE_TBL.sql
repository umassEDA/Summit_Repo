DROP TABLE CSSTG_OWNER.PS_TERM_FEE_TBL CASCADE CONSTRAINTS
/

--
-- PS_TERM_FEE_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_TERM_FEE_TBL
(
  SETID               VARCHAR2(5 BYTE)          NOT NULL,
  FEE_CODE            VARCHAR2(6 BYTE)          NOT NULL,
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  SESSION_CODE        VARCHAR2(3 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  ACCOUNT_TYPE_SF     VARCHAR2(3 BYTE),
  ITEM_TYPE           VARCHAR2(12 BYTE),
  ANTIC_ITEM_TYPE     VARCHAR2(12 BYTE),
  USE_ANTIC_STOP_DT   DATE,
  CHARGE_WAIT_LIST    VARCHAR2(1 BYTE),
  SSF_CRITR_EQUTN_SW  VARCHAR2(1 BYTE),
  FEE_TRIGGER         VARCHAR2(12 BYTE),
  MIN_AMOUNT          NUMBER(16,2),
  MAX_AMOUNT          NUMBER(16,2),
  CURRENCY_CD         VARCHAR2(3 BYTE),
  ADJ_TERM_CD         VARCHAR2(8 BYTE),
  DUE_DATE_CODE       VARCHAR2(8 BYTE),
  MIN_MAX_FEE_CODE    VARCHAR2(8 BYTE),
  DYNAMIC_ORG         VARCHAR2(1 BYTE),
  TRACK_CLASS_PRICE   VARCHAR2(1 BYTE),
  TRACK_SUB_FEE       VARCHAR2(1 BYTE),
  GL_FROM_SUBFEE      VARCHAR2(1 BYTE),
  AUDIT_RT_FLAG       VARCHAR2(1 BYTE),
  AUDIT_CALC_FLAG     VARCHAR2(1 BYTE),
  SSF_EXCLUDE_HECS    VARCHAR2(1 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
