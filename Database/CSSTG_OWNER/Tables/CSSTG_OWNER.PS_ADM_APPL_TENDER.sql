DROP TABLE CSSTG_OWNER.PS_ADM_APPL_TENDER CASCADE CONSTRAINTS
/

--
-- PS_ADM_APPL_TENDER  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ADM_APPL_TENDER
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  STDNT_CAR_NBR       INTEGER                   NOT NULL,
  ADM_APPL_NBR        VARCHAR2(8 BYTE)          NOT NULL,
  TENDER_CATEGORY     VARCHAR2(3 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  TENDER_AMT          NUMBER(16,2)              NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  ORIGNL_TENDER_AMT   NUMBER(16,2)              NOT NULL,
  ORIGNL_CURRENCY_CD  VARCHAR2(3 BYTE)          NOT NULL,
  CUR_RT_TYPE         VARCHAR2(5 BYTE)          NOT NULL,
  RATE_MULT           NUMBER(15,8)              NOT NULL,
  RATE_DIV            NUMBER(15,8)              NOT NULL,
  CHECK_NUM_SF        VARCHAR2(30 BYTE)         NOT NULL,
  FED_RSRV_BANK_ID    VARCHAR2(10 BYTE)         NOT NULL,
  BANK_ACCT_TYP       VARCHAR2(1 BYTE)          NOT NULL,
  BANK_ACCT_NAME      VARCHAR2(30 BYTE)         NOT NULL,
  SSF_BNK_ACCT_NUM    VARCHAR2(44 BYTE)         NOT NULL,
  THIRD_PARTY         VARCHAR2(30 BYTE)         NOT NULL,
  REF1_DESCR          VARCHAR2(30 BYTE)         NOT NULL,
  TRACER_NBR          VARCHAR2(30 BYTE)         NOT NULL,
  COUNTRY             VARCHAR2(3 BYTE)          NOT NULL,
  ADDRESS1            VARCHAR2(55 BYTE)         NOT NULL,
  ADDRESS2            VARCHAR2(55 BYTE)         NOT NULL,
  ADDRESS3            VARCHAR2(55 BYTE)         NOT NULL,
  ADDRESS4            VARCHAR2(55 BYTE)         NOT NULL,
  CITY                VARCHAR2(30 BYTE)         NOT NULL,
  NUM1                VARCHAR2(6 BYTE)          NOT NULL,
  NUM2                VARCHAR2(6 BYTE)          NOT NULL,
  HOUSE_TYPE          VARCHAR2(2 BYTE)          NOT NULL,
  ADDR_FIELD1         VARCHAR2(2 BYTE)          NOT NULL,
  ADDR_FIELD2         VARCHAR2(4 BYTE)          NOT NULL,
  ADDR_FIELD3         VARCHAR2(4 BYTE)          NOT NULL,
  COUNTY              VARCHAR2(30 BYTE)         NOT NULL,
  STATE               VARCHAR2(6 BYTE)          NOT NULL,
  POSTAL              VARCHAR2(12 BYTE)         NOT NULL,
  GEO_CODE            VARCHAR2(11 BYTE)         NOT NULL,
  IN_CITY_LIMIT       VARCHAR2(1 BYTE)          NOT NULL,
  EMAIL_ADDR          VARCHAR2(70 BYTE)         NOT NULL,
  PHONE               VARCHAR2(24 BYTE)         NOT NULL,
  CR_CARD_NBR         VARCHAR2(44 BYTE)         NOT NULL,
  CR_CARD_TYPE        VARCHAR2(2 BYTE)          NOT NULL,
  CR_CARD_FNAME       VARCHAR2(40 BYTE)         NOT NULL,
  CR_CARD_LNAME       VARCHAR2(40 BYTE)         NOT NULL,
  CR_CARD_EXP_DT      DATE,
  CR_CARD_STATUS      VARCHAR2(2 BYTE)          NOT NULL,
  CR_CARD_ERRMSG      VARCHAR2(30 BYTE)         NOT NULL,
  CR_CARD_VDAUTH      VARCHAR2(10 BYTE)         NOT NULL,
  CR_CARD_DECLND      VARCHAR2(1 BYTE)          NOT NULL,
  CR_CARD_ISSUER      VARCHAR2(20 BYTE)         NOT NULL,
  CR_CARD_AUTH_CD     VARCHAR2(10 BYTE)         NOT NULL,
  CR_CARD_AUTH_DT     DATE,
  CR_CARD_AUTH_REPLY  VARCHAR2(15 BYTE)         NOT NULL,
  CR_CARD_AVS_CD      VARCHAR2(1 BYTE)          NOT NULL,
  CR_CARD_RQST_ID     VARCHAR2(30 BYTE)         NOT NULL,
  CR_CARD_A_DTTM      VARCHAR2(20 BYTE)         NOT NULL,
  SF_MERCHANT_ID      VARCHAR2(12 BYTE)         NOT NULL,
  CR_CARD_SRVC_PROV   VARCHAR2(2 BYTE)          NOT NULL,
  SF_PMT_REF_NBR      VARCHAR2(12 BYTE)         NOT NULL,
  CR_CARD_DIGITS      VARCHAR2(4 BYTE)          NOT NULL,
  BANK_CD             VARCHAR2(11 BYTE)         NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
