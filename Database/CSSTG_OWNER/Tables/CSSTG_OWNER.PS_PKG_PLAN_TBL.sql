DROP TABLE CSSTG_OWNER.PS_PKG_PLAN_TBL CASCADE CONSTRAINTS
/

--
-- PS_PKG_PLAN_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_PKG_PLAN_TBL
(
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  PKG_PLAN_ID         VARCHAR2(10 BYTE)         NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  PROCESSING_ORDER    INTEGER                   NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCRSHORT          VARCHAR2(10 BYTE)         NOT NULL,
  FED_OR_INST         VARCHAR2(1 BYTE)          NOT NULL,
  FED_NEED_MAX_AMT    NUMBER(11,2)              NOT NULL,
  FED_NEED_MAX_EQTN   VARCHAR2(12 BYTE)         NOT NULL,
  FED_NEED_MAX_PREF   VARCHAR2(1 BYTE)          NOT NULL,
  FED_PCT_NEED_MEET   NUMBER(4,1)               NOT NULL,
  FED_PCT_PREF_FLAG   VARCHAR2(1 BYTE)          NOT NULL,
  INST_NEED_MAX_AMT   NUMBER(11,2)              NOT NULL,
  INST_NEED_MAX_EQTN  VARCHAR2(12 BYTE)         NOT NULL,
  INST_NEED_MAX_PREF  VARCHAR2(1 BYTE)          NOT NULL,
  INST_PCT_NEED_MEET  NUMBER(4,1)               NOT NULL,
  INST_PCT_PREF_FLAG  VARCHAR2(1 BYTE)          NOT NULL,
  FED_LOAN_MAX_AMT    NUMBER(11,2)              NOT NULL,
  FED_LOAN_MAX_EQTN   VARCHAR2(12 BYTE)         NOT NULL,
  FED_LOAN_MAX_PREF   VARCHAR2(1 BYTE)          NOT NULL,
  INST_LOAN_MAX_AMT   NUMBER(11,2)              NOT NULL,
  INST_LOAN_MAX_EQTN  VARCHAR2(12 BYTE)         NOT NULL,
  INST_LOAN_MAX_PREF  VARCHAR2(1 BYTE)          NOT NULL,
  FED_OVERAWARD_PREF  VARCHAR2(1 BYTE)          NOT NULL,
  FED_OVERAWARD_MAX   NUMBER(11,2)              NOT NULL,
  FED_OVERAWARD_EQTN  VARCHAR2(12 BYTE)         NOT NULL,
  FED_PKG_LIMIT_PREF  VARCHAR2(1 BYTE)          NOT NULL,
  FED_OVERRIDE_OBJ    VARCHAR2(4 BYTE)          NOT NULL,
  INST_OVERAWARD_PRF  VARCHAR2(1 BYTE)          NOT NULL,
  INST_OVERAWARD_MAX  NUMBER(11,2)              NOT NULL,
  INST_OVERAWRD_EQTN  VARCHAR2(12 BYTE)         NOT NULL,
  INST_PKG_LIMIT_PRF  VARCHAR2(1 BYTE)          NOT NULL,
  INST_OVERRIDE_OBJ   VARCHAR2(4 BYTE)          NOT NULL,
  EQUITY_LIMIT        NUMBER(11,2)              NOT NULL,
  EQUITY_LIMIT_EQTN   VARCHAR2(12 BYTE)         NOT NULL,
  EQUITY_MAX_PREF     VARCHAR2(1 BYTE)          NOT NULL,
  EQUITY_PCFM_OFFSET  VARCHAR2(1 BYTE)          NOT NULL,
  EQUITY_PCIM_OFFSET  VARCHAR2(1 BYTE)          NOT NULL,
  EQUITY_SCFM_OFFSET  VARCHAR2(1 BYTE)          NOT NULL,
  EQUITY_SCIM_OFFSET  VARCHAR2(1 BYTE)          NOT NULL,
  EQUITY_SS_OFFSET    VARCHAR2(1 BYTE)          NOT NULL,
  EQUITY_SSIM_OFFSET  VARCHAR2(1 BYTE)          NOT NULL,
  EQUITY_ITM_OFFSET   VARCHAR2(1 BYTE)          NOT NULL,
  PKG_EQUITY_GROUP    VARCHAR2(8 BYTE)          NOT NULL,
  PKG_EQUITY_NBR      INTEGER                   NOT NULL,
  PKG_SORT_FIELD      VARCHAR2(18 BYTE)         NOT NULL,
  FLD_SORT_ORDER      VARCHAR2(1 BYTE)          NOT NULL,
  SELECTION_CRITERIA  VARCHAR2(12 BYTE)         NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  PKG_AWARD_PERIOD    VARCHAR2(1 BYTE)          NOT NULL,
  FED_WORK_MAX_AMT    NUMBER(11,2)              NOT NULL,
  FED_WORK_MAX_EQTN   VARCHAR2(12 BYTE)         NOT NULL,
  FED_WORK_MAX_PREF   VARCHAR2(1 BYTE)          NOT NULL,
  INST_WORK_MAX_AMT   NUMBER(11,2)              NOT NULL,
  INST_WORK_MAX_EQTN  VARCHAR2(12 BYTE)         NOT NULL,
  INST_WORK_MAX_PREF  VARCHAR2(1 BYTE)          NOT NULL,
  PELL_ONLY_PLAN      VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
