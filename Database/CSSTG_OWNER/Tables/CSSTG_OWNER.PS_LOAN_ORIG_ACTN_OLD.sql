DROP TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD CASCADE CONSTRAINTS
/

--
-- PS_LOAN_ORIG_ACTN_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_LOAN_ORIG_ACTN_OLD
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  LOAN_TYPE           VARCHAR2(4 BYTE)          NOT NULL,
  LN_APPL_SEQ         INTEGER                   NOT NULL,
  ITEM_TYPE           VARCHAR2(12 BYTE)         NOT NULL,
  LN_ORIG_ACTN_SEQ    INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  LN_ACTION_TYPE      VARCHAR2(1 BYTE)          NOT NULL,
  LN_ACTION_CD        VARCHAR2(4 BYTE)          NOT NULL,
  LN_ACTION_DT        DATE,
  TRNSFR_BATCH        VARCHAR2(23 BYTE)         NOT NULL,
  LN_ACTION_STATUS    VARCHAR2(1 BYTE)          NOT NULL,
  LN_ACTNSTAT_DT      DATE,
  DL_LN_APPL_ID_STAT  VARCHAR2(2 BYTE)          NOT NULL,
  OPRID               VARCHAR2(30 BYTE)         NOT NULL,
  PROCESS_INSTANCE    NUMBER(10)                NOT NULL,
  CL_RECIP_NAME       VARCHAR2(32 BYTE)         NOT NULL,
  CL_RECIP_ID_V3      VARCHAR2(8 BYTE)          NOT NULL,
  CL_PHASE_CD         VARCHAR2(4 BYTE)          NOT NULL,
  SFA_CR_DOCUMENT_ID  VARCHAR2(34 BYTE)         NOT NULL,
  SFA_CR_LNDR_ST_CD   VARCHAR2(2 BYTE)          NOT NULL,
  SFA_CR_GUAR_ST_CD   VARCHAR2(2 BYTE)          NOT NULL,
  SFA_CR_PNT_STAT_CD  VARCHAR2(2 BYTE)          NOT NULL,
  SFA_CR_CRD_STAT_CD  VARCHAR2(2 BYTE)          NOT NULL,
  SFA_CR_RECIP_ID     VARCHAR2(12 BYTE)         NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           INTEGER                   NOT NULL
)
COMPRESS BASIC
/
