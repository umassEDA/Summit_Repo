DROP TABLE CSSTG_OWNER.PS_STDNT_AGGR_LIFE CASCADE CONSTRAINTS
/

--
-- PS_STDNT_AGGR_LIFE  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_STDNT_AGGR_LIFE
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  AGGREGATE_AREA      VARCHAR2(10 BYTE)         NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  UNDRGRAD_TOTAL      NUMBER(11,2)              NOT NULL,
  GRADUATE_TOTAL      NUMBER(11,2)              NOT NULL,
  TOTAL_TERMS         INTEGER                   NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  SFA_NSLDS_AGGR_AMT  NUMBER(11,2)              NOT NULL,
  OVERRIDE            VARCHAR2(1 BYTE)          NOT NULL,
  LASTUPDOPRID        VARCHAR2(30 BYTE)         NOT NULL,
  SFA_NSLDS_UPDDTTM   DATE,
  SFA_NSLDS_PUSH_DT   DATE,
  SFA_PKG_DEP_STAT    VARCHAR2(1 BYTE)          NOT NULL,
  PAR_CREDIT_WORTHY   VARCHAR2(1 BYTE)          NOT NULL,
  DL_HEAL_LN_SW       VARCHAR2(1 BYTE)          NOT NULL,
  SFA_NSLDS_GRAD_AMT  NUMBER(11,2)              NOT NULL,
  SFA_GRAD_OVERRIDE   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PRCNT_USED_RPT  NUMBER(7,4)               NOT NULL,
  SFA_PRCNT_USED_TOT  NUMBER(7,4)               NOT NULL,
  SFA_PRCNT_OVERRIDE  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_LEU_NSLDS       NUMBER(8,4)               NOT NULL,
  SFA_LEU_NSLDS_OVRD  VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
