DROP TABLE CSSTG_OWNER.PS_SF_ACCTG_LN CASCADE CONSTRAINTS
/

--
-- PS_SF_ACCTG_LN  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_SF_ACCTG_LN
(
  RUN_DT              DATE,
  SEQNUM              INTEGER                   NOT NULL,
  SF_LINE_NBR         INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  IN_PROCESS_FLG      VARCHAR2(1 BYTE)          NOT NULL,
  BUSINESS_UNIT_GL    VARCHAR2(5 BYTE)          NOT NULL,
  JOURNAL_ID          VARCHAR2(10 BYTE)         NOT NULL,
  JOURNAL_DATE        DATE,
  JOURNAL_LINE        INTEGER                   NOT NULL,
  ACCOUNT             VARCHAR2(10 BYTE)         NOT NULL,
  FUND_CODE           VARCHAR2(5 BYTE)          NOT NULL,
  PROGRAM_CODE        VARCHAR2(5 BYTE)          NOT NULL,
  DEPTID              VARCHAR2(10 BYTE)         NOT NULL,
  PROJECT_ID          VARCHAR2(15 BYTE)         NOT NULL,
  STATISTICS_CODE     VARCHAR2(3 BYTE)          NOT NULL,
  MONETARY_AMOUNT     NUMBER(15,2)              NOT NULL,
  STATISTIC_AMOUNT    NUMBER(15,2)              NOT NULL,
  JRNL_LN_REF         VARCHAR2(10 BYTE)         NOT NULL,
  OPEN_ITEM_STATUS    VARCHAR2(1 BYTE)          NOT NULL,
  LINE_DESCR          VARCHAR2(30 BYTE)         NOT NULL,
  JRNL_LINE_STATUS    VARCHAR2(1 BYTE)          NOT NULL,
  JOURNAL_LINE_DATE   DATE,
  BUSINESS_UNIT       VARCHAR2(5 BYTE)          NOT NULL,
  APPL_JRNL_ID        VARCHAR2(10 BYTE)         NOT NULL,
  ACCOUNTING_DT       DATE,
  GL_DISTRIB_STATUS   VARCHAR2(1 BYTE)          NOT NULL,
  PROCESS_INSTANCE    NUMBER(10)                NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  ACCOUNTING_PERIOD   INTEGER                   NOT NULL,
  FISCAL_YEAR         INTEGER                   NOT NULL,
  FOREIGN_AMOUNT      NUMBER(15,2)              NOT NULL,
  FOREIGN_CURRENCY    VARCHAR2(3 BYTE)          NOT NULL,
  LEDGER              VARCHAR2(10 BYTE)         NOT NULL,
  LEDGER_GROUP        VARCHAR2(10 BYTE)         NOT NULL,
  EXT_GL_CHARTFLD     VARCHAR2(50 BYTE)         NOT NULL,
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  SF_EXT_ORG_ID       VARCHAR2(11 BYTE)         NOT NULL,
  ITEM_NBR            VARCHAR2(15 BYTE)         NOT NULL,
  BUDGET_PERIOD       VARCHAR2(10 BYTE)         NOT NULL,
  CLASS_FLD           VARCHAR2(5 BYTE)          NOT NULL,
  AFFILIATE           VARCHAR2(5 BYTE)          NOT NULL,
  BUDGET_REF          VARCHAR2(8 BYTE)          NOT NULL,
  CHARTFIELD1         VARCHAR2(10 BYTE)         NOT NULL,
  CHARTFIELD2         VARCHAR2(10 BYTE)         NOT NULL,
  CHARTFIELD3         VARCHAR2(10 BYTE)         NOT NULL,
  ALTACCT             VARCHAR2(10 BYTE)         NOT NULL,
  OPERATING_UNIT      VARCHAR2(8 BYTE)          NOT NULL,
  PRODUCT             VARCHAR2(6 BYTE)          NOT NULL,
  AFFILIATE_INTRA1    VARCHAR2(10 BYTE)         NOT NULL,
  AFFILIATE_INTRA2    VARCHAR2(10 BYTE)         NOT NULL,
  SF_DEPOSIT_ID       VARCHAR2(10 BYTE)         NOT NULL,
  RT_TYPE             VARCHAR2(5 BYTE)          NOT NULL,
  RATE_DIV            NUMBER(15,8)              NOT NULL,
  RATE_MULT           NUMBER(15,8)              NOT NULL,
  SF_GL_RUN_INSTANCE  NUMBER(10)                NOT NULL,
  AUDIT_ACTN          VARCHAR2(1 BYTE)          NOT NULL,
  COMMON_ID           VARCHAR2(11 BYTE)         NOT NULL,
  SA_ID_TYPE          VARCHAR2(1 BYTE)          NOT NULL,
  SSF_GL_TRANS_ID     VARCHAR2(12 BYTE)         NOT NULL,
  SSF_GL_TRANS_SEQNO  INTEGER                   NOT NULL,
  SCC_ROW_ADD_OPRID   VARCHAR2(30 BYTE)         NOT NULL,
  SCC_ROW_ADD_DTTM    DATE,
  SCC_ROW_UPD_OPRID   VARCHAR2(30 BYTE)         NOT NULL,
  SCC_ROW_UPD_DTTM    DATE,
  ITEM_TERM           VARCHAR2(4 BYTE)          NOT NULL,
  ITEM_TYPE           VARCHAR2(12 BYTE)         NOT NULL,
  REF1_DESCR          VARCHAR2(30 BYTE)         NOT NULL,
  RECEIPT_NBR         NUMBER(12)                NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
