DROP TABLE CSSTG_OWNER.PS_S_PAYMENT_TBL_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_PAYMENT_TBL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_PAYMENT_TBL_OLD
(
  BUSINESS_UNIT       VARCHAR2(5 BYTE)          NOT NULL,
  COMMON_ID           VARCHAR2(11 BYTE)         NOT NULL,
  SA_ID_TYPE          VARCHAR2(1 BYTE)          NOT NULL,
  PAYMENT_ID_NBR      NUMBER(12)                NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  PAYMENT_METHOD      VARCHAR2(3 BYTE)          NOT NULL,
  PAYMENT_AMT         NUMBER(26,3)              NOT NULL,
  ENCUMBRANCE_DT      DATE,
  ENCUMBERED_AMT      NUMBER(16,2)              NOT NULL,
  CHECK_NUM_SF        VARCHAR2(30 BYTE)         NOT NULL,
  THIRD_PARTY         VARCHAR2(30 BYTE)         NOT NULL,
  CREDIT_CARD_NBR     VARCHAR2(44 BYTE)         NOT NULL,
  CREDIT_CARD_TYPE    VARCHAR2(2 BYTE)          NOT NULL,
  CREDIT_CARD_EXP_DT  DATE,
  CREDIT_CARD_ISSUER  VARCHAR2(20 BYTE)         NOT NULL,
  CREDIT_CARD_HOLDER  VARCHAR2(30 BYTE)         NOT NULL,
  FED_RSRV_BANK_ID    VARCHAR2(10 BYTE)         NOT NULL,
  SSF_BNK_ACCT_NUM    VARCHAR2(44 BYTE)         NOT NULL,
  BANK_ACCT_TYP       VARCHAR2(1 BYTE)          NOT NULL,
  BANK_ACCT_NAME      VARCHAR2(30 BYTE)         NOT NULL,
  SF_REVERSAL_IND     VARCHAR2(1 BYTE)          NOT NULL,
  REF1_DESCR          VARCHAR2(30 BYTE)         NOT NULL,
  TENDER_SPEC         VARCHAR2(1 BYTE)          NOT NULL,
  TENDER_CATEGORY     VARCHAR2(3 BYTE)          NOT NULL,
  ITEM_TYPE           VARCHAR2(12 BYTE)         NOT NULL,
  TRACER_NBR          VARCHAR2(30 BYTE)         NOT NULL,
  ACCOUNTING_DT       DATE                      NOT NULL,
  POSTED_DATE         DATE                      NOT NULL,
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  SESSION_CODE        VARCHAR2(3 BYTE)          NOT NULL,
  PAYMENT_CATEGORY    VARCHAR2(1 BYTE)          NOT NULL,
  ACAD_YEAR           VARCHAR2(4 BYTE)          NOT NULL,
  CHARGE_PRIORITY     VARCHAR2(8 BYTE)          NOT NULL,
  RESTRICT_ACCT_FLG   VARCHAR2(1 BYTE)          NOT NULL,
  EXT_ORG_ID          VARCHAR2(11 BYTE)         NOT NULL,
  EXC_ACCT_TYPE_SF    VARCHAR2(3 BYTE)          NOT NULL,
  CHARGE_SET_TABLE    VARCHAR2(1 BYTE)          NOT NULL,
  OPRID               VARCHAR2(30 BYTE)         NOT NULL,
  GRP_TIMESTAMP       DATE,
  CONTRACT_NUM        VARCHAR2(25 BYTE)         NOT NULL,
  SRVC_IND_CD         VARCHAR2(3 BYTE)          NOT NULL,
  CONTRACT_EMPLID     VARCHAR2(11 BYTE)         NOT NULL,
  PRIORITY            INTEGER                   NOT NULL,
  PRIORITY_PMT_FLG    VARCHAR2(1 BYTE)          NOT NULL,
  CUR_RT_TYPE         VARCHAR2(5 BYTE)          NOT NULL,
  RATE_MULT           NUMBER(15,8)              NOT NULL,
  RATE_DIV            NUMBER(15,8)              NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  ORIGNL_CURRENCY_CD  VARCHAR2(3 BYTE)          NOT NULL,
  ORIGNL_ITEM_AMT     NUMBER(16,2)              NOT NULL,
  TRANSFER_DT         DATE,
  TRANSFER_STATUS     VARCHAR2(1 BYTE)          NOT NULL,
  TRANSFER_PAYMNT_ID  VARCHAR2(15 BYTE)         NOT NULL,
  TRANSFER_AMT        NUMBER(16,2)              NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  DISBURSEMENT_DATE   DATE,
  SF_DEPOSIT_ID       VARCHAR2(10 BYTE)         NOT NULL,
  RECEIPT_NBR         NUMBER(12)                NOT NULL,
  SF_PMT_REF_NBR      VARCHAR2(12 BYTE)         NOT NULL,
  CR_CARD_DIGITS      VARCHAR2(4 BYTE)          NOT NULL,
  BANK_CD             VARCHAR2(11 BYTE)         NOT NULL,
  INVOICE_ID          VARCHAR2(30 BYTE)         NOT NULL,
  SSF_RESTRICT_INV    VARCHAR2(1 BYTE)          NOT NULL,
  SSF_PMT_AMT_SENT    NUMBER(18,3)              NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
