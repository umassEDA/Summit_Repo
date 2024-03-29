DROP TABLE CSSTG_OWNER.PS_S_ALTACCT_TBL_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_ALTACCT_TBL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_ALTACCT_TBL_OLD
(
  SETID               VARCHAR2(5 BYTE)          NOT NULL,
  ALTACCT             VARCHAR2(10 BYTE)         NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCRSHORT          VARCHAR2(10 BYTE)         NOT NULL,
  DESCR254            VARCHAR2(254 BYTE)        NOT NULL,
  SYSTEM_MAINT_ACCT   VARCHAR2(1 BYTE)          NOT NULL,
  PAYROLL_ACCOUNT     VARCHAR2(1 BYTE)          NOT NULL,
  ACCOUNTING_OWNER    VARCHAR2(30 BYTE)         NOT NULL,
  ACCOUNT_TYPE        VARCHAR2(1 BYTE)          NOT NULL,
  UNIT_OF_MEASURE     VARCHAR2(3 BYTE)          NOT NULL,
  OPEN_ITEM           VARCHAR2(1 BYTE)          NOT NULL,
  OPEN_ITEM_DESCR     VARCHAR2(10 BYTE)         NOT NULL,
  OPEN_ITEM_EDIT_REC  VARCHAR2(15 BYTE)         NOT NULL,
  OPEN_ITEM_EDIT_FLD  VARCHAR2(18 BYTE)         NOT NULL,
  STATISTICS_ACCOUNT  VARCHAR2(1 BYTE)          NOT NULL,
  BALANCE_FWD_SW      VARCHAR2(1 BYTE)          NOT NULL,
  CONTROL_FLAG        VARCHAR2(1 BYTE)          NOT NULL,
  BAL_SHEET_IND       VARCHAR2(2 BYTE)          NOT NULL,
  BOOK_CODE           VARCHAR2(4 BYTE)          NOT NULL,
  SYNCID              INTEGER                   NOT NULL,
  SYNCDTTM            DATE,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
