DROP TABLE CSSTG_OWNER.PS_PELL_ORIG_DTL CASCADE CONSTRAINTS
/

--
-- PS_PELL_ORIG_DTL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_PELL_ORIG_DTL
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  PELL_ORIG_ID        VARCHAR2(23 BYTE)         NOT NULL,
  PELL_ORIG_SEQ_NBR   INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  ORIG_SSN            VARCHAR2(9 BYTE),
  NAME_CD             VARCHAR2(2 BYTE),
  ISIR_TXN_NBR        INTEGER,
  PELL_EFC            INTEGER,
  PELL_ID_ATTENDED    VARCHAR2(6 BYTE),
  PELL_BDGT_COA       NUMBER(8,2),
  VERIF_STATUS_CODE   VARCHAR2(1 BYTE),
  ACADEMIC_CALENDAR   VARCHAR2(1 BYTE),
  PELL_ENROLL_STAT    VARCHAR2(1 BYTE),
  HOURS_CRD_PD        VARCHAR2(4 BYTE),
  HRS_CREDITS_ACADYR  VARCHAR2(4 BYTE),
  PELL_AWARD_AMT      NUMBER(7,2),
  PELL_PMT_METH       VARCHAR2(1 BYTE),
  PELL_PAY_PERIODS    INTEGER,
  INCARCERATED_CODE   VARCHAR2(1 BYTE),
  PELL_ENRLMNT_DT     DATE,
  SSN                 VARCHAR2(9 BYTE),
  ACTION_CODE         VARCHAR2(1 BYTE),
  WEEKS_USED_TO_CALC  VARCHAR2(2 BYTE),
  WEEKS_PROG_ACADYR   VARCHAR2(2 BYTE),
  LOW_TUITION_FLAG    VARCHAR2(1 BYTE),
  SECONDARY_EFC_FLAG  VARCHAR2(1 BYTE),
  PELL_SCHED_AWARD    INTEGER,
  PREV_ISIR_TXN_NBR   INTEGER,
  PREV_PELL_EFC       INTEGER,
  PREV_SEC_EFC_FLAG   VARCHAR2(1 BYTE),
  PREV_PELL_BDGT_COA  NUMBER(7,2),
  PG_ED_USE_FLAG_1    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_2    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_3    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_4    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_5    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_6    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_7    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_8    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_9    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_10   VARCHAR2(1 BYTE),
  PELL_MANUAL_OVRD    VARCHAR2(1 BYTE),
  SFA_ADDL_PELL_ELIG  VARCHAR2(1 BYTE),
  SFA_COD_CITZN_STAT  VARCHAR2(1 BYTE),
  SFA_ATB_CD          VARCHAR2(2 BYTE),
  SFA_ATB_TST_ADM_CD  VARCHAR2(2 BYTE),
  SFA_ATB_TST_CD      VARCHAR2(2 BYTE),
  SFA_ATB_STATE_CD    VARCHAR2(2 BYTE),
  SFA_ATB_COMP_DT     DATE,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
NOCOMPRESS
/